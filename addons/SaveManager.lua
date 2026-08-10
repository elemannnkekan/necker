local HttpService = game:GetService("HttpService")

local SaveManager = {
	Folder = "PS99AutoFarm",
	FileName = "AutoFarm.json",
	StateFileName = "Settings.json",
	SaveInterval = 1,

	State = {
		AutoLoad = false,
		AutoSave = false,
		Profile = "Default",
	},
}

local function SanitizeProfileName(Value)
	local Name =
		tostring(Value or "Default")
			:gsub("[^%w%._%-]", "_")

	if Name == "" then
		Name = "Default"
	end

	return Name
end

local function SanitizeFileName(Value)
	local Name =
		tostring(Value or "AutoFarm.json")
			:gsub("[^%w%._%-]", "_")

	if Name == "" then
		Name = "AutoFarm.json"
	end

	if Name:sub(-5):lower() ~= ".json" then
		Name ..= ".json"
	end

	return Name
end

local function ConfigWarn(Action, Error)
	warn(
		"[PS99 Auto Farm] Config "
			.. tostring(Action)
			.. ":",
		Error
	)
end

function SaveManager:SetLibrary(Library)
	self.Library = Library
	return self
end

function SaveManager:SetWindow(Window)
	assert(
		type(Window) == "table",
		"SaveManager:SetWindow expected a window."
	)

	self.Window = Window

	if Window.ConfigSettings then
		Window.ConfigSettings.AutoSave =
			self.State.AutoSave
	end

	if type(Window.SetConfigProfile) == "function" then
		Window:SetConfigProfile(
			self.State.Profile
		)
	end

	return self
end

function SaveManager:SetFolder(Folder)
	self.Folder = tostring(Folder or "PS99AutoFarm")

	self:BuildFolderTree()
	self:LoadState()

	return self
end

function SaveManager:SetFileName(FileName)
	self.FileName = SanitizeFileName(FileName)
	return self
end

function SaveManager:SetSaveInterval(Interval)
	self.SaveInterval =
		math.max(
			tonumber(Interval) or 1,
			0.5
		)

	return self
end

function SaveManager:GetStatePath()
	return self.Folder
		.. "/"
		.. self.StateFileName
end

function SaveManager:BuildFolderTree()
	if type(isfolder) ~= "function"
		or type(makefolder) ~= "function"
	then
		return false
	end

	local Success = pcall(function()
		if not isfolder(self.Folder) then
			makefolder(self.Folder)
		end
	end)

	return Success
end

function SaveManager:LoadState()
	self.State.AutoLoad = false
	self.State.AutoSave = false
	self.State.Profile = "Default"

	local StatePath = self:GetStatePath()

	if type(isfile) ~= "function"
		or type(readfile) ~= "function"
		or not isfile(StatePath)
	then
		return false
	end

	local Success, Data = pcall(function()
		return HttpService:JSONDecode(
			readfile(StatePath)
		)
	end)

	if not Success or type(Data) ~= "table" then
		return false
	end

	self.State.AutoLoad =
		Data.AutoLoad == true

	self.State.AutoSave =
		Data.AutoSave == true

	self.State.Profile =
		SanitizeProfileName(
			Data.Profile or "Default"
		)

	return true
end

function SaveManager:SaveState()
	if type(writefile) ~= "function"
		or not self:BuildFolderTree()
	then
		return false
	end

	local Success = pcall(function()
		writefile(
			self:GetStatePath(),
			HttpService:JSONEncode(
				self.State
			)
		)
	end)

	return Success
end

function SaveManager:GetConfigurationSaving()
	return {
		Enabled = true,
		FolderName = self.Folder,
		FileName = self.FileName,
		Profile = self.State.Profile,
		AutoSave = self.State.AutoSave,
		SaveInterval = self.SaveInterval,
	}
end

function SaveManager:InstallInputControl()
	local Window = self.Window
	local WindowClass =
		Window and getmetatable(Window)

	if not WindowClass
		or type(WindowClass.AddInput) == "function"
	then
		return
	end

	function WindowClass:AddInput(Settings)
		Settings = Settings or {}
		Settings.Name =
			tostring(Settings.Name or "Input")

		local Row =
			self.Templates.Selector:Clone()

		Row.SettingName.Text = Settings.Name

		local Button = Row.Toggle.Button
		local Label =
			Button:FindFirstChild("TextLabel")

		local Value =
			tostring(
				Settings.Default
					or Settings.CurrentValue
					or ""
			)

		local Input = Instance.new("TextBox")
		Input.Name = "Input"
		Input.Active = true
		Input.AnchorPoint = Label.AnchorPoint
		Input.BackgroundTransparency = 1
		Input.BorderSizePixel = 0
		Input.ClearTextOnFocus = false
		Input.FontFace = Label.FontFace
		Input.MultiLine = false
		Input.PlaceholderColor3 =
			Color3.fromRGB(205, 205, 205)
		Input.PlaceholderText =
			tostring(Settings.Placeholder or "")
		Input.Position = Label.Position
		Input.Selectable = true
		Input.Size = Label.Size
		Input.Text = Value
		Input.TextColor3 = Label.TextColor3
		Input.TextScaled = Label.TextScaled
		Input.TextSize = Label.TextSize
		Input.TextStrokeColor3 =
			Label.TextStrokeColor3
		Input.TextStrokeTransparency =
			Label.TextStrokeTransparency
		Input.TextTruncate =
			Enum.TextTruncate.AtEnd
		Input.TextXAlignment =
			Enum.TextXAlignment.Center
		Input.TextYAlignment =
			Enum.TextYAlignment.Center
		Input.ZIndex = Label.ZIndex + 1
		Input.Parent = Button

		for _, Child in ipairs(
			Label:GetChildren()
		) do
			if Child:IsA("UIStroke")
				or Child:IsA("UIGradient")
			then
				Child:Clone().Parent = Input
			end
		end

		Label.Visible = false
		Button.Active = false
		Button.Selectable = false

		self:_mount(
			Row,
			Settings.Name,
			Settings.Name .. " input"
		)

		local Connection

		local Control = {
			Get = function()
				return Value
			end,

			Set = function(_, NewValue, Silent)
				Value = tostring(NewValue or "")
				Input.Text = Value

				if not Silent
					and type(Settings.Callback)
						== "function"
				then
					Settings.Callback(Value)
				end

				return Value
			end,

			Destroy = function()
				if Connection then
					Connection:Disconnect()
				end

				Row:Destroy()
			end,
		}

		Connection = Input.FocusLost:Connect(function()
			Value = Input.Text

			if type(Settings.Callback)
				== "function"
			then
				Settings.Callback(Value)
			end
		end)

		return self:_decorateControl(
			Control,
			Row,
			Settings,
			"Input"
		)
	end
end

function SaveManager:GetConfigProfiles()
	local Window = self.Window
	local Profiles = {}

	if Window
		and type(Window.GetConfigList)
			== "function"
	then
		Profiles = Window:GetConfigList()
	end

	local Current =
		SanitizeProfileName(
			self.State.Profile
		)

	if not table.find(Profiles, Current) then
		table.insert(Profiles, Current)
	end

	if #Profiles == 0 then
		table.insert(Profiles, "Default")
	end

	table.sort(Profiles)

	return Profiles
end

function SaveManager:SetCurrentProfile(Profile)
	local Window = self.Window

	assert(
		Window
			and type(Window.SetConfigProfile)
				== "function",
		"SaveManager window is not ready."
	)

	Profile =
		Window:SetConfigProfile(
			SanitizeProfileName(Profile)
		)

	self.State.Profile = Profile

	local Success, Encoded = pcall(
		HttpService.JSONEncode,
		HttpService,
		Window:GetConfigData()
	)

	Window.ConfigLastJSON =
		Success and Encoded or nil

	self:SaveState()

	return Profile
end

function SaveManager:RefreshProfileDropdown(Profile)
	local Selected =
		self:SetCurrentProfile(
			Profile or self.State.Profile
		)

	if self.ProfileDropdown then
		self.ProfileDropdown:Refresh(
			self:GetConfigProfiles()
		)

		self.ProfileDropdown:Set(
			{Selected},
			true
		)
	end

	return Selected
end

function SaveManager:BuildConfigSection(Tab)
	assert(
		self.Window,
		"Call SaveManager:SetWindow first."
	)

	assert(
		type(Tab) == "table",
		"SaveManager:BuildConfigSection expected a tab."
	)

	self:InstallInputControl()

	local Section = Tab:AddSection({
		Name = "Configuration",
		Color = "Purple",
		Collapsible = true,
		DefaultCollapsed = false,
	})

	if type(Section.AddInput) ~= "function" then
		function Section:AddInput(...)
			return self:_add("AddInput", ...)
		end
	end

	self.ConfigSection = Section

	self.ProfileNameInput = Section:AddInput({
		Name = "New Config Name",
		Placeholder = "Example: Farming",
		Default = "",
	})

	self.ProfileDropdown = Section:AddDropdown({
		Name = "Config Profile",
		Options = self:GetConfigProfiles(),
		CurrentOption = {
			self.State.Profile,
		},
		MultipleOptions = false,
		MaxVisibleOptions = 5,
		SearchPlaceholder = "Search config...",

		Callback = function(Values)
			if Values[1] then
				self:SetCurrentProfile(
					Values[1]
				)
			end
		end,
	})

	Section:AddButton({
		Name = "Create Config",
		ButtonText = "Create",

		Callback = function()
			local Profile =
				SanitizeProfileName(
					self.ProfileNameInput:Get()
				)

			local Success, Error =
				self.Window:CreateConfig(
					Profile,
					false
				)

			if not Success then
				ConfigWarn("create", Error)
				return
			end

			self.ProfileNameInput:Set("", true)
			self:RefreshProfileDropdown(Profile)
		end,
	})

	Section:AddToggle({
		Name = "Auto Load Config",
		Default = self.State.AutoLoad,

		Callback = function(Value)
			self.State.AutoLoad = Value
			self:SaveState()
		end,
	})

	Section:AddToggle({
		Name = "Auto Save Config",
		Default = self.State.AutoSave,

		Callback = function(Value)
			self.State.AutoSave = Value

			if self.Window.ConfigSettings then
				self.Window.ConfigSettings.AutoSave =
					Value
			end

			self:SaveState()

			if Value then
				local Success, Error =
					self.Window:SaveConfig(
						self.State.Profile
					)

				if not Success then
					ConfigWarn("autosave", Error)
				end
			end
		end,
	})

	Section:AddButton({
		Name = "Save Config",
		ButtonText = "Save",

		Callback = function()
			local Success, Error =
				self.Window:SaveConfig(
					self.State.Profile
				)

			if not Success then
				ConfigWarn("save", Error)
			end
		end,
	})

	Section:AddButton({
		Name = "Load Config",
		ButtonText = "Load",

		Callback = function()
			local Success, Error =
				self.Window:LoadConfig(
					self.State.Profile
				)

			if not Success then
				ConfigWarn("load", Error)
			end
		end,
	})

	Section:AddButton({
		Name = "Reset Config",
		ButtonText = "Reset",

		Callback = function()
			local Success, Error =
				self.Window:ResetConfig(false)

			if not Success then
				ConfigWarn("reset", Error)
			end
		end,
	})

	Section:AddButton({
		Name = "Delete Config",
		ButtonText = "Delete",

		Callback = function()
			local DeletedProfile =
				self.State.Profile

			local Success, Error =
				self.Window:DeleteConfig(
					DeletedProfile
				)

			if not Success then
				ConfigWarn("delete", Error)
				return
			end

			local Profiles =
				self.Window:GetConfigList()

			self:RefreshProfileDropdown(
				Profiles[1] or "Default"
			)
		end,
	})

	local ShareSection = Tab:AddSection({
		Name = "Share Config",
		Color = "Blue",
		Collapsible = true,
		DefaultCollapsed = false,
	})

	if type(ShareSection.AddInput) ~= "function" then
		function ShareSection:AddInput(...)
			return self:_add("AddInput", ...)
		end
	end

	ShareSection:AddButton({
		Name = "Copy Config",
		ButtonText = "Copy",

		Callback = function()
			local Clipboard = setclipboard or toclipboard

			if Clipboard then
				Clipboard(
					HttpService:JSONEncode(
						self.Window:GetConfigData()
					)
				)
			end
		end,
	})

	local InsertConfig

	InsertConfig = ShareSection:AddInput({
		Name = "Insert Config",
		Placeholder = "Paste config...",
		Default = "",

		Callback = function(Value)
			if Value == "" then
				return
			end

			local Success, Data = pcall(
				HttpService.JSONDecode,
				HttpService,
				Value
			)

			if Success and type(Data) == "table" then
				self.Window:_applyConfigData(Data, false)
				InsertConfig:Set("", true)
			else
				ConfigWarn("insert", "Invalid config")
			end
		end,
	})

	return Section
end

function SaveManager:LoadAutoloadConfig()
	assert(
		self.Window,
		"Call SaveManager:SetWindow first."
	)

	if self.State.AutoLoad then
		local Success, Error =
			self.Window:LoadConfig(
				self.State.Profile
			)

		if not Success then
			ConfigWarn("auto load", Error)
		end

		return Success, Error
	end

	self.Window.ConfigReady = true
	return true
end

function SaveManager:SaveOnUnload()
	if not self.Window
		or not self.State.AutoSave
	then
		return true
	end

	local Called, Success, Error = pcall(
		self.Window.SaveConfig,
		self.Window,
		self.State.Profile
	)

	if not Called or Success == false then
		ConfigWarn(
			"unload save",
			Error or Success
		)
	end

	return Called and Success ~= false, Error
end

return SaveManager
