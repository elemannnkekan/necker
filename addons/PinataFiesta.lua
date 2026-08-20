local PinataFiesta = {}

local Player
local Library
local Runtime
local DirectoryFolder
local Boosts
local Network
local MachineCmds
local RaidCmds
local ClientRaidInstance
local FiestaMazeCmds
local EternalMazeCmds
local FiestaLuckMachineCmds
local FiestaMazePortals
local FiestaMaze
local Raids
local BreakableFrontend
local InstancingCmds
local Signal
local LootboxItem
local MiscItem

local RestoreFarmPets
local ApplyPetSpeed
local GetSortedPets
local TargetPet
local CollectFarmDrops
local GetAutoTapInterval
local FarmArea
local GetAreaBreakables
local NormalizeMode

local AutoUpgradePinataFarming = false
local PinataChallengeState
local PinataChallengeLevel = 0
local PinataChallengeStateConnection
local AutoStartEternalMazeWorkerRunning = false
local AutoCompleteEternalMazeWorkerRunning = false
local EternalMazeTier = 0
local EternalMazeRaidID
local NextEternalMazeCreate = 0
local NextAutoTap = 0
local AutoRaidWorkerRunning = false
local AutoRaidRoomCompletedConnection
local AutoRaidMazeCell
local AutoRaidTapIndex = 0
local AutoRaidTapAreaID
local NextAutoRaidTap = 0
local AutoRaidTeleportWorkerRunning = false
local AutoRaidTeleportRaidID
local AutoRaidDesiredRoom = 0
local AutoRaidLastTeleportedRoom = 0
local AutoRaidActiveRoom = 0
local AutoRaidPinataBossUIDs = {}
local RaidStatsStart
local RaidStatsRaids = 0
local RaidStatsEggs = {
	LootChest = 0,
	LeprechaunChest = 0,
	HugeChest = 0,
	TitanicChest = 0,
}
local RaidStatsKeys = 0
local RaidStatsLastRaidID
local RaidStatsGui
local RaidStatsText
local RaidStatsInventoryLabels = {}
local RaidStatsEggLabels = {}
local EventLuckLabels = {}
local EventLuckLabelToIndex = {}
local EventLuckIndexToLabel = {}
local Started = false
local Initialized = false

function PinataFiesta:Init(Data)
	Player = Data.Player
	Library = Data.Library
	Runtime = Data.Runtime
	RestoreFarmPets = Data.RestoreFarmPets
	ApplyPetSpeed = Data.ApplyPetSpeed
	GetSortedPets = Data.GetSortedPets
	TargetPet = Data.TargetPet
	CollectFarmDrops = Data.CollectFarmDrops
	GetAutoTapInterval = Data.GetAutoTapInterval
	FarmArea = Data.FarmArea
	GetAreaBreakables = Data.GetAreaBreakables
	NormalizeMode = Data.NormalizeMode

	DirectoryFolder = Library:WaitForChild("Directory")
	Boosts = require(DirectoryFolder:WaitForChild("Boosts"))
	Network = require(Library.Client:WaitForChild("Network"))
	MachineCmds = require(Library.Client:WaitForChild("MachineCmds"))
	RaidCmds = require(Library.Client:WaitForChild("RaidCmds"))
	ClientRaidInstance = require(Library.Client:WaitForChild("RaidCmds"):WaitForChild("ClientRaidInstance"))
	FiestaMazeCmds = require(Library.Client:WaitForChild("FiestaMazeCmds"))
	EternalMazeCmds = require(Library.Client:WaitForChild("EternalMazeCmds"))
	FiestaLuckMachineCmds = require(Library.Client:WaitForChild("FiestaLuckMachineCmds"))
	FiestaMazePortals = require(Library.Client:WaitForChild("FiestaMazePortals"))
	FiestaMaze = require(Library.Util:WaitForChild("FiestaMaze"))
	Raids = require(Library:WaitForChild("Types"):WaitForChild("Raids"))
	BreakableFrontend = require(Library.Client:WaitForChild("BreakableFrontend"))
	InstancingCmds = require(Library.Client:WaitForChild("InstancingCmds"))
	Signal = require(Library:WaitForChild("Signal"))
	LootboxItem = require(Library.Items:WaitForChild("LootboxItem"))
	MiscItem = require(Library.Items:WaitForChild("MiscItem"))

	GetPinataUpgrades()

	table.clear(EventLuckLabels)
	table.clear(EventLuckLabelToIndex)
	table.clear(EventLuckIndexToLabel)

	for _, Option in ipairs(BuildEventLuckOptions()) do
		table.insert(EventLuckLabels, Option.Label)
		EventLuckLabelToIndex[Option.Label] = Option.Index
		EventLuckIndexToLabel[Option.Index] = Option.Label

		if not getgenv().Config.EventLuck then
			getgenv().Config.EventLuck = Option.Index
		end
	end

	PinataChallengeStateConnection = Network.Fired("PinataChallenge_State"):Connect(function(State)
		if type(State) == "table" then
			PinataChallengeState = State
			PinataChallengeLevel = State.displayLevel or ((State.level or 0) + 1)
		end
	end)

	AutoRaidRoomCompletedConnection = Network.Fired("Raids_RoomCompleted"):Connect(function(RaidID, Room)
		if not IsRaidAutomationRunning() then
			return
		end

		local Raid = RaidCmds.GetCurrent()

		if Raid and Raid:GetId() == RaidID and Room < Raid:GetMaxRoomNumber() then
			AutoRaidQueueRoom(Raid, Room + 1)
		end
	end)

	BuildRaidStatsGui()
	Initialized = true
end

function PinataFiesta:IsBusy()
	if not Initialized then
		return false
	end

	return getgenv().Config.AutoRaid or getgenv().Config.AutoUpgradePinata or getgenv().Config.AutoCompleteEternalMaze and EternalMazeCmds.Running()
end

function PinataFiesta:IsRaidAutomationRunning()
	if not Initialized then
		return false
	end

	return IsRaidAutomationRunning()
end

function PinataFiesta:IsPetSpeedOverrideActive()
	if not Initialized then
		return false
	end

	return ((IsRaidAutomationRunning() or AutoUpgradePinataFarming) and getgenv().Config.MaxPetSpeed) or (AutoUpgradePinataFarming and PinataChallengeLevel >= 101)
end

function PinataFiesta:BuildUI(Window)
	local EventTab = Window:CreateTab({Name = "Event", Icon = "rbxassetid://15938616489",})

	local EventLuckSection = EventTab:AddSection({Name = "Event Luck", Color = "Green", Collapsible = true, DefaultCollapsed = false,})

	EventLuckSection:AddDropdown({
		Name = "Event Luck",
		Options = EventLuckLabels,
		CurrentOption = EventLuckIndexToLabel[tonumber(getgenv().Config.EventLuck)] and {EventLuckIndexToLabel[tonumber(getgenv().Config.EventLuck)]} or {},
		MultipleOptions = false,
		MaxVisibleOptions = 5,
		SearchPlaceholder = "Search event luck...",
		Flag = "EventLuck",
		Callback = function(Values)
			if Values[1] then
				getgenv().Config.EventLuck = EventLuckLabelToIndex[Values[1]]
			end
		end,
	})

	EventLuckSection:AddToggle({
		Name = "Auto Event Luck",
		Default = getgenv().Config.AutoEventLuck,
		Flag = "AutoEventLuck",
		Callback = function(Value)
			getgenv().Config.AutoEventLuck = Value

			if Value then
				task.spawn(AutoEventLuck)
			end
		end,
	})

	local EternalMazeSection = EventTab:AddSection({Name = "Eternal Maze", Color = "Purple", Collapsible = true, DefaultCollapsed = false,})

	EternalMazeSection:AddToggle({
		Name = "Auto Start Eternal Maze",
		Default = getgenv().Config.AutoStartEternalMaze,
		Flag = "AutoStartEternalMaze",
		Callback = function(Value)
			getgenv().Config.AutoStartEternalMaze = Value

			if Value then
				task.spawn(AutoStartEternalMaze)
			end
		end,
	})

	EternalMazeSection:AddToggle({
		Name = "Auto Complete Eternal Maze",
		Default = getgenv().Config.AutoCompleteEternalMaze,
		Flag = "AutoCompleteEternalMaze",
		Callback = function(Value)
			getgenv().Config.AutoCompleteEternalMaze = Value

			if Value then
				getgenv().Config.MaxPetSpeed = true
				getgenv().Config.AutoCollectOrbs = true
				getgenv().Config.AutoTap = true
				ApplyPetSpeed()
				task.spawn(AutoCompleteEternalMaze)
			else
				RestoreFarmPets()
				ApplyPetSpeed()
			end
		end,
	})

	local EventUpgradeSection = EventTab:AddSection({Name = "Event Upgrades", Color = "Yellow", Collapsible = true, DefaultCollapsed = false,})

	EventUpgradeSection:AddDropdown({
		Name = "Event Upgrades",
		Options = getgenv().Config.EventUpgrades,
		CurrentOption = {
			"None",
		},
		MultipleOptions = true,
		MaxVisibleOptions = 5,
		SearchPlaceholder = "Search upgrade...",
		Flag = "EventUpgrades",
		Callback = function()
		end,
	})

	EventUpgradeSection:AddToggle({
		Name = "Auto Upgrade",
		Default = false,
		Flag = "AutoUpgrade",
		Callback = function(val)
			getgenv().Config.AutoEventUpgrade = val

			if val then
				AutoEventUpgrade()
			end
		end,
	})

	EventUpgradeSection:AddDropdown({
		Name = "Auto Upgrade Mode",
		Options = {"TP", "Run"},
		CurrentOption = {getgenv().Config.AutoUpgradeMode},
		MultipleOptions = false,
		MaxVisibleOptions = 2,
		Flag = "AutoUpgradeMode",
		Callback = function(Values)
			if Values[1] then
				getgenv().Config.AutoUpgradeMode = Values[1]
			end
		end,
	})

	EventUpgradeSection:AddToggle({
		Name = "Auto Upgrade Pinata",
		Default = false,
		Flag = "AutoUpgradePinata",
		Callback = function(val)
			getgenv().Config.AutoUpgradePinata = val

			if val then
				AutoUpgradePinata()
			end
		end,
	})

	local RaidSection = EventTab:AddSection({Name = "Raid", Color = "Red", Collapsible = true, DefaultCollapsed = false,})

	RaidSection:AddToggle({
		Name = "Auto Raid",
		Default = getgenv().Config.AutoRaid,
		Flag = "AutoRaid",
		Callback = function(Value)
			getgenv().Config.AutoRaid = Value

			if Value and getgenv().Config.ShowStatsWhileRaiding and not RaidStatsGui.Enabled then
				RaidStatsStart = os.clock()
			end

			RaidStatsGui.Enabled = Value and getgenv().Config.ShowStatsWhileRaiding
			RestoreFarmPets()

			if Value then
				getgenv().Config.MaxPetSpeed = true
				getgenv().Config.AutoCollectOrbs = true
				getgenv().Config.AutoTap = true
				ApplyPetSpeed()
				task.spawn(AutoRaid)
			else
				ApplyPetSpeed()
			end
		end,
	})

	RaidSection:AddToggle({
		Name = "Auto Use Fiesta Key",
		Default = getgenv().Config.AutoUseFiestaKey,
		Flag = "AutoUseFiestaKey",
		Callback = function(Value)
			getgenv().Config.AutoUseFiestaKey = Value
		end,
	})

	RaidSection:AddToggle({
		Name = "Auto Boss Chest",
		Default = getgenv().Config.AutoBossChest,
		Flag = "AutoBossChest",
		Callback = function(Value)
			getgenv().Config.AutoBossChest = Value
		end,
	})

	local RaidStatsSection = EventTab:AddSection({Name = "Stats", Color = "Blue", Collapsible = true, DefaultCollapsed = false,})

	RaidStatsSection:AddToggle({
		Name = "Show Stats While Raiding",
		Default = getgenv().Config.ShowStatsWhileRaiding,
		Flag = "ShowStatsWhileRaiding",
		Callback = function(Value)
			getgenv().Config.ShowStatsWhileRaiding = Value

			if Value and getgenv().Config.AutoRaid and not RaidStatsGui.Enabled then
				RaidStatsStart = os.clock()
			end

			RaidStatsGui.Enabled = Value and getgenv().Config.AutoRaid
		end,
	})
end

function GetPinataUpgrades()
	table.clear(getgenv().Config.EventUpgrades)

	local UpgradeFolder = game:GetService("ReplicatedStorage").__DIRECTORY.EventUpgrades.Event.FiestaUpgrades

	for _, v in pairs(UpgradeFolder:GetChildren()) do
		local UpgradeName = v.Name:match("^EventUpgrade%s*|%s*(.+)$")

		if UpgradeName then
			table.insert(getgenv().Config.EventUpgrades, UpgradeName)
		end
	end

	return getgenv().Config.EventUpgrades
end


function AutoEventUpgrade()
	while getgenv().Config.AutoEventUpgrade do
		for _, Upgrade in ipairs(getgenv().Config.EventUpgrades or {}) do
			game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("EventUpgrades: Purchase"):InvokeServer(Upgrade)
		end

		task.wait(1)
	end
end

function BuildEventLuckOptions()
	local Options = {}

	for Index = 1, FiestaLuckMachineCmds.Count() do
		local Tier = FiestaLuckMachineCmds.Tier(Index)

		if Tier then
			local Success, Dir = pcall(function()
				return Boosts[Tier.BoostId]
			end)

			if Success and Dir and Dir.DisplayName then
				table.insert(Options, {Index = Index, Label = Dir.DisplayName,})
			end
		end
	end

	return Options
end

function AutoEventLuck()
	while getgenv().Config.AutoEventLuck do
		local Index = tonumber(getgenv().Config.EventLuck)

		if Index and FiestaLuckMachineCmds.IsEnabled() and FiestaLuckMachineCmds.Tier(Index) then
			local BoostTime = FiestaLuckMachineCmds.GetBoostTime(Index)

			if BoostTime < FiestaLuckMachineCmds.GetMaxBoostSeconds() then
				local Amount = FiestaLuckMachineCmds.SpendableCap(Index)

				if Amount > 0 then
					FiestaLuckMachineCmds.AddBoost(Index, Amount)
				end
			end
		end

		task.wait(1)
	end
end


function AutoStartEternalMaze()
	if AutoStartEternalMazeWorkerRunning then
		return
	end

	AutoStartEternalMazeWorkerRunning = true

	while getgenv().Config.AutoStartEternalMaze and Runtime.Running and getgenv().PS99AutoFarmRuntime == Runtime do
		pcall(Network.Invoke, "XM_Poll")
		task.wait(0.15)

		local State = EternalMazeCmds.State()

		if State and State.enabled ~= false and InstancingCmds.IsInInstance("FiestaLobby") and not EternalMazeCmds.Running() and EternalMazeCmds.AttemptsLeft() > 0 then
			pcall(Network.Invoke, "XM_Enter")
		end

		task.wait(1)
	end

	AutoStartEternalMazeWorkerRunning = false
end

function AutoEternalMazeCreate()
	if not getgenv().Config.AutoCompleteEternalMaze or not EternalMazeCmds.Running() or os.clock() < NextEternalMazeCreate then
		return
	end

	NextEternalMazeCreate = os.clock() + 1

	if InstancingCmds.IsInInstance() then
		InstancingCmds.Leave(false, true)

		repeat
			task.wait(0.03)
		until not InstancingCmds.IsInInstance() or not getgenv().Config.AutoCompleteEternalMaze or not EternalMazeCmds.Running()
	end

	if not getgenv().Config.AutoCompleteEternalMaze or not EternalMazeCmds.Running() then
		return
	end

	local Portal

	for i = 1, 10 do
		if not ClientRaidInstance.GetByPortal(i) then
			Portal = i
			break
		end
	end

	if not Portal then
		return
	end

	local Success, Error, Raid = RaidCmds.Create({Portal = Portal, Difficulty = RaidCmds.GetDifficultyLevel(), PartyMode = Raids.PartyMode.Solo, Tier = EternalMazeTier,})

	if not Success or not Raid then
		warn("[PS99 Auto Farm] Eternal Maze:", Error)
		return
	end

	local Joined, JoinError = Raid:Join()

	if not Joined then
		warn("[PS99 Auto Farm] Eternal Maze:", JoinError)
		return
	end

	for _ = 1, 300 do
		local Current = RaidCmds.GetCurrent()

		if Current and Current:GetId() == Raid:GetId() then
			EternalMazeRaidID = Current:GetId()
			AutoRaidQueueRoom(Current, Current:GetRoomNumber())
			return
		end

		task.wait(0.03)
	end
end

function AutoCompleteEternalMaze()
	if AutoCompleteEternalMazeWorkerRunning then
		return
	end

	AutoCompleteEternalMazeWorkerRunning = true
	getgenv().Config.MaxPetSpeed = true
	getgenv().Config.AutoCollectOrbs = true
	getgenv().Config.AutoTap = true
	ApplyPetSpeed()

	while getgenv().Config.AutoCompleteEternalMaze and Runtime.Running and getgenv().PS99AutoFarmRuntime == Runtime do
		if not EternalMazeCmds.Running() then
			EternalMazeTier = 0
			EternalMazeRaidID = nil
			NextEternalMazeCreate = 0
			RestoreFarmPets()
			task.wait(0.5)
			continue
		end

		local Raid = RaidCmds.GetCurrent()

		if not Raid then
			AutoEternalMazeCreate()
			task.wait(0.25)
			continue
		end

		local Current = ClientRaidInstance.GetCurrent()

		if Current then
			local Success, Tier = pcall(Current.GetTier, Current)

			if Success and type(Tier) == "number" then
				EternalMazeTier = math.max(0, math.floor(Tier))
			end
		end

		if EternalMazeRaidID ~= Raid:GetId() then
			EternalMazeRaidID = Raid:GetId()
			AutoRaidMazeCell = nil
			table.clear(AutoRaidPinataBossUIDs)
			AutoRaidTeleportRaidID = nil
			AutoRaidDesiredRoom = 0
			AutoRaidLastTeleportedRoom = 0
			AutoRaidActiveRoom = 0
			RestoreFarmPets()
		end

		if Raid:IsComplete() then
			if AutoRaidFarmMazeProgress(Raid) then
				AutoRaidMazeCell = nil
				table.clear(AutoRaidPinataBossUIDs)
				RestoreFarmPets()
				AutoRaidTeleportPrizeRoom()
				AutoRaidCollect(Raid)
				EternalMazeRaidID = nil

				if getgenv().Config.AutoCompleteEternalMaze and EternalMazeCmds.Running() then
					AutoEternalMazeCreate()
				end
			else
				task.wait(0.05)
			end
		else
			AutoRaidQueueRoom(Raid, Raid:GetRoomNumber())

			local Room = AutoRaidActiveRoom
			local Character = Player.Character

			if Room > 0 then
				local Cell = FiestaMazeCmds.PathCellModel(Room)
				local State = FiestaMazeCmds.Get()

				if Cell and Character and State then
					local Center = Cell:GetPivot().Position
					local Area = GetAutoRaidMazeArea(Raid, State, Cell) or FiestaMaze.AreaPrefix(Raid:GetId()) .. "Room" .. Room

					AutoRaidCorrectPinataBoss(Area, Cell)

					local RoomBreakables = GetAutoRaidCellBreakables(Cell)

					if #RoomBreakables == 0 then
						RoomBreakables = GetAreaBreakables(Area, true)
					end

					FarmArea(Area, Center, NormalizeMode(getgenv().Config.Mode), RoomBreakables)
					AutoRaidTapArea(Area, RoomBreakables)
					CollectFarmDrops()
				end
			end

			task.wait(0.05)
		end
	end

	EternalMazeRaidID = nil
	RestoreFarmPets()
	ApplyPetSpeed()
	AutoCompleteEternalMazeWorkerRunning = false
end

function GetPinataChallengeBreakZone()
	local Things = workspace:FindFirstChild("__THINGS")
	local Container = Things and Things:FindFirstChild("__INSTANCE_CONTAINER")
	local Active = Container and Container:FindFirstChild("Active")
	local Lobby = Active and Active:FindFirstChild("FiestaLobby")
	local Zones = Lobby and Lobby:FindFirstChild("BREAK_ZONES")

	if not Zones then
		return
	end

	for _, Zone in ipairs(Zones:GetChildren()) do
		local Part = Zone:IsA("BasePart") and Zone or Zone:FindFirstChildWhichIsA("BasePart", true)

		if Part then
			local Size = Part.Size

			if math.abs(Size.X - 51.78822326660156) < 1 and math.abs(Size.Y - 0.20550277829170227) < 0.15 and math.abs(Size.Z - 51.98493957519531) < 1 then
				return Part
			end
		end
	end
end

function MoveAutoUpgrade(Position, TargetCFrame)
	local Character = Player.Character

	if not Character then
		return
	end

	if getgenv().Config.AutoUpgradeMode == "Run" then
		local Humanoid = Character:FindFirstChildOfClass("Humanoid")
		local Root = Character:FindFirstChild("HumanoidRootPart")

		if not Humanoid or not Root then
			return
		end

		Humanoid:MoveTo(Position)

		local Started = os.clock()

		while getgenv().Config.AutoUpgradePinata and (Root.Position - Position).Magnitude > 5 and os.clock() - Started < 15 do
			task.wait(0.05)
		end
	else
		Character:PivotTo(TargetCFrame)
	end
end

function GetPinataChallengePad()
	for _, MachineName in ipairs({"ChallengePinata", "PinataChallenge", "Main_PinataChallenge", "ChallengeMachine"}) do
		local Success, Machines = pcall(MachineCmds.GetAll, MachineName)

		if Success and type(Machines) == "table" then
			for _, Machine in ipairs(Machines) do
				local Model = Machine.Model
				local Pad = Model and Model:FindFirstChild("Pad")

				if Pad and Pad:IsA("BasePart") then
					return Pad, MachineName
				end
			end
		end
	end
end

function GetPinataChallengeBreakable()
	for _, Breakable in pairs(BreakableFrontend.AllByInstanceAndClass("Chest") or {}) do
		if Breakable and Breakable.uid and Breakable.id == "Pinata" and Breakable.parentID == "FiestaLobby" and Breakable.model and Breakable.model.Parent then
			return Breakable
		end
	end
end


function AutoUpgradePinata()
	while getgenv().Config.AutoUpgradePinata and not PinataChallengeState do
		pcall(Network.Invoke, "PinataChallenge: Refresh")
		task.wait(0.2)
	end

	while getgenv().Config.AutoUpgradePinata do
		if PinataChallengeLevel >= 101 then
			AutoUpgradePinataFarming = true
			ApplyPetSpeed()

			local MaxPinataActive = false

			while getgenv().Config.AutoUpgradePinata and PinataChallengeLevel >= 101 do
				local Zone = GetPinataChallengeBreakZone()
				local Character = Player.Character
				local Root = Character and Character:FindFirstChild("HumanoidRootPart")

				if Zone and Root and (Root.Position - Zone.Position).Magnitude > 6 then
					MoveAutoUpgrade(Zone.Position, CFrame.new(Zone.Position + Vector3.new(0, 3, 0)))
				end

				local Pinata = GetPinataChallengeBreakable()

				if Pinata then
					MaxPinataActive = true

					for _, Pet in ipairs(GetSortedPets()) do
						TargetPet(Pet, Pinata)
					end

					if os.clock() >= NextAutoTap then
						NextAutoTap = os.clock() + GetAutoTapInterval()
						Signal.Fire("AutoClicker_Nearby", Pinata.uid)
					end

					CollectFarmDrops()
				elseif MaxPinataActive then
					MaxPinataActive = false
					RestoreFarmPets()
				end

				task.wait(0.03)
			end

			AutoUpgradePinataFarming = false
			RestoreFarmPets()
			ApplyPetSpeed()
		else
			AutoUpgradePinataFarming = false
			RestoreFarmPets()
			ApplyPetSpeed()

			local UpgradeStarted = false

			while getgenv().Config.AutoUpgradePinata and not UpgradeStarted and PinataChallengeLevel < 101 do
				local Pad, MachineName = GetPinataChallengePad()
				local Character = Player.Character
				local StandingOnPad = false

				if Pad and Character and MachineName then
					MoveAutoUpgrade(Pad.Position, Pad.CFrame * CFrame.new(0, 3, 0))

					for _ = 1, 30 do
						if not getgenv().Config.AutoUpgradePinata or PinataChallengeLevel >= 101 then
							break
						end

						local Success, Result = pcall(MachineCmds.IsStandingOn, MachineName)

						if Success and Result == true then
							StandingOnPad = true
							break
						end

						task.wait(0.05)
					end
				end

				if PinataChallengeLevel >= 101 then
					break
				end

				if StandingOnPad then
					local Ok, Result, Reason = pcall(Network.Invoke, "PinataChallenge: Start")

					if Ok and Result == true then
						UpgradeStarted = true
						print("Pinata Upgrade: true")

						if getgenv().Config.AutoUpgradeMode == "Run" then
							local Zone = GetPinataChallengeBreakZone()
							local Character2 = Player.Character
							local Humanoid = Character2 and Character2:FindFirstChildOfClass("Humanoid")

							if Zone and Humanoid then
								Humanoid:MoveTo(Zone.Position)
							end
						end
					else
						print("Pinata Upgrade: false", Ok and Reason or Result)
						task.wait(1)
					end
				else
					print("Pinata Upgrade: Challenge Pad not ready")
					task.wait(0.5)
				end
			end

			if not getgenv().Config.AutoUpgradePinata then
				break
			end

			if PinataChallengeLevel < 101 and UpgradeStarted then
				local Pinata

				while getgenv().Config.AutoUpgradePinata and PinataChallengeLevel < 101 do
					if PinataChallengeState and PinataChallengeState.runLevel ~= nil then
						Pinata = GetPinataChallengeBreakable()

						if Pinata then
							break
						end
					end

					task.wait(0.05)
				end

				if Pinata and getgenv().Config.AutoUpgradePinata and PinataChallengeLevel < 101 then
					AutoUpgradePinataFarming = true

					local Zone = GetPinataChallengeBreakZone()
					local Character = Player.Character

					if Zone and Character then
						MoveAutoUpgrade(Zone.Position, CFrame.new(Zone.Position + Vector3.new(0, 3, 0)))
					end

					ApplyPetSpeed()

					while getgenv().Config.AutoUpgradePinata and PinataChallengeLevel < 101 and PinataChallengeState and PinataChallengeState.runLevel ~= nil do
						Pinata = GetPinataChallengeBreakable()

						if not Pinata then
							break
						end

						for _, Pet in ipairs(GetSortedPets()) do
							TargetPet(Pet, Pinata)
						end

						if getgenv().Config.AutoTap and os.clock() >= NextAutoTap then
							NextAutoTap = os.clock() + GetAutoTapInterval()
							Signal.Fire("AutoClicker_Nearby", Pinata.uid)
						end

						CollectFarmDrops()
						task.wait(0.03)
					end
				end

				AutoUpgradePinataFarming = false
				RestoreFarmPets()
				ApplyPetSpeed()

				if getgenv().Config.AutoUpgradeMode == "Run" and PinataChallengeLevel < 101 then
					local Pad = GetPinataChallengePad()
					local Character = Player.Character
					local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

					if Pad and Humanoid then
						Humanoid:MoveTo(Pad.Position)
					end
				end

				while getgenv().Config.AutoUpgradePinata and PinataChallengeLevel < 101 and PinataChallengeState and PinataChallengeState.runLevel ~= nil do
					task.wait(0.05)
				end
			end
		end
	end

	AutoUpgradePinataFarming = false
	RestoreFarmPets()
	ApplyPetSpeed()
end

function IsRaidAutomationRunning()
	return getgenv().Config.AutoRaid or getgenv().Config.AutoCompleteEternalMaze and EternalMazeCmds.Running()
end

function AutoRaidTeleportRoom(Room)
	while IsRaidAutomationRunning() and Runtime.Running do
		local Raid = RaidCmds.GetCurrent()

		if not Raid or Raid:IsComplete() or Raid:GetId() ~= AutoRaidTeleportRaidID or Room > Raid:GetMaxRoomNumber() then
			return false
		end

		local State = FiestaMazeCmds.Get()

		if State and State.raidId == Raid:GetId() and State.layout and State.graph then
			local Previous = State.layout.path[Room - 1]
			local PreviousCleared = Room <= 1

			if Previous then
				local PreviousKey = FiestaMaze.CellKey(State.layout, Previous[1], Previous[2])
				PreviousCleared = State.cleared[PreviousKey] == true
			end

			if PreviousCleared then
				local Target = State.layout.path[Room]

				if Target then
					local TargetKey = FiestaMaze.CellKey(State.layout, Target[1], Target[2])
					local Cell = State.built[TargetKey]

					if Cell and Cell.Parent then
						local Success, Pivot = pcall(Cell.GetPivot, Cell)
						local Character = Player.Character

						if Success and Pivot and Character then
							RestoreFarmPets()
							Character:PivotTo(CFrame.new(Pivot.Position + Vector3.new(0, 3, 0)))
							return true
						end
					end
				end
			end
		end

		task.wait(0.03)
	end

	return false
end

function AutoRaidRoomTeleportWorker()
	if AutoRaidTeleportWorkerRunning then
		return
	end

	AutoRaidTeleportWorkerRunning = true

	while IsRaidAutomationRunning() and Runtime.Running do
		local Raid = RaidCmds.GetCurrent()

		if not Raid or Raid:IsComplete() or Raid:GetId() ~= AutoRaidTeleportRaidID then
			break
		end

		if AutoRaidLastTeleportedRoom >= AutoRaidDesiredRoom then
			break
		end

		local Room = AutoRaidLastTeleportedRoom + 1

		if not AutoRaidTeleportRoom(Room) then
			break
		end

		AutoRaidLastTeleportedRoom = Room
		AutoRaidActiveRoom = Room
		AutoRaidMazeCell = nil

		task.wait(0.03)
	end

	AutoRaidTeleportWorkerRunning = false
end

function AutoRaidQueueRoom(Raid, Room)
	if not Raid or type(Room) ~= "number" then
		return
	end

	local RaidID = Raid:GetId()

	if AutoRaidTeleportRaidID ~= RaidID then
		AutoRaidTeleportRaidID = RaidID
		AutoRaidDesiredRoom = Room
		AutoRaidLastTeleportedRoom = Room - 1
		AutoRaidActiveRoom = 0
	else
		AutoRaidDesiredRoom = math.max(AutoRaidDesiredRoom, Room)
	end

	if not AutoRaidTeleportWorkerRunning then
		task.spawn(AutoRaidRoomTeleportWorker)
	end
end

function GetAutoRaidCellBreakables(Room)
	if not Room or not Room.Parent then
		return {}
	end

	local Success, BoundsCFrame, BoundsSize = pcall(Room.GetBoundingBox, Room)

	if not Success or not BoundsCFrame or not BoundsSize then
		return {}
	end

	local Result = {}

	for _, Class in ipairs({"Normal", "Chest"}) do
		local Called, ByClass = pcall(BreakableFrontend.AllByInstanceAndClass, Class)

		if Called and type(ByClass) == "table" then
			for _, Breakable in pairs(ByClass) do
				local Model = Breakable and Breakable.model
				local Owner = Model and Model:GetAttribute("OwnerUsername")

				if Model and Model.Parent and not Breakable.disableDamage and not Model:GetAttribute("ManualDamage") and not Model:GetAttribute("DisableDamage") and (not Owner or Owner == Player.Name) then
					local PivotSuccess, Pivot = pcall(Model.GetPivot, Model)

					if PivotSuccess and Pivot then
						local Position = BoundsCFrame:PointToObjectSpace(Pivot.Position)

						if math.abs(Position.X) <= BoundsSize.X / 2 and math.abs(Position.Z) <= BoundsSize.Z / 2 then
							table.insert(Result, Breakable)
						end
					end
				end
			end
		end
	end

	return Result
end

function AutoRaidTapArea(Area, OverrideBreakables)
	if not getgenv().Config.AutoTap then
		return
	end

	local Time = os.clock()

	if Time < NextAutoRaidTap then
		return
	end

	local Breakables = {}

	for _, Breakable in ipairs(OverrideBreakables or GetAreaBreakables(Area)) do
		local Dir = Breakable.dir
		local Model = Breakable.model

		if Model and Model.Parent and not (Dir and Dir.NoTapping) then
			local UID = Breakable.uid or Breakable._uid or Model:GetAttribute("BreakableUID")

			if UID then
				table.insert(Breakables, UID)
			end
		end
	end

	if #Breakables == 0 then
		return
	end

	if AutoRaidTapAreaID ~= Area then
		AutoRaidTapAreaID = Area
		AutoRaidTapIndex = 0
	end

	AutoRaidTapIndex = AutoRaidTapIndex % #Breakables + 1
	NextAutoRaidTap = Time + GetAutoTapInterval()

	Signal.Fire("AutoClicker_Nearby", Breakables[AutoRaidTapIndex])
end

function GetAutoRaidMazeArea(Raid, State, Room)
	local Prefix = FiestaMaze.AreaPrefix(Raid:GetId())
	local CellX = Room:GetAttribute("CellX")
	local CellY = Room:GetAttribute("CellY")

	for BossNumber, Boss in ipairs(State.layout.bosses or {}) do
		if Boss.cx == CellX and Boss.cy == CellY then
			return Prefix .. "Boss" .. BossNumber
		end
	end

	local RoomNumber = Room:GetAttribute("RoomNumber")

	if RoomNumber then
		return Prefix .. "Room" .. RoomNumber
	end
end

function AutoRaidCorrectPinataBoss(Area, Room)
	if not Area or not Room then
		return
	end

	local BossNumber = tonumber(Area:match("Boss(%d+)$"))

	if not BossNumber or BossNumber < 1 or BossNumber > 3 then
		return
	end

	local BossID = "PinataBoss" .. BossNumber
	local Success, Breakables = pcall(BreakableFrontend.AllByInstanceAndClass, "Chest")

	if not Success or type(Breakables) ~= "table" then
		return
	end

	for _, Breakable in pairs(Breakables) do
		if Breakable and Breakable.id == BossID and typeof(Breakable.model) == "Instance" and Breakable.model.Parent then
			local Model = Breakable.model
			local Hitbox = Model:FindFirstChild("Hitbox", true)
			local Character = Player.Character

			if AutoRaidPinataBossUIDs[BossNumber] ~= Model and Hitbox and Hitbox:IsA("BasePart") and Character then
				local RoomY = Room:GetPivot().Position.Y + 3

				AutoRaidPinataBossUIDs[BossNumber] = Model
				Character:PivotTo(CFrame.new(Hitbox.Position.X, RoomY, Hitbox.Position.Z))
			end

			return
		end
	end
end

function AutoRaidBossChest(Raid, BossKey)
	local State = FiestaMazeCmds.Get()

	if not State or State.raidId ~= Raid:GetId() then
		return false
	end

	if not State.cleared[BossKey] then
		if not getgenv().Config.AutoBossChest or not MiscItem("Fiesta Boss Key"):HasAny() then
			return true
		end

		local Called, Success, Error = pcall(Network.Invoke, "GX_Redeem")

		if not Called or (not Success and Error) then
			return true
		end
	end

	local Room
	local BossFound = false
	local Deadline = os.clock() + 10

	repeat
		State = FiestaMazeCmds.Get()
		Room = State and State.built and State.built[BossKey]

		if Room and Room.Parent then
			local Character = Player.Character

			if Character then
				Character:PivotTo(CFrame.new(Room:GetPivot().Position + Vector3.new(0, 3, 0)))
			end

			Deadline = os.clock() + 10
			break
		end

		task.wait(0.05)
	until os.clock() >= Deadline or not getgenv().Config.AutoRaid

	if not Room or not Room.Parent then
		return true
	end

	while getgenv().Config.AutoRaid and Runtime.Running do
		local CurrentRaid = RaidCmds.GetCurrent()

		if not CurrentRaid or CurrentRaid:GetId() ~= Raid:GetId() then
			break
		end

		local Breakables = GetAutoRaidCellBreakables(Room)
		local Boss = Breakables[1]

		if Boss then
			BossFound = true

			for _, Pet in ipairs(GetSortedPets()) do
				TargetPet(Pet, Boss)
			end

			AutoRaidTapArea(BossKey, Breakables)
			CollectFarmDrops()
		elseif BossFound then
			RestoreFarmPets()
			CollectFarmDrops()
			return true
		elseif os.clock() >= Deadline then
			return true
		end

		task.wait(0.03)
	end

	RestoreFarmPets()
	return false
end

function AutoRaidFarmMazeProgress(Raid)
	local State = FiestaMazeCmds.Get()

	if not State or not State.graph then
		return false
	end

	local BossKey = State.layout and FiestaMaze.BossNodeKey(State.layout)

	if BossKey and getgenv().Config.AutoBossChest and not AutoRaidBossChest(Raid, BossKey) then
		return false
	end

	local Current, Max = FiestaMazeCmds.Progress()

	if Max > 0 and Current >= Max then
		return true
	end

	State = FiestaMazeCmds.Get()

	if not State or not State.graph then
		return false
	end

	local Pending = false

	for _, CellKey in ipairs(State.graph.order) do
		if CellKey ~= BossKey and not State.cleared[CellKey] then
			Pending = true

			local Room = State.built[CellKey]
			local Character = Player.Character

			if Room and Room.Parent and Character then
				local Center = Room:GetPivot().Position
				local Area = GetAutoRaidMazeArea(Raid, State, Room)

				if AutoRaidMazeCell ~= CellKey then
					AutoRaidMazeCell = CellKey
					RestoreFarmPets()
					Character:PivotTo(CFrame.new(Center + Vector3.new(0, 3, 0)))
				end

				if Area then
					AutoRaidCorrectPinataBoss(Area, Room)

					local RoomBreakables = GetAutoRaidCellBreakables(Room)

					if #RoomBreakables == 0 then
						RoomBreakables = GetAreaBreakables(Area, true)
					end

					FarmArea(Area, Center, NormalizeMode(getgenv().Config.Mode), RoomBreakables)
					AutoRaidTapArea(Area, RoomBreakables)
					CollectFarmDrops()
				end

				return false
			end
		end
	end

	return not Pending
end

function AutoRaidTeleportPrizeRoom()
	local Character = Player.Character

	if not Character then
		return
	end

	for _ = 1, 100 do
		local Room = FiestaMazePortals.PrizeRoom()

		if Room then
			local Success, Pivot = pcall(Room.GetPivot, Room)

			if Success and Pivot then
				Character:PivotTo(CFrame.new(Pivot.Position + Vector3.new(0, 3, 0)))
				return
			end
		end

		task.wait(0.05)
	end
end

function AutoRaidCollect(Raid)
	if not Raid or not Raid._ct then
		return
	end

	local Opened = {}
	local Deadline = os.clock() + 15

	repeat
		local Pending = false

		for ChestID, Chest in pairs(Raids.ChestDirectory) do
			if not Chest.Retired and not Opened[ChestID] then
				if Chest.RequiredDifficulty and Raid:GetDifficulty() < Chest.RequiredDifficulty then
					Opened[ChestID] = true
				elseif ChestID == "LeprechaunChest" and not getgenv().Config.AutoUseFiestaKey then
					Opened[ChestID] = true
				elseif ChestID == "LeprechaunChest" and Chest.RequiredItem and not Chest.RequiredItem:HasAny() then
					Opened[ChestID] = true
				else
					local Called, Success, Error = pcall(Raid.OpenChest, Raid, ChestID)

					if Called and Success then
						Opened[ChestID] = true

						if RaidStatsEggs[ChestID] ~= nil then
							RaidStatsEggs[ChestID] += 1
						end

						if ChestID == "LeprechaunChest" then
							RaidStatsKeys += 1
						end
					elseif Called and type(Error) == "string" and Error:find("isn't spawned", 1, true) then
						Pending = true
					elseif Called and type(Error) == "string" and Error:find("isn't ready yet", 1, true) then
						Pending = true
					else
						Opened[ChestID] = true
					end
				end
			end
		end

		if not Pending then
			break
		end

		task.wait(0.25)
	until os.clock() >= Deadline or not IsRaidAutomationRunning()
end

function AutoRaidCreate()
	if not getgenv().Config.AutoRaid or getgenv().Config.AutoCompleteEternalMaze and EternalMazeCmds.Running() then
		return
	end

	local Portal

	for i = 1, 10 do
		if not ClientRaidInstance.GetByPortal(i) then
			Portal = i
			break
		end
	end

	if not Portal then
		return
	end

	local Success, Error, Raid = RaidCmds.Create({Portal = Portal, Difficulty = RaidCmds.GetDifficultyLevel(), PartyMode = Raids.PartyMode.Solo,})

	if not Success or not Raid then
		if InstancingCmds.IsInInstance() then
			InstancingCmds.Leave(true, true)

			repeat
				task.wait(0.03)
			until not InstancingCmds.IsInInstance() or not getgenv().Config.AutoRaid

			if getgenv().Config.AutoRaid then
				return AutoRaidCreate()
			end
		end

		warn("[PS99 Auto Farm] Auto Raid:", Error)
		return
	end

	local Joined, JoinError = Raid:Join()

	if not Joined and InstancingCmds.IsInInstance() then
		InstancingCmds.Leave(true, true)

		repeat
			task.wait(0.03)
		until not InstancingCmds.IsInInstance() or not getgenv().Config.AutoRaid

		if getgenv().Config.AutoRaid then
			Joined, JoinError = Raid:Join()
		end
	end

	if not Joined then
		warn("[PS99 Auto Farm] Auto Raid:", JoinError)
		return
	end

	for _ = 1, 300 do
		local Current = RaidCmds.GetCurrent()

		if Current and Current:GetId() == Raid:GetId() then
			AutoRaidQueueRoom(Current, Current:GetRoomNumber())
			return
		end

		task.wait(0.03)
	end
end

function AutoRaid()
	if AutoRaidWorkerRunning then
		return
	end

	AutoRaidWorkerRunning = true
	RestoreFarmPets()

	while getgenv().Config.AutoRaid and Runtime.Running and getgenv().PS99AutoFarmRuntime == Runtime do
		if getgenv().Config.AutoCompleteEternalMaze and EternalMazeCmds.Running() then
			task.wait(0.5)
			continue
		end

		local Raid = RaidCmds.GetCurrent()

		if not Raid then
			AutoRaidCreate()
			task.wait(0.25)
		elseif Raid:IsComplete() then
			if AutoRaidFarmMazeProgress(Raid) then
				AutoRaidMazeCell = nil
				table.clear(AutoRaidPinataBossUIDs)
				AutoRaidTeleportRaidID = nil
				AutoRaidDesiredRoom = 0
				AutoRaidLastTeleportedRoom = 0
				AutoRaidActiveRoom = 0
				RestoreFarmPets()
				AutoRaidTeleportPrizeRoom()
				AutoRaidCollect(Raid)

				if RaidStatsLastRaidID ~= Raid:GetId() then
					RaidStatsLastRaidID = Raid:GetId()
					RaidStatsRaids += 1
				end

				if getgenv().Config.AutoRaid then
					AutoRaidCreate()
				end
			else
				task.wait(0.05)
			end
		else
			AutoRaidQueueRoom(Raid, Raid:GetRoomNumber())

			local Room = AutoRaidActiveRoom
			local Character = Player.Character

			if Room > 0 then
				local Cell = FiestaMazeCmds.PathCellModel(Room)
				local State = FiestaMazeCmds.Get()

				if Cell and Character and State then
					local Center = Cell:GetPivot().Position
					local Area = GetAutoRaidMazeArea(Raid, State, Cell) or FiestaMaze.AreaPrefix(Raid:GetId()) .. "Room" .. Room

					AutoRaidCorrectPinataBoss(Area, Cell)

					local RoomBreakables = GetAutoRaidCellBreakables(Cell)

					if #RoomBreakables == 0 then
						RoomBreakables = GetAreaBreakables(Area, true)
					end

					FarmArea(Area, Center, NormalizeMode(getgenv().Config.Mode), RoomBreakables)
					AutoRaidTapArea(Area, RoomBreakables)
					CollectFarmDrops()
				end
			end

			task.wait(0.05)
		end
	end

	RestoreFarmPets()
	ApplyPetSpeed()
	AutoRaidWorkerRunning = false
end

function BuildRaidStatsGui()
	RaidStatsGui = Instance.new("ScreenGui")
RaidStatsGui.Name = "PS99RaidStats"
RaidStatsGui.IgnoreGuiInset = true
RaidStatsGui.ResetOnSpawn = false
RaidStatsGui.DisplayOrder = 1000
RaidStatsGui.Enabled = false
RaidStatsGui.Parent = Player:WaitForChild("PlayerGui")

local RaidStatsFrame = Instance.new("Frame")
RaidStatsFrame.Size = UDim2.fromScale(1, 1)
RaidStatsFrame.BackgroundColor3 = Color3.new(0, 0, 0)
RaidStatsFrame.BorderSizePixel = 0
RaidStatsFrame.Active = true
RaidStatsFrame.Parent = RaidStatsGui

RaidStatsText = Instance.new("TextLabel")
RaidStatsText.AnchorPoint = Vector2.new(0.5, 0.5)
RaidStatsText.Position = UDim2.fromScale(0.5, 0.42)
RaidStatsText.Size = UDim2.fromOffset(560, 300)
RaidStatsText.BackgroundTransparency = 1
RaidStatsText.Font = Enum.Font.FredokaOne
RaidStatsText.TextColor3 = Color3.new(1, 1, 1)
RaidStatsText.TextSize = 24
RaidStatsText.TextWrapped = true
RaidStatsText.RichText = true
RaidStatsText.Parent = RaidStatsFrame

local RaidStatsStroke = Instance.new("UIStroke")
RaidStatsStroke.Thickness = 3
RaidStatsStroke.Parent = RaidStatsText

table.clear(RaidStatsInventoryLabels)

for Index, Data in ipairs({
	{"FiestaGift", "Fiesta Gift", LootboxItem("Fiesta Gift"):GetIcon()},
	{"FiestaKey", "Fiesta Key", MiscItem("Fiesta Key"):GetIcon()},
}) do
	local Row = Instance.new("Frame")
	Row.AnchorPoint = Vector2.new(0.5, 0.5)
	Row.Position = UDim2.fromScale(0.47, 0.84 + (Index - 1) * 0.05)
	Row.Size = UDim2.fromOffset(320, 34)
	Row.BackgroundTransparency = 1
	Row.Parent = RaidStatsFrame

	local Icon = Instance.new("ImageLabel")
	Icon.AnchorPoint = Vector2.new(1, 0.5)
	Icon.Position = UDim2.new(0.5, -4, 0.5, 0)
	Icon.Size = UDim2.fromOffset(32, 32)
	Icon.BackgroundTransparency = 1
	Icon.ScaleType = Enum.ScaleType.Fit
	Icon.Image = Data[3]
	Icon.Parent = Row

	local Label = Instance.new("TextLabel")
	Label.AnchorPoint = Vector2.new(0, 0.5)
	Label.Position = UDim2.new(0.5, 4, 0.5, 0)
	Label.Size = UDim2.fromOffset(180, 34)
	Label.BackgroundTransparency = 1
	Label.Font = Enum.Font.FredokaOne
	Label.TextColor3 = Color3.new(1, 1, 1)
	Label.TextSize = 22
	Label.TextXAlignment = Enum.TextXAlignment.Left
	Label.Parent = Row

	local Stroke = Instance.new("UIStroke")
	Stroke.Thickness = 3
	Stroke.Parent = Label

	RaidStatsInventoryLabels[Data[1]] = Label
end

table.clear(RaidStatsEggLabels)

for Index, ChestID in ipairs({"LootChest", "LeprechaunChest", "HugeChest", "TitanicChest"}) do
	local Label = Instance.new("TextLabel")
	Label.AnchorPoint = Vector2.new(0.5, 0.5)
	Label.Position = UDim2.fromScale(0.5, 0.65 + (Index - 1) * 0.045)
	Label.Size = UDim2.fromOffset(520, 34)
	Label.BackgroundTransparency = 1
	Label.Font = Enum.Font.FredokaOne
	Label.TextColor3 = Color3.new(1, 1, 1)
	Label.TextSize = 22
	Label.Parent = RaidStatsFrame

	local Stroke = Instance.new("UIStroke")
	Stroke.Thickness = 3
	Stroke.Parent = Label

	RaidStatsEggLabels[ChestID] = Label
end
end

function PinataFiesta:Start()
	if Started or not Initialized then
		return
	end

	Started = true
	RaidStatsGui.Enabled = getgenv().Config.AutoRaid and getgenv().Config.ShowStatsWhileRaiding

	if RaidStatsGui.Enabled then
		RaidStatsStart = os.clock()
	end

	if getgenv().Config.AutoEventLuck then
		task.spawn(AutoEventLuck)
	end

	if getgenv().Config.AutoStartEternalMaze then
		task.spawn(AutoStartEternalMaze)
	end

	if getgenv().Config.AutoCompleteEternalMaze then
		task.spawn(AutoCompleteEternalMaze)
	end

	if getgenv().Config.AutoRaid then
		getgenv().Config.MaxPetSpeed = true
		getgenv().Config.AutoCollectOrbs = true
		getgenv().Config.AutoTap = true
		ApplyPetSpeed()
		task.spawn(AutoRaid)
	end

	task.spawn(function()
		while Runtime.Running and getgenv().PS99AutoFarmRuntime == Runtime do
			if RaidStatsGui.Enabled and RaidStatsStart then
				local Raid = RaidCmds.GetCurrent()
				local Tier = Raid and Raid:GetDifficulty() or 0
				local Room = Raid and Raid:GetRoomNumber() or 0
				local Progress, Maximum = 0, 0

				if Raid then
					Progress, Maximum = FiestaMazeCmds.Progress()
				end

				local Seconds = math.floor(os.clock() - RaidStatsStart)
				local FiestaGifts = LootboxItem("Fiesta Gift"):CountAny()
				local FiestaKeys = MiscItem("Fiesta Key"):CountAny()

				RaidStatsText.Text = string.format("<b>PIÑATA FIESTA</b>\n\nRuntime  %02d:%02d:%02d\nRaids Completed  %d\nFiesta Keys Used  %d\n\nCurrent Tier  %d\nMaze Progress  %d / %d\nCurrent Room  %d\n\n<font size=\"18\">RIGHT SHIFT - Open Menu</font>", math.floor(Seconds / 3600), math.floor(Seconds / 60) % 60, Seconds % 60, RaidStatsRaids, RaidStatsKeys, Tier, Progress, Maximum, Room)
				RaidStatsInventoryLabels.FiestaGift.Text = "Fiesta Gift: " .. FiestaGifts
				RaidStatsInventoryLabels.FiestaKey.Text = "Fiesta Key: " .. FiestaKeys
				RaidStatsEggLabels.LootChest.Text = "Loot Egg  " .. RaidStatsEggs.LootChest
				RaidStatsEggLabels.LeprechaunChest.Text = "Leprechaun Egg  " .. RaidStatsEggs.LeprechaunChest
				RaidStatsEggLabels.HugeChest.Text = "Huge Egg  " .. RaidStatsEggs.HugeChest
				RaidStatsEggLabels.TitanicChest.Text = "Titanic Egg  " .. RaidStatsEggs.TitanicChest
			end

			task.wait(0.5)
		end
	end)
end

function PinataFiesta:Unload()
	getgenv().Config.AutoRaid = false
	getgenv().Config.AutoUseFiestaKey = false
	getgenv().Config.AutoBossChest = false
	getgenv().Config.ShowStatsWhileRaiding = false
	getgenv().Config.AutoStartEternalMaze = false
	getgenv().Config.AutoCompleteEternalMaze = false
	getgenv().Config.AutoEventUpgrade = false
	getgenv().Config.AutoEventLuck = false
	getgenv().Config.AutoUpgradePinata = false
	AutoUpgradePinataFarming = false

	if AutoRaidRoomCompletedConnection then
		AutoRaidRoomCompletedConnection:Disconnect()
		AutoRaidRoomCompletedConnection = nil
	end

	if PinataChallengeStateConnection then
		PinataChallengeStateConnection:Disconnect()
		PinataChallengeStateConnection = nil
	end

	RestoreFarmPets()
	ApplyPetSpeed()

	if RaidStatsGui then
		RaidStatsGui:Destroy()
		RaidStatsGui = nil
	end

	Initialized = false
	Started = false
end

return PinataFiesta
