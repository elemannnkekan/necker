local UIFactory = loadstring([================================================[
local UIFactory = (function()

    local UIFactory = {}

    local DEBUG_PROPERTIES = false

    local function apply(object, properties)
        for property, value in pairs(properties) do
            local success, message = pcall(function()
                object[property] = value
            end)
            if not success and DEBUG_PROPERTIES then
                warn(("UIFactory | %s.%s: %s"):format(object.ClassName, property, tostring(message)))
            end
        end
        return object
    end

    function UIFactory.BuildGradients()
        local objects = {}
        objects[1] = Instance.new("Folder")
        apply(objects[1], {
            ["Name"] = "Gradients",
        })
        objects[2] = Instance.new("UIGradient")
        apply(objects[2], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997))}),
            ["Enabled"] = true,
            ["Name"] = "GreenGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[2].Parent = objects[1]
        objects[3] = Instance.new("UIGradient")
        apply(objects[3], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176003, 0.847059011, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.529411972, 1, 0.976471007))}),
            ["Enabled"] = true,
            ["Name"] = "BlueGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[3].Parent = objects[1]
        objects[4] = Instance.new("UIGradient")
        apply(objects[4], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.576470971, 0.584313989, 0.658824027)), ColorSequenceKeypoint.new(1, Color3.new(0.815685987, 0.831372976, 0.93333298))}),
            ["Enabled"] = true,
            ["Name"] = "GreyGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[4].Parent = objects[1]
        objects[5] = Instance.new("UIGradient")
        apply(objects[5], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784313958, 0.239216)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941003, 0.49019599))}),
            ["Enabled"] = true,
            ["Name"] = "RedGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[5].Parent = objects[1]
        objects[6] = Instance.new("UIGradient")
        apply(objects[6], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.93333298, 0.937255025, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.886274993, 0.898038983, 0.960784018))}),
            ["Enabled"] = true,
            ["Name"] = "LightGreyGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[6].Parent = objects[1]
        objects[7] = Instance.new("UIGradient")
        apply(objects[7], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 0.415686011)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 0.600000024))}),
            ["Enabled"] = true,
            ["Name"] = "YellowGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[7].Parent = objects[1]
        objects[8] = Instance.new("UIGradient")
        apply(objects[8], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.956862986, 0.847059011)), ColorSequenceKeypoint.new(0.659169972, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.996078014, 0.988234997, 1))}),
            ["Enabled"] = true,
            ["Name"] = "PaleYellowGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -85,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[8].Parent = objects[1]
        objects[9] = Instance.new("UIGradient")
        apply(objects[9], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.858824015, 0.870588005, 0.980391979)), ColorSequenceKeypoint.new(1, Color3.new(0.996078014, 0.988234997, 1))}),
            ["Enabled"] = true,
            ["Name"] = "PalePurpleGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -85,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[9].Parent = objects[1]
        objects[10] = Instance.new("UIGradient")
        apply(objects[10], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.780391991, 1, 0.800000012)), ColorSequenceKeypoint.new(0.614853024, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Name"] = "LightGreenGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 270,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[10].Parent = objects[1]
        objects[11] = Instance.new("UIGradient")
        apply(objects[11], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.650979996, 0.545098007, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.678430974, 0.309803993, 1))}),
            ["Enabled"] = true,
            ["Name"] = "ExclusiveGradientDONTUSE",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 100,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[11].Parent = objects[1]
        objects[12] = Instance.new("UIGradient")
        apply(objects[12], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.176470995, 0.188235, 0.372548997)), ColorSequenceKeypoint.new(0.0155709004, Color3.new(0.176470995, 0.188235, 0.372548997)), ColorSequenceKeypoint.new(0.0570934005, Color3.new(0.36470601, 0.133332998, 0.568627)), ColorSequenceKeypoint.new(0.221452996, Color3.new(0.827450991, 0.243137002, 0.721569002)), ColorSequenceKeypoint.new(0.268166006, Color3.new(1, 0.411765009, 0.941175997)), ColorSequenceKeypoint.new(0.313149005, Color3.new(0.827450991, 0.243137002, 0.721569002)), ColorSequenceKeypoint.new(0.370242, Color3.new(0.686275005, 0.286274999, 0.784313977)), ColorSequenceKeypoint.new(1, Color3.new(0.176470995, 0.188235, 0.372548997))}),
            ["Enabled"] = true,
            ["Name"] = "EvolvedGradient",
            ["Offset"] = Vector2.new(0, -0.100000001),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[12].Parent = objects[1]
        objects[13] = Instance.new("UIGradient")
        apply(objects[13], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.815685987, 0.0745097995)), ColorSequenceKeypoint.new(1, Color3.new(0.992156982, 1, 0.458824009))}),
            ["Enabled"] = true,
            ["Name"] = "GoldGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 270,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[13].Parent = objects[1]
        objects[14] = Instance.new("UIGradient")
        apply(objects[14], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.325489998, 0.450980008)), ColorSequenceKeypoint.new(0.120898001, Color3.new(1, 0.752941012, 0.329412013)), ColorSequenceKeypoint.new(0.319516003, Color3.new(1, 1, 0.345097989)), ColorSequenceKeypoint.new(0.499136001, Color3.new(0.439215988, 1, 0.400000006)), ColorSequenceKeypoint.new(0.702935994, Color3.new(0.376471013, 1, 1)), ColorSequenceKeypoint.new(0.887736976, Color3.new(0.693270981, 0.436026007, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.325489998, 0.450980008))}),
            ["Enabled"] = false,
            ["Name"] = "RainbowGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -45,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.100000001, 0), NumberSequenceKeypoint.new(1, 0.100000001, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[14].Parent = objects[1]
        objects[15] = Instance.new("UIGradient")
        apply(objects[15], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.0742660016, Color3.new(0.541176021, 0.541176021, 0.541176021)), ColorSequenceKeypoint.new(0.297064006, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(0.670121014, Color3.new(0, 0, 0)), ColorSequenceKeypoint.new(0.920553029, Color3.new(0.580392003, 0.580392003, 0.580392003)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Name"] = "HiddenGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 45,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[15].Parent = objects[1]
        objects[16] = Instance.new("UIGradient")
        apply(objects[16], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(0.761658013, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.450980008, 0.450980008, 0.450980008))}),
            ["Enabled"] = true,
            ["Name"] = "ShadowGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 110,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[16].Parent = objects[1]
        return objects[1]
    end

    local buildScreenCompiled
    local buildScreenSource = [============[
return function(apply)
    return function()
        local objects = {}
        objects[1] = Instance.new("ScreenGui")
        apply(objects[1], {
            ["AutoLocalize"] = true,
            ["ClipToDeviceSafeArea"] = true,
            ["DisplayOrder"] = 0,
            ["Enabled"] = true,
            ["Name"] = "Settings",
            ["ResetOnSpawn"] = false,
            ["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.FullscreenExtension,
            ["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["ZIndexBehavior"] = Enum.ZIndexBehavior.Global,
        })
        objects[2] = Instance.new("Frame")
        apply(objects[2], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Frame",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 120),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[2].Parent = objects[1]
        objects[3] = Instance.new("UIAspectRatioConstraint")
        apply(objects[3], {
            ["AspectRatio"] = 1.25,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[3].Parent = objects[2]
        objects[4] = Instance.new("ImageLabel")
        apply(objects[4], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["Image"] = "rbxassetid://13581793331",
            ["ImageColor3"] = Color3.new(0.0784313753, 0.227450997, 0.262745112),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.949999988,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "background",
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Tile,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(0, 171, 0, 135),
            ["Visible"] = true,
            ["ZIndex"] = 2,
        })
        objects[4].Parent = objects[2]
        objects[5] = Instance.new("UICorner")
        apply(objects[5], {
            ["BottomLeftRadius"] = UDim.new(0.0500000007, 0),
            ["BottomRightRadius"] = UDim.new(0.0500000007, 0),
            ["Name"] = "UICorner",
            ["TopLeftRadius"] = UDim.new(0.0500000007, 0),
            ["TopRightRadius"] = UDim.new(0.0500000007, 0),
        })
        objects[5].Parent = objects[4]
        objects[6] = Instance.new("UIGradient")
        apply(objects[6], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Name"] = "UIGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.310086995, 0.393750012, 0), NumberSequenceKeypoint.new(0.495640993, 0.59375, 0), NumberSequenceKeypoint.new(0.738480985, 0.824999988, 0), NumberSequenceKeypoint.new(1, 1, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[6].Parent = objects[4]
        objects[7] = Instance.new("Frame")
        apply(objects[7], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "ItemsFrame",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 11, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[7].Parent = objects[2]
        objects[8] = Instance.new("ScrollingFrame")
        apply(objects[8], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticCanvasSize"] = Enum.AutomaticSize.None,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["BottomImage"] = "rbxassetid://5722186442",
            ["CanvasPosition"] = Vector2.new(0, 0),
            ["CanvasSize"] = UDim2.new(0, 0, 3, 0),
            ["ClipsDescendants"] = true,
            ["Draggable"] = false,
            ["ElasticBehavior"] = Enum.ElasticBehavior.Always,
            ["HorizontalScrollBarInset"] = Enum.ScrollBarInset.None,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["MidImage"] = "rbxassetid://5722187782",
            ["Name"] = "Items",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["ScrollBarImageColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["ScrollBarImageTransparency"] = 0,
            ["ScrollBarThickness"] = 15,
            ["ScrollingDirection"] = Enum.ScrollingDirection.Y,
            ["ScrollingEnabled"] = true,
            ["Selectable"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["TopImage"] = "rbxassetid://5722188468",
            ["VerticalScrollBarInset"] = Enum.ScrollBarInset.Always,
            ["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Right,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[8].Parent = objects[7]
        objects[9] = Instance.new("UIPadding")
        apply(objects[9], {
            ["Name"] = "UIPadding",
            ["PaddingBottom"] = UDim.new(0, 15),
            ["PaddingLeft"] = UDim.new(0, 20),
            ["PaddingRight"] = UDim.new(0, 20),
            ["PaddingTop"] = UDim.new(0, 15),
        })
        objects[9].Parent = objects[8]
        objects[10] = Instance.new("UIListLayout")
        apply(objects[10], {
            ["FillDirection"] = Enum.FillDirection.Vertical,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Left,
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Name"] = "UIListLayout",
            ["Padding"] = UDim.new(0, 20),
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
        })
        objects[10].Parent = objects[8]
        objects[11] = Instance.new("Frame")
        apply(objects[11], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 2,
            ["Name"] = "Toggle",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[11].Parent = objects[8]
        objects[12] = Instance.new("TextLabel")
        apply(objects[12], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "0776abfa-97ff-4ba9-902c-fcc0eb431068",
            ["LocalizationMatchedSourceText"] = "Toggle",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "SettingName",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.600000024, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Toggle",
            ["TextColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.AtEnd,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Left,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 7,
        })
        objects[12].Parent = objects[11]
        objects[13] = Instance.new("UITextSizeConstraint")
        apply(objects[13], {
            ["MaxTextSize"] = 60,
            ["MinTextSize"] = 10,
            ["Name"] = "UITextSizeConstraint",
        })
        objects[13].Parent = objects[12]
        objects[14] = Instance.new("Frame")
        apply(objects[14], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Toggle",
            ["Position"] = UDim2.new(1, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.400000006, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[14].Parent = objects[11]
        objects[15] = Instance.new("ImageButton")
        apply(objects[15], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoButtonColor"] = true,
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Modal"] = false,
            ["Name"] = "Button",
            ["Position"] = UDim2.new(0.300000012, 0, 0.5, 0),
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = true,
            ["Selected"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.600000024, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["Style"] = Enum.ButtonStyle.Custom,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 2,
        })
        objects[15].Parent = objects[14]
        objects[16] = Instance.new("UIGradient")
        apply(objects[16], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997))}),
            ["Enabled"] = true,
            ["Name"] = "Green Gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[16].Parent = objects[15]
        objects[17] = Instance.new("TextLabel")
        apply(objects[17], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "6e94908b-0de9-48ca-a741-407f0afd8af5",
            ["LocalizationMatchedSourceText"] = "On",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "TextLabel",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "On",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 6,
        })
        objects[17].Parent = objects[15]
        objects[18] = Instance.new("UIStroke")
        apply(objects[18], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[18].Parent = objects[17]
        objects[19] = Instance.new("Frame")
        apply(objects[19], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Bar",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 2),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, -18, 1, -24),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[19].Parent = objects[14]
        objects[20] = Instance.new("UIGradient")
        apply(objects[20], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.76078397, 0.752941012, 0.862744987)), ColorSequenceKeypoint.new(1, Color3.new(0.580392003, 0.568627, 0.654901981))}),
            ["Enabled"] = true,
            ["Name"] = "Tier Gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[20].Parent = objects[19]
        objects[21] = Instance.new("UIStroke")
        apply(objects[21], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0.247058839, 0.24313727, 0.278431386),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Round,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 3.86851859,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[21].Parent = objects[19]
        objects[22] = Instance.new("UICorner")
        apply(objects[22], {
            ["BottomLeftRadius"] = UDim.new(0.125, 0),
            ["BottomRightRadius"] = UDim.new(0.125, 0),
            ["Name"] = "UICorner",
            ["TopLeftRadius"] = UDim.new(0.125, 0),
            ["TopRightRadius"] = UDim.new(0.125, 0),
        })
        objects[22].Parent = objects[19]
        objects[23] = Instance.new("UIAspectRatioConstraint")
        apply(objects[23], {
            ["AspectRatio"] = 6,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[23].Parent = objects[11]
        objects[24] = Instance.new("Frame")
        apply(objects[24], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 3,
            ["Name"] = "Slider",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[24].Parent = objects[8]
        objects[25] = Instance.new("TextLabel")
        apply(objects[25], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "6caa1e3f-0c07-43d0-8b46-efcad0aee0ea",
            ["LocalizationMatchedSourceText"] = "Slider",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "SettingName",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.600000024, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Slider",
            ["TextColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.AtEnd,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Left,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 7,
        })
        objects[25].Parent = objects[24]
        objects[26] = Instance.new("UITextSizeConstraint")
        apply(objects[26], {
            ["MaxTextSize"] = 60,
            ["MinTextSize"] = 10,
            ["Name"] = "UITextSizeConstraint",
        })
        objects[26].Parent = objects[25]
        objects[27] = Instance.new("Frame")
        apply(objects[27], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Slider",
            ["Position"] = UDim2.new(1, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.400000006, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[27].Parent = objects[24]
        objects[28] = Instance.new("Frame")
        apply(objects[28], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Bar",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, -18, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 2,
        })
        objects[28].Parent = objects[27]
        objects[29] = Instance.new("UIGradient")
        apply(objects[29], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.76078397, 0.752941012, 0.862744987)), ColorSequenceKeypoint.new(1, Color3.new(0.580392003, 0.568627, 0.654901981))}),
            ["Enabled"] = true,
            ["Name"] = "Tier Gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[29].Parent = objects[28]
        objects[30] = Instance.new("UIStroke")
        apply(objects[30], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0.247058839, 0.24313727, 0.278431386),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Round,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 3.86851859,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[30].Parent = objects[28]
        objects[31] = Instance.new("UICorner")
        apply(objects[31], {
            ["BottomLeftRadius"] = UDim.new(0.200000003, 0),
            ["BottomRightRadius"] = UDim.new(0.200000003, 0),
            ["Name"] = "UICorner",
            ["TopLeftRadius"] = UDim.new(0.200000003, 0),
            ["TopRightRadius"] = UDim.new(0.200000003, 0),
        })
        objects[31].Parent = objects[28]
        objects[32] = Instance.new("ImageButton")
        apply(objects[32], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoButtonColor"] = true,
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Modal"] = false,
            ["Name"] = "Button",
            ["Position"] = UDim2.new(0.0500000007, 0, 0.5, 0),
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = true,
            ["Selected"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.324999988, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["Style"] = Enum.ButtonStyle.Custom,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 6,
        })
        objects[32].Parent = objects[27]
        objects[33] = Instance.new("UIGradient")
        apply(objects[33], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997))}),
            ["Enabled"] = true,
            ["Name"] = "green gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[33].Parent = objects[32]
        objects[34] = Instance.new("UIAspectRatioConstraint")
        apply(objects[34], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[34].Parent = objects[32]
        objects[35] = Instance.new("UIAspectRatioConstraint")
        apply(objects[35], {
            ["AspectRatio"] = 6,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[35].Parent = objects[24]
        objects[36] = Instance.new("TextLabel")
        apply(objects[36], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 1,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "9c17516c-9c52-4913-aacf-418767d697a9",
            ["LocalizationMatchedSourceText"] = "Title Lorem Ipsum",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "Title",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(-0.00133324822, 0, 0.715533912, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0, 50),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Title Lorem Ipsum",
            ["TextColor3"] = Color3.new(0.231372565, 0.694117665, 0.988235354),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = false,
            ["ZIndex"] = 5,
        })
        objects[36].Parent = objects[8]
        objects[37] = Instance.new("UIGradient")
        apply(objects[37], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.215685993, 0.764706016, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.368627012, 0.937255025, 1))}),
            ["Enabled"] = true,
            ["Name"] = "UIGradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[37].Parent = objects[36]
        objects[38] = Instance.new("Frame")
        apply(objects[38], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(0, 0, 0),
            ["BackgroundTransparency"] = 0.75,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 4,
            ["Name"] = "Locked",
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 10,
        })
        objects[38].Parent = objects[8]
        objects[39] = Instance.new("Frame")
        apply(objects[39], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "PriceFrame",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.400000006, 10),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[39].Parent = objects[38]
        objects[40] = Instance.new("TextLabel")
        apply(objects[40], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "74800bcf-fca4-49d5-876a-94c3f96d2086",
            ["LocalizationMatchedSourceText"] = "Unlock",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "Label",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0, 0, 0.100000001, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.5, 0, 0.800000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Unlock",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Left,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 10,
        })
        objects[40].Parent = objects[39]
        objects[41] = Instance.new("UIStroke")
        apply(objects[41], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[41].Parent = objects[40]
        objects[42] = Instance.new("ImageButton")
        apply(objects[42], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(1, 0.5),
            ["AutoButtonColor"] = true,
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 2,
            ["Modal"] = false,
            ["Name"] = "Price",
            ["Position"] = UDim2.new(1, 0, 0.5, 0),
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = true,
            ["Selected"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 1.20000005, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["Style"] = Enum.ButtonStyle.Custom,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 10,
        })
        objects[42].Parent = objects[39]
        objects[43] = Instance.new("UIGradient")
        apply(objects[43], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997))}),
            ["Enabled"] = true,
            ["Name"] = "green gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[43].Parent = objects[42]
        objects[44] = Instance.new("UIListLayout")
        apply(objects[44], {
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Name"] = "UIListLayout",
            ["Padding"] = UDim.new(0, 0),
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Center,
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
        })
        objects[44].Parent = objects[42]
        objects[45] = Instance.new("UIPadding")
        apply(objects[45], {
            ["Name"] = "UIPadding",
            ["PaddingBottom"] = UDim.new(0.100000001, 0),
            ["PaddingLeft"] = UDim.new(0, 15),
            ["PaddingRight"] = UDim.new(0, 6),
            ["PaddingTop"] = UDim.new(0.100000001, 0),
        })
        objects[45].Parent = objects[42]
        objects[46] = Instance.new("ImageLabel")
        apply(objects[46], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["Image"] = "rbxassetid://6922231684",
            ["ImageColor3"] = Color3.new(0.129411772, 0.203921571, 0.109803922),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "RobuxIcon",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.699999988, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 10,
        })
        objects[46].Parent = objects[42]
        objects[47] = Instance.new("UIAspectRatioConstraint")
        apply(objects[47], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[47].Parent = objects[46]
        objects[48] = Instance.new("TextLabel")
        apply(objects[48], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "Robux",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 0.800000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "400",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 50,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 10,
        })
        objects[48].Parent = objects[42]
        objects[49] = Instance.new("UIStroke")
        apply(objects[49], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0.200000003,
            ["ZIndex"] = 1,
        })
        objects[49].Parent = objects[48]
        objects[50] = Instance.new("UICorner")
        apply(objects[50], {
            ["BottomLeftRadius"] = UDim.new(0.125, 0),
            ["BottomRightRadius"] = UDim.new(0.125, 0),
            ["Name"] = "UICorner",
            ["TopLeftRadius"] = UDim.new(0.125, 0),
            ["TopRightRadius"] = UDim.new(0.125, 0),
        })
        objects[50].Parent = objects[38]
        objects[51] = Instance.new("UIStroke")
        apply(objects[51], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Round,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[51].Parent = objects[38]
        objects[52] = Instance.new("UIAspectRatioConstraint")
        apply(objects[52], {
            ["AspectRatio"] = 3.25,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[52].Parent = objects[38]
        objects[53] = Instance.new("Frame")
        apply(objects[53], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 2,
            ["Name"] = "Selector",
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[53].Parent = objects[8]
        objects[54] = Instance.new("TextLabel")
        apply(objects[54], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "450c5597-1a74-4b3d-ab18-c055d45d9057",
            ["LocalizationMatchedSourceText"] = "Selector",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "SettingName",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.600000024, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Selector",
            ["TextColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.AtEnd,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Left,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 7,
        })
        objects[54].Parent = objects[53]
        objects[55] = Instance.new("UITextSizeConstraint")
        apply(objects[55], {
            ["MaxTextSize"] = 60,
            ["MinTextSize"] = 10,
            ["Name"] = "UITextSizeConstraint",
        })
        objects[55].Parent = objects[54]
        objects[56] = Instance.new("Frame")
        apply(objects[56], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Toggle",
            ["Position"] = UDim2.new(1, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.400000006, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 1,
        })
        objects[56].Parent = objects[53]
        objects[57] = Instance.new("ImageButton")
        apply(objects[57], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoButtonColor"] = true,
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Modal"] = false,
            ["Name"] = "Button",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 2),
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = true,
            ["Selected"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["Style"] = Enum.ButtonStyle.Custom,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 2,
        })
        objects[57].Parent = objects[56]
        objects[58] = Instance.new("UIGradient")
        apply(objects[58], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997))}),
            ["Enabled"] = true,
            ["Name"] = "Green Gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[58].Parent = objects[57]
        objects[59] = Instance.new("TextLabel")
        apply(objects[59], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "6f2711ba-0a22-42e8-ba13-e9b8e7a4532b",
            ["LocalizationMatchedSourceText"] = "Option",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "TextLabel",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Option",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 6,
        })
        objects[59].Parent = objects[57]
        objects[60] = Instance.new("UIStroke")
        apply(objects[60], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[60].Parent = objects[59]
        objects[61] = Instance.new("UIAspectRatioConstraint")
        apply(objects[61], {
            ["AspectRatio"] = 6,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[61].Parent = objects[53]
        objects[62] = Instance.new("UICorner")
        apply(objects[62], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
        })
        objects[62].Parent = objects[2]
        objects[63] = Instance.new("ImageLabel")
        apply(objects[63], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["Image"] = "rbxassetid://14001321443",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.75,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "shadow",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 35, 1, 35),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(50, 50, 150, 150),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = -1,
        })
        objects[63].Parent = objects[2]
        objects[64] = Instance.new("UIStroke")
        apply(objects[64], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Round,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 6.76990747,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[64].Parent = objects[2]
        objects[65] = Instance.new("ImageButton")
        apply(objects[65], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoButtonColor"] = true,
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Modal"] = false,
            ["Name"] = "Close",
            ["Position"] = UDim2.new(0.990999997, 0, 0, 0),
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = false,
            ["Selected"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.0599999987, 45),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["Style"] = Enum.ButtonStyle.Custom,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 50,
        })
        objects[65].Parent = objects[2]
        objects[66] = Instance.new("UIAspectRatioConstraint")
        apply(objects[66], {
            ["AspectRatio"] = 1.04999995,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[66].Parent = objects[65]
        objects[67] = Instance.new("UIGradient")
        apply(objects[67], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784313958, 0.239216)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941003, 0.49019599))}),
            ["Enabled"] = true,
            ["Name"] = "red gradient",
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
        })
        objects[67].Parent = objects[65]
        objects[68] = Instance.new("TextLabel")
        apply(objects[68], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "TextLabel",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "X",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 50,
        })
        objects[68].Parent = objects[65]
        objects[69] = Instance.new("UIStroke")
        apply(objects[69], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[69].Parent = objects[68]
        objects[70] = Instance.new("ImageLabel")
        apply(objects[70], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["Image"] = "rbxassetid://14001321443",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.75,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "shadow",
            ["Position"] = UDim2.new(0.5, 0, 0.600000024, 0),
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1.10000002, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(50, 50, 150, 150),
            ["SliceScale"] = 0.75,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 49,
        })
        objects[70].Parent = objects[65]
        objects[71] = Instance.new("UIScale")
        apply(objects[71], {
            ["Name"] = "ButtonUIScale",
            ["Scale"] = 1,
        })
        objects[71].Parent = objects[65]
        objects[72] = Instance.new("TextLabel")
        apply(objects[72], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.75),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "880c8a4e-3dad-49b1-8df6-f137788d475a",
            ["LocalizationMatchedSourceText"] = "Settings!",
            ["MaxVisibleGraphemes"] = -1,
            ["Name"] = "Title",
            ["OpenTypeFeatures"] = "",
            ["Position"] = UDim2.new(0.371129811, 0, 0.011627892, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.607625186, 0, 0.116388664, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "Settings!",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Left,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 50,
        })
        objects[72].Parent = objects[2]
        objects[73] = Instance.new("UIStroke")
        apply(objects[73], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[73].Parent = objects[72]
        objects[74] = Instance.new("ImageLabel")
        apply(objects[74], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["Image"] = "rbxassetid://15048277045",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "SideIcon",
            ["Position"] = UDim2.new(0.00985540263, 0, -0.0170692652, 0),
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["Rotation"] = 0,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.145381302, 8, 0.189354435, 8),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Visible"] = true,
            ["ZIndex"] = 49,
        })
        objects[74].Parent = objects[2]
        objects[75] = Instance.new("Frame")
        apply(objects[75], {
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0.5),
            ["AutoLocalize"] = true,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Name"] = "Search",
            ["Position"] = UDim2.new(0.918, 0, -0.01, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.298, 0, 0.07, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Visible"] = true,
            ["ZIndex"] = 50,
        })
        objects[75].Parent = objects[2]
        objects[76] = Instance.new("TextBox")
        apply(objects[76], {
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutoLocalize"] = false,
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClearTextOnFocus"] = true,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["MultiLine"] = false,
            ["Name"] = "Input",
            ["OpenTypeFeatures"] = "",
            ["PlaceholderColor3"] = Color3.new(0.686274529, 0.686274529, 0.686274529),
            ["PlaceholderText"] = "Search",
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["RichText"] = false,
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["SelectionOrder"] = 0,
            ["ShowNativeInput"] = true,
            ["Size"] = UDim2.new(0.949999988, 0, 0.850000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Text"] = "",
            ["TextColor3"] = Color3.new(0.117647067, 0.117647067, 0.117647067),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextEditable"] = true,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Right,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Visible"] = true,
            ["ZIndex"] = 51,
        })
        objects[76].Parent = objects[75]
        objects[77] = Instance.new("UIStroke")
        apply(objects[77], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0.164705887, 0.168627456, 0.192156881),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Round,
            ["Name"] = "UIStroke",
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 3.86851859,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
        })
        objects[77].Parent = objects[75]
        objects[78] = Instance.new("UICorner")
        apply(objects[78], {
            ["BottomLeftRadius"] = UDim.new(0.449999988, 0),
            ["BottomRightRadius"] = UDim.new(0.449999988, 0),
            ["Name"] = "UICorner",
            ["TopLeftRadius"] = UDim.new(0.449999988, 0),
            ["TopRightRadius"] = UDim.new(0.449999988, 0),
        })
        objects[78].Parent = objects[75]
        objects[79] = Instance.new("UIPadding")
        apply(objects[79], {
            ["Name"] = "UIPadding",
            ["PaddingBottom"] = UDim.new(0, 0),
            ["PaddingLeft"] = UDim.new(0, 0),
            ["PaddingRight"] = UDim.new(0, 0),
            ["PaddingTop"] = UDim.new(0, -12),
        })
        objects[79].Parent = objects[1]
        return objects[1]
    end
end
]============]

    function UIFactory.BuildScreen()
        if not buildScreenCompiled then
            local compiler = loadstring or load
            assert(type(compiler) == "function", "PlantVsCoinsUI: loadstring is required only when the native Settings UI asset is unavailable")
            local chunk, compileError = compiler(buildScreenSource)
            assert(chunk, compileError)
            buildScreenCompiled = chunk()(apply)
            buildScreenSource = nil
        end
        return buildScreenCompiled()
    end

    return UIFactory
end)()

return UIFactory

]================================================])()
local GUIFX = loadstring([================================================[
local GUIFX = (function()
    local TweenService = game:GetService("TweenService")

    local attached = setmetatable({}, {__mode = "k"})

    local function playTween(scaleObject, target, duration, easingStyle)
        TweenService:Create(
            scaleObject,
            TweenInfo.new(duration, easingStyle, Enum.EasingDirection.Out),
            {Scale = target}
        ):Play()
    end

    local function ButtonFX(button, hoverScale)
        if attached[button] then
            return attached[button]
        end

        hoverScale = hoverScale or 1.05

        local scaleObject = button:FindFirstChildOfClass("UIScale")
        if not scaleObject then
            scaleObject = Instance.new("UIScale")
            scaleObject.Name = "ButtonUIScale"
            scaleObject.Parent = button
        end

        local connections = {}
        local pressed = false
        local hovering = false
        local stopped = false

        local function down()
            if pressed or not button.Active then
                return
            end
            pressed = true
            hovering = false
            playTween(scaleObject, 0.9, 0.065, Enum.EasingStyle.Exponential)
        end

        local function up()
            if not pressed then
                return
            end
            pressed = false
            playTween(scaleObject, 1, 0.25, Enum.EasingStyle.Circular)
        end

        local function mouseEnter()
            if hovering or pressed or not button.Active then
                return
            end
            hovering = true
            playTween(scaleObject, hoverScale, 0.05, Enum.EasingStyle.Circular)
        end

        local function mouseLeave()
            if not hovering then
                return
            end
            hovering = false
            if not pressed then
                playTween(scaleObject, 1, 0.035, Enum.EasingStyle.Exponential)
            end
        end

        table.insert(connections, button.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1
                or inputObject.UserInputType == Enum.UserInputType.Touch
                or inputObject.KeyCode == Enum.KeyCode.ButtonA then
                down()
            end
        end))

        table.insert(connections, button.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1
                or inputObject.UserInputType == Enum.UserInputType.Touch
                or inputObject.KeyCode == Enum.KeyCode.ButtonA then
                up()
            end
        end))

        table.insert(connections, button.MouseEnter:Connect(mouseEnter))
        table.insert(connections, button.MouseLeave:Connect(mouseLeave))

        local function stop()
            if stopped then
                return
            end
            stopped = true
            for _, connection in ipairs(connections) do
                connection:Disconnect()
            end
            if scaleObject.Parent then
                scaleObject.Scale = 1
            end
            attached[button] = nil
        end

        table.insert(connections, button.Destroying:Connect(stop))
        attached[button] = stop
        return stop
    end

    return {
        ButtonFX = ButtonFX,
    }
end)()

return GUIFX

]================================================])()
local CreateLibrary = loadstring([================================================[
return function(UIFactory, GUIFX)
local Library = (function(UIFactory, GUIFX)
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local HttpService = game:GetService("HttpService")
    local Players = game:GetService("Players")
    local SoundService = game:GetService("SoundService")
    local CoreGui = game:GetService("CoreGui")
    local StarterGui = game:GetService("StarterGui")

    local INVENTORY_SELECT_IMAGE = "rbxassetid://13744994506"
    local INVENTORY_TAB_ICONS = {
        "rbxassetid://15057347827",
        "rbxassetid://15057347941",
        "rbxassetid://15057347575",
        "rbxassetid://15057348192",
        "rbxassetid://15057348077",
        "rbxassetid://15057348341",
        "rbxassetid://16481507988",
        "rbxassetid://15057348474",
    }

    local Gradients = UIFactory.BuildGradients()

    local Library = {}
    Library.__index = Library

    local function clearGradient(object)
        for _, child in ipairs(object:GetChildren()) do
            if child:IsA("UIGradient") then
                child:Destroy()
            end
        end
    end

    local SECTION_GRADIENT_ALIASES = {
        green = "GreenGradient",
        blue = "BlueGradient",
        grey = "GreyGradient",
        gray = "GreyGradient",
        red = "RedGradient",
        lightgrey = "LightGreyGradient",
        lightgray = "LightGreyGradient",
        yellow = "YellowGradient",
        paleyellow = "PaleYellowGradient",
        purple = "PalePurpleGradient",
        palepurple = "PalePurpleGradient",
        lightgreen = "LightGreenGradient",
        evolved = "EvolvedGradient",
        gold = "GoldGradient",
        rainbow = "RainbowGradient",
        hidden = "HiddenGradient",
        shadow = "ShadowGradient",
    }

    local function applySectionColor(label, color)
        if color == nil then
            return
        end

        if typeof(color) == "Color3" then
            clearGradient(label)
            label.TextColor3 = color
            return
        end

        local requested = tostring(color)
        local normalized = string.lower(requested):gsub("[%s_%-]", "")
        if normalized == "" or normalized == "default" then
            return
        end

        local gradientName = SECTION_GRADIENT_ALIASES[normalized]
        local source = gradientName and Gradients:FindFirstChild(gradientName)

        if not source then
            source = Gradients:FindFirstChild(requested)
        end

        if not source or not source:IsA("UIGradient") then
            warn("Unknown section color '" .. requested .. "'; keeping the default section style")
            return
        end

        clearGradient(label)
        label.TextColor3 = Color3.new(1, 1, 1)
        source:Clone().Parent = label
    end

    local function setToggleVisual(button, value, animate)
        local target = value and UDim2.fromScale(0.7, 0.5) or UDim2.fromScale(0.3, 0.5)
        if animate then
            TweenService:Create(
                button,
                TweenInfo.new(0.08, Enum.EasingStyle.Back, Enum.EasingDirection.In),
                {Position = target}
            ):Play()
        else
            button.Position = target
        end

        local label = button:FindFirstChild("TextLabel")
        if label then
            label.Text = value and "On" or "Off"
        end

        clearGradient(button)
        local source = Gradients:FindFirstChild(value and "GreenGradient" or "RedGradient")
        if source then
            source:Clone().Parent = button
        end
    end

    local function normalize(text)
        return string.lower(tostring(text or "")):gsub("%s+", " ")
    end

    local function copyValue(value, seen)
        if type(value) ~= "table" then
            return value
        end
        seen = seen or {}
        if seen[value] then
            return seen[value]
        end
        local clone = {}
        seen[value] = clone
        for key, child in pairs(value) do
            clone[copyValue(key, seen)] = copyValue(child, seen)
        end
        return clone
    end

    local function valuesEqual(left, right)
        local okLeft, encodedLeft = pcall(HttpService.JSONEncode, HttpService, left)
        local okRight, encodedRight = pcall(HttpService.JSONEncode, HttpService, right)
        return okLeft and okRight and encodedLeft == encodedRight
    end

    local AUTO_ADVANCE_ICON = "rbxassetid://17638332252"
    local AUTO_ADVANCE_OPEN_SOUND = "rbxassetid://15490882908"
    local AUTO_ADVANCE_CLOSE_SOUND = "rbxassetid://15490882838"

    local function createStatusBadge(name, gradientColors)
        local badge = Instance.new("Frame")
        badge.Name = name
        badge.AnchorPoint = Vector2.new(0.5, 0.5)
        badge.BackgroundColor3 = Color3.new(1, 1, 1)
        badge.BorderSizePixel = 0
        badge.Position = UDim2.new(0.800000012, 0, 0.200000003, 0)
        badge.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
        badge.ZIndex = 15

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(1, 0)
        corner.Parent = badge

        local aspect = Instance.new("UIAspectRatioConstraint")
        aspect.AspectRatio = 1
        aspect.Parent = badge

        local gradient = Instance.new("UIGradient")
        gradient.Name = name == "StatusOn" and "green gradient" or "red gradient"
        gradient.Color = ColorSequence.new(gradientColors)
        gradient.Rotation = -90
        gradient.Parent = badge

        local stroke = Instance.new("UIStroke")
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        stroke.Color = Color3.new(0.082352944, 0.137254909, 0.184313729)
        stroke.LineJoinMode = Enum.LineJoinMode.Round
        stroke.Thickness = 3.626736164
        stroke.Parent = badge

        return badge
    end

    function Library:_updateLauncherStatus()
        local isOpen = self.Frame and self.Frame.Visible == true
        if self.LauncherStatusOn then
            self.LauncherStatusOn.Visible = isOpen
        end
        if self.LauncherStatusOff then
            self.LauncherStatusOff.Visible = not isOpen
        end
    end

    function Library:_playLauncherSound(isOpen)
        local settings = self.LauncherSettings
        if not settings or settings.SoundEnabled == false then
            return
        end

        local soundId = isOpen and settings.OpenSoundId or settings.CloseSoundId
        if type(soundId) == "number" then
            soundId = "rbxassetid://" .. tostring(soundId)
        end
        if type(soundId) ~= "string" or soundId == "" then
            return
        end

        local sound = self.LauncherSound
        if not sound then
            sound = Instance.new("Sound")
            sound.Name = "AutoAdvanceToggleSound"
            sound.Parent = SoundService
            self.LauncherSound = sound
        end
        sound.SoundId = soundId
        sound.Volume = tonumber(settings.SoundVolume) or 0.5
        sound.PlaybackSpeed = tonumber(settings.SoundPlaybackSpeed) or 1
        sound:Play()
    end

    function Library:SetVisible(visible, silent)
        visible = visible == true
        if not visible and self.ActiveDropdownClose then
            self.ActiveDropdownClose(true)
        end
        self.Frame.Visible = visible
        self:_updateLauncherStatus()
        if not silent then
            self:_playLauncherSound(visible)
            if self.ConfigReady and self.ConfigOnline and not self.ConfigSaveBusy then
                task.spawn(function()
                    self:SaveConfig()
                end)
            end
        end
        return visible
    end

    function Library:IsVisible()
        return self.Frame.Visible == true
    end

    function Library:ToggleVisible(silent)
        return self:SetVisible(not self:IsVisible(), silent)
    end

    function Library:SetLauncherVisible(visible)
        if self.LauncherButton then
            self.LauncherButton.Visible = visible == true
        end
    end

    function Library:ConfigureLauncher(launcherSettings)
        if launcherSettings == false then
            launcherSettings = {Enabled = false}
        elseif type(launcherSettings) ~= "table" then
            launcherSettings = {}
        end

        if self.LauncherButton then
            self.LauncherButton:Destroy()
            self.LauncherButton = nil
            self.LauncherStatusOn = nil
            self.LauncherStatusOff = nil
        end

        self.LauncherSettings = {
            Enabled = launcherSettings.Enabled ~= false,
            Visible = launcherSettings.Visible ~= false,
            Icon = launcherSettings.Icon or AUTO_ADVANCE_ICON,
            IconColor = launcherSettings.IconColor or Color3.new(1, 1, 1),
            IconTransparency = tonumber(launcherSettings.IconTransparency) or 0,
            Position = launcherSettings.Position or UDim2.new(0, 24, 0.5, 0),
            Size = launcherSettings.Size or UDim2.fromOffset(64, 64),
            AnchorPoint = launcherSettings.AnchorPoint or Vector2.new(0, 0.5),
            ZIndex = tonumber(launcherSettings.ZIndex) or 50,
            HoverScale = tonumber(launcherSettings.HoverScale) or 1.07,
            StartOpen = launcherSettings.StartOpen ~= false,
            SaveState = launcherSettings.SaveState ~= false,
            Flag = tostring(launcherSettings.Flag or "WindowVisible"),
            Tooltip = tostring(launcherSettings.Tooltip or "Open / Close UI"),
            SoundEnabled = launcherSettings.SoundEnabled ~= false,
            OpenSoundId = launcherSettings.OpenSoundId or AUTO_ADVANCE_OPEN_SOUND,
            CloseSoundId = launcherSettings.CloseSoundId or AUTO_ADVANCE_CLOSE_SOUND,
            SoundVolume = tonumber(launcherSettings.SoundVolume) or 0.5,
            SoundPlaybackSpeed = tonumber(launcherSettings.SoundPlaybackSpeed) or 1,
        }

        local settings = self.LauncherSettings
        if not settings.Enabled then
            self:SetVisible(settings.StartOpen, true)
            return nil
        end

        local button = Instance.new("TextButton")
        button.Name = "AutoAdvance"
        button.Active = true
        button.AutoButtonColor = false
        button.AnchorPoint = settings.AnchorPoint
        button.BackgroundColor3 = Color3.new(0, 0, 0)
        button.BackgroundTransparency = 1
        button.BorderSizePixel = 0
        button.Position = settings.Position
        button.Size = settings.Size
        button.Text = ""
        button.Visible = settings.Visible
        button.ZIndex = settings.ZIndex
        button:SetAttribute("Tooltip", settings.Tooltip)
        button.Parent = self.Screen

        local thumbnail = Instance.new("ImageLabel")
        thumbnail.Name = "Thumbnail"
        thumbnail.Active = false
        thumbnail.AnchorPoint = Vector2.new(0.5, 0.5)
        thumbnail.BackgroundColor3 = Color3.new(1, 1, 1)
        thumbnail.BackgroundTransparency = 1
        thumbnail.BorderSizePixel = 0
        thumbnail.Image = tostring(settings.Icon)
        thumbnail.ImageColor3 = settings.IconColor
        thumbnail.ImageTransparency = settings.IconTransparency
        thumbnail.Position = UDim2.fromScale(0.5, 0.5)
        thumbnail.ScaleType = Enum.ScaleType.Fit
        thumbnail.Size = UDim2.fromScale(1, 1)
        thumbnail.ZIndex = settings.ZIndex + 3
        thumbnail.Parent = button

        local statusOn = createStatusBadge("StatusOn", {
            ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)),
            ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997)),
        })
        statusOn.ZIndex = settings.ZIndex + 5
        statusOn.Parent = button

        local statusOff = createStatusBadge("StatusOff", {
            ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784314, 0.239216)),
            ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941003, 0.49019599)),
        })
        statusOff.ZIndex = settings.ZIndex + 5
        statusOff.Parent = button

        local aspect = Instance.new("UIAspectRatioConstraint")
        aspect.AspectRatio = 1
        aspect.Parent = button

        local scale = Instance.new("UIScale")
        scale.Name = "ButtonUIScale"
        scale.Scale = 1
        scale.Parent = button

        self.LauncherButton = button
        self.LauncherStatusOn = statusOn
        self.LauncherStatusOff = statusOff

        GUIFX.ButtonFX(button, settings.HoverScale)
        button.Activated:Connect(function()
            self:ToggleVisible(false)
        end)

        self.LauncherControl = {
            Get = function()
                return self:IsVisible()
            end,
            Set = function(_, value)
                self:SetVisible(value == true, true)
            end,
        }

        self:SetVisible(settings.StartOpen, true)
        if settings.SaveState and settings.Flag ~= "" then
            self:BindConfig(settings.Flag, self.LauncherControl, settings.StartOpen)
        end
        return button
    end

    local INVENTORY_PAGE_LEFT_IMAGE = "rbxassetid://15862260433"
    local INVENTORY_PAGE_RIGHT_IMAGE = "rbxassetid://15862241934"

    local function normalizedPageLimit(value)
        local number = tonumber(value)
        if number == nil or number <= 0 or number == math.huge then
            return math.huge
        end
        return math.max(1, math.floor(number))
    end

    function Library:_setPageNavigatorSpace(enabled)
        local itemsFrame = self.ItemsFrame
        local original = self.ItemsFrameOriginalSize
        if not itemsFrame or not original then
            return
        end

        local reserve = enabled and 38 or 0
        itemsFrame.Size = UDim2.new(
            original.X.Scale,
            original.X.Offset,
            original.Y.Scale,
            original.Y.Offset - reserve
        )
    end

    function Library:_ensurePageNavigator()
        if self.PageNavigator then
            return self.PageNavigator
        end

        local navigator = Instance.new("Frame")
        navigator.Name = "PageNavigator"
        navigator.Active = false
        navigator.AnchorPoint = Vector2.new(0.5, 1)
        navigator.BackgroundColor3 = Color3.new(1, 1, 1)
        navigator.BackgroundTransparency = 0
        navigator.BorderSizePixel = 0
        navigator.Position = UDim2.new(0.5, 0, 1, -5)
        navigator.Size = UDim2.fromOffset(126, 28)
        navigator.Visible = false
        navigator.ZIndex = 60
        navigator.Parent = self.Frame

        local navigatorAspect = Instance.new("UIAspectRatioConstraint")
        navigatorAspect.Name = "UIAspectRatioConstraint"
        navigatorAspect.AspectRatio = 4.5
        navigatorAspect.Parent = navigator

        local navigatorCorner = Instance.new("UICorner")
        navigatorCorner.Name = "UICorner"
        navigatorCorner.CornerRadius = UDim.new(0.45, 0)
        navigatorCorner.Parent = navigator

        local navigatorStroke = Instance.new("UIStroke")
        navigatorStroke.Name = "UIStroke"
        navigatorStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        navigatorStroke.Color = Color3.new(0.164705887, 0.168627456, 0.192156881)
        navigatorStroke.LineJoinMode = Enum.LineJoinMode.Round
        navigatorStroke.Thickness = 3.868518591
        navigatorStroke.Parent = navigator

        local layout = Instance.new("UIListLayout")
        layout.Name = "UIListLayout"
        layout.FillDirection = Enum.FillDirection.Horizontal
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        layout.VerticalAlignment = Enum.VerticalAlignment.Center
        layout.Padding = UDim.new(0, 3)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = navigator

        local function createArrow(name, layoutOrder, imageId)
            local button = Instance.new("TextButton")
            button.Name = name
            button.Active = true
            button.AutoButtonColor = true
            button.BackgroundTransparency = 1
            button.BorderSizePixel = 0
            button.LayoutOrder = layoutOrder
            button.Size = UDim2.fromScale(1, 1)
            button.Text = ""
            button.ZIndex = 61
            button.Parent = navigator

            local aspect = Instance.new("UIAspectRatioConstraint")
            aspect.Name = "UIAspectRatioConstraint"
            aspect.AspectRatio = 1
            aspect.Parent = button

            local image = Instance.new("ImageLabel")
            image.Name = "ImageLabel"
            image.AnchorPoint = Vector2.new(0.5, 0.5)
            image.BackgroundTransparency = 1
            image.Image = imageId
            image.ImageColor3 = Color3.new(0.149019614, 0.149019614, 0.149019614)
            image.Position = UDim2.fromScale(0.5, 0.5)
            image.ScaleType = Enum.ScaleType.Fit
            image.Size = UDim2.new(1, 0, 0.8, 0)
            image.ZIndex = 62
            image.Parent = button

            GUIFX.ButtonFX(button, 1.08)
            return button, image
        end

        local left, leftImage = createArrow("Left", 2, INVENTORY_PAGE_LEFT_IMAGE)

        local pageNumber = Instance.new("TextLabel")
        pageNumber.Name = "PageNumber"
        pageNumber.Active = false
        pageNumber.AnchorPoint = Vector2.new(0.5, 0.5)
        pageNumber.BackgroundTransparency = 1
        pageNumber.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        pageNumber.LayoutOrder = 3
        pageNumber.Size = UDim2.new(0.375, 0, 1, 0)
        pageNumber.Text = "1 / 1"
        pageNumber.TextColor3 = Color3.new(1, 1, 1)
        pageNumber.TextScaled = true
        pageNumber.TextWrapped = true
        pageNumber.ZIndex = 62
        pageNumber.Parent = navigator

        local pageStroke = Instance.new("UIStroke")
        pageStroke.Name = "UIStroke"
        pageStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        pageStroke.Color = Color3.new(0.164705887, 0.168627456, 0.192156866)
        pageStroke.LineJoinMode = Enum.LineJoinMode.Round
        pageStroke.Thickness = 2.901388884
        pageStroke.Parent = pageNumber

        local right, rightImage = createArrow("Right", 4, INVENTORY_PAGE_RIGHT_IMAGE)

        left.Activated:Connect(function()
            self:PreviousPage()
        end)
        right.Activated:Connect(function()
            self:NextPage()
        end)

        self.PageNavigator = navigator
        self.PageNumberLabel = pageNumber
        self.PageLeftButton = left
        self.PageRightButton = right
        self.PageLeftImage = leftImage
        self.PageRightImage = rightImage
        return navigator
    end

    function Library:_currentPageFor(tabName)
        tabName = tabName or self.ActiveTab or "__default"
        local page = tonumber(self.PageByTab[tabName]) or 1
        return math.max(1, math.floor(page))
    end

    function Library:_matchingRows(tabName, query)
        local rows = {}
        for _, entry in ipairs(self.Rows) do
            if entry.Tab == tabName then
                local matchesSearch = query == "" or string.find(entry.SearchText, query, 1, true) ~= nil
                if matchesSearch then
                    table.insert(rows, entry)
                end
            end
        end
        return rows
    end

    function Library:_refreshPagination()
        local activeTab = self.ActiveTab
        local query = normalize(self.SearchInput and self.SearchInput.Text or "")
        local limit = normalizedPageLimit(self.MaxElementLimit)

        if activeTab == nil then
            for _, entry in ipairs(self.Rows) do
                entry.Row.Visible = query == "" or string.find(entry.SearchText, query, 1, true) ~= nil
            end
            if self.PageNavigator then
                self.PageNavigator.Visible = false
            end
            self:_setPageNavigatorSpace(false)
            return
        end

        local matchingRows = self:_matchingRows(activeTab, query)
        local totalPages = 1
        if limit ~= math.huge then
            totalPages = math.max(1, math.ceil(#matchingRows / limit))
        end

        local currentPage = math.clamp(self:_currentPageFor(activeTab), 1, totalPages)
        self.PageByTab[activeTab] = currentPage
        self.PageCountByTab[activeTab] = totalPages

        local firstIndex = limit == math.huge and 1 or ((currentPage - 1) * limit + 1)
        local lastIndex = limit == math.huge and #matchingRows or math.min(#matchingRows, currentPage * limit)
        local visibleEntries = {}
        for index = firstIndex, lastIndex do
            local entry = matchingRows[index]
            if entry then
                visibleEntries[entry] = true
            end
        end

        for _, entry in ipairs(self.Rows) do
            entry.Row.Visible = entry.Tab == activeTab and visibleEntries[entry] == true
        end

        local showNavigator = limit ~= math.huge and totalPages > 1
        local navigator = self:_ensurePageNavigator()
        navigator.Visible = showNavigator
        self:_setPageNavigatorSpace(showNavigator)

        if self.PageNumberLabel then
            self.PageNumberLabel.Text = string.format("%d / %d", currentPage, totalPages)
        end

        local canGoLeft = currentPage > 1
        local canGoRight = currentPage < totalPages
        if self.PageLeftButton then
            self.PageLeftButton.Active = canGoLeft
            self.PageLeftButton.AutoButtonColor = canGoLeft
            self.PageLeftButton.Selectable = canGoLeft
        end
        if self.PageRightButton then
            self.PageRightButton.Active = canGoRight
            self.PageRightButton.AutoButtonColor = canGoRight
            self.PageRightButton.Selectable = canGoRight
        end
        if self.PageLeftImage then
            self.PageLeftImage.ImageTransparency = canGoLeft and 0 or 0.55
        end
        if self.PageRightImage then
            self.PageRightImage.ImageTransparency = canGoRight and 0 or 0.55
        end
    end

    function Library:SetPage(page)
        local activeTab = self.ActiveTab
        if activeTab == nil then
            return 1
        end

        local totalPages = tonumber(self.PageCountByTab[activeTab]) or 1
        local newPage = math.clamp(math.floor(tonumber(page) or 1), 1, math.max(1, totalPages))
        if self.ActiveDropdownClose then
            self.ActiveDropdownClose(true)
        end
        self.PageByTab[activeTab] = newPage
        self.Items.CanvasPosition = Vector2.zero
        self:_refreshPagination()
        return newPage
    end

    function Library:GetPage()
        local activeTab = self.ActiveTab
        return self:_currentPageFor(activeTab), (activeTab and self.PageCountByTab[activeTab]) or 1
    end

    function Library:NextPage()
        local current = self:GetPage()
        return self:SetPage(current + 1)
    end

    function Library:PreviousPage()
        local current = self:GetPage()
        return self:SetPage(current - 1)
    end

    function Library:SetMaxElementLimit(limit)
        self.MaxElementLimit = normalizedPageLimit(limit)
        for tabName in pairs(self.PageByTab) do
            self.PageByTab[tabName] = 1
        end
        self.Items.CanvasPosition = Vector2.zero
        self:_refreshPagination()
        return self.MaxElementLimit
    end

    function Library.new(screenGui)
        local self = setmetatable({}, Library)
        self.Screen = screenGui
        self.Frame = screenGui:WaitForChild("Frame")
        self.Items = self.Frame:WaitForChild("ItemsFrame"):WaitForChild("Items")
        self.Templates = {}
        self.Rows = {}
        self.Order = 0
        self.ItemsFrame = self.Frame:WaitForChild("ItemsFrame")
        self.ItemsFrameOriginalSize = self.ItemsFrame.Size
        self.MaxElementLimit = math.huge
        self.PageByTab = {}
        self.PageCountByTab = {}
        self.ActiveDropdownClose = nil
        self.ActiveDropdownRoot = nil
        self.ActiveTab = nil
        self._MountTab = nil
        self.TabButtons = {}
        self.TabOrder = {}
        self.ConfigBindings = {}
        self.ConfigSettings = nil
        self.ConfigReady = false
        self.ConfigOnline = false
        self.ConfigSaveBusy = false
        self.ConfigLastJSON = nil
        self.ConfigLoopToken = 0
        self.ToggleKey = Enum.KeyCode.RightShift

        for _, name in ipairs({"Toggle", "Slider", "Selector", "Title", "Locked"}) do
            local template = self.Items:FindFirstChild(name)
            if template then
                template.Visible = false
                self.Templates[name] = template
            end
        end

        self.Frame.ClipsDescendants = false
        self.Frame.Visible = true
        screenGui.Enabled = true

        local title = self.Frame:FindFirstChild("Title")
        self.TitleLabel = title
        if title then
            title.Text = "Settings"
        end

        local close = self.Frame:FindFirstChild("Close")
        if close then
            GUIFX.ButtonFX(close)
            close.Activated:Connect(function()
                if self.ActiveDropdownClose then
                    self.ActiveDropdownClose(true)
                end
                self:SetVisible(false, false)
            end)
        end

        local search = self.Frame:FindFirstChild("Search")
        local input = search and search:FindFirstChild("Input")
        self.SearchInput = input

        local function refreshSearch()
            self:_refreshPagination()
        end

        self.RefreshSearch = refreshSearch
        if input then
            input:GetPropertyChangedSignal("Text"):Connect(function()
                if self.ActiveTab then
                    self.PageByTab[self.ActiveTab] = 1
                end
                refreshSearch()
            end)
        end

        UserInputService.InputBegan:Connect(function(inputObject, processed)
            if not processed and inputObject.KeyCode == self.ToggleKey then
                self:ToggleVisible(false)
            end
        end)

        local layout = self.Items:FindFirstChildOfClass("UIListLayout")
        if layout then
            local function resize()
                self.Items.CanvasSize = UDim2.fromOffset(0, layout.AbsoluteContentSize.Y + 35)
            end
            layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(resize)
            task.defer(resize)
        end

        return self
    end

    function Library:_mount(row, name, searchText)
        self.Order += 1
        row.Name = name:gsub("[^%w%s_-]", "")
        row.LayoutOrder = self.Order
        row.Visible = true
        row.Parent = self.Items

        local mountedTab = self._MountTab or self.ActiveTab or "__default"
        table.insert(self.Rows, {
            Row = row,
            SearchText = normalize(searchText or name),
            Tab = mountedTab,
        })
        self.PageByTab[mountedTab] = self.PageByTab[mountedTab] or 1
        self:_refreshPagination()
        return row
    end

    function Library:_ensureTabBar()
        if self.TabBar then
            return self.TabBar
        end

        local tabBar = Instance.new("Frame")
        tabBar.Name = "InventoryTabs"
        tabBar.AnchorPoint = Vector2.new(1, 0.5)
        tabBar.AutomaticSize = Enum.AutomaticSize.Y
        tabBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        tabBar.BorderSizePixel = 0
        tabBar.Position = UDim2.new(0, -7, 0.52, 0)
        tabBar.Size = UDim2.fromOffset(54, 0)
        tabBar.ZIndex = 45
        tabBar.Parent = self.Frame

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0.45, 0)
        corner.Parent = tabBar

        local stroke = Instance.new("UIStroke")
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Color = Color3.fromRGB(42, 43, 49)
        stroke.Thickness = 4.835648
        stroke.Parent = tabBar

        local padding = Instance.new("UIPadding")
        padding.PaddingLeft = UDim.new(0.075, 0)
        padding.PaddingRight = UDim.new(0.075, 0)
        padding.Parent = tabBar

        local layout = Instance.new("UIListLayout")
        layout.FillDirection = Enum.FillDirection.Vertical
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = tabBar

        self.TabBar = tabBar
        return tabBar
    end

    function Library:_renderTabs()
        for tabName, entry in pairs(self.TabButtons) do
            local selected = tabName == self.ActiveTab
            entry.Select.Visible = selected
            TweenService:Create(
                entry.Scale,
                TweenInfo.new(0.22, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Scale = selected and 1.08 or 1}
            ):Play()
            TweenService:Create(
                entry.Icon,
                TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
                {ImageTransparency = selected and 0 or 0.08}
            ):Play()
        end

        if self.TitleLabel and self.ActiveTab then
            self.TitleLabel.Text = self.ActiveTab
        end
    end

    function Library:SelectTab(tabName)
        assert(self.TabButtons[tabName], "Unknown settings tab: " .. tostring(tabName))
        if self.ActiveDropdownClose then
            self.ActiveDropdownClose(true)
        end
        self.ActiveTab = tabName
        self.PageByTab[tabName] = self.PageByTab[tabName] or 1
        self.Items.CanvasPosition = Vector2.zero
        if self.SearchInput then
            self.SearchInput.Text = ""
        end
        self:_renderTabs()
        self.RefreshSearch()
    end

    function Library:_withTab(tabName, methodName, ...)
        local oldMountTab = self._MountTab
        self._MountTab = tabName
        local results = table.pack(pcall(Library[methodName], self, ...))
        self._MountTab = oldMountTab
        if not results[1] then
            error(results[2], 3)
        end
        return table.unpack(results, 2, results.n)
    end

    function Library:CreateTab(tabSettings, legacyIcon)
        local settings = type(tabSettings) == "table" and tabSettings or {
            Name = tostring(tabSettings),
            Icon = legacyIcon,
        }
        local name = tostring(settings.Name or "Tab")
        assert(not self.TabButtons[name], "A settings tab named '" .. name .. "' already exists")

        local tabBar = self:_ensureTabBar()
        local index = #self.TabOrder + 1
        local iconImage = settings.Icon or INVENTORY_TAB_ICONS[((index - 1) % #INVENTORY_TAB_ICONS) + 1]

        local button = Instance.new("TextButton")
        button.Name = name
        button.Active = true
        button.AutoButtonColor = false
        button.BackgroundTransparency = 1
        button.BorderSizePixel = 0
        button.LayoutOrder = index
        button.Size = UDim2.fromOffset(48, 48)
        button.Text = ""
        button.ZIndex = 50
        button.Parent = tabBar

        local scale = Instance.new("UIScale")
        scale.Name = "ButtonUIScale"
        scale.Parent = button

        local selectImage = Instance.new("ImageLabel")
        selectImage.Name = "Select"
        selectImage.BackgroundTransparency = 1
        selectImage.Image = INVENTORY_SELECT_IMAGE
        selectImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
        selectImage.Size = UDim2.fromScale(1, 1)
        selectImage.Visible = false
        selectImage.ZIndex = 50
        selectImage.Parent = button

        local icon = Instance.new("ImageLabel")
        icon.Name = "Icon"
        icon.AnchorPoint = Vector2.new(0.5, 0.5)
        icon.BackgroundTransparency = 1
        icon.Image = iconImage
        icon.Position = UDim2.fromScale(0.5, 0.5)
        icon.ScaleType = Enum.ScaleType.Fit
        icon.Size = UDim2.fromScale(1, 1)
        icon.ZIndex = 51
        icon.Parent = button

        local aspect = Instance.new("UIAspectRatioConstraint")
        aspect.AspectRatio = 1
        aspect.Parent = icon

        button.Activated:Connect(function()
            self:SelectTab(name)
            if settings.Callback then
                settings.Callback(name)
            end
        end)
        GUIFX.ButtonFX(button, 1.06)

        self.PageByTab[name] = self.PageByTab[name] or 1
        self.PageCountByTab[name] = self.PageCountByTab[name] or 1

        self.TabButtons[name] = {
            Button = button,
            Select = selectImage,
            Icon = icon,
            Scale = scale,
        }
        table.insert(self.TabOrder, name)

        local tab = {
            Name = name,
            Window = self,
        }
        for _, methodName in ipairs({
            "AddSection",
            "AddButton",
            "AddToggle",
            "AddSelector",
            "AddDropdown",
            "AddSlider",
        }) do
            tab[methodName] = function(_, ...)
                return self:_withTab(name, methodName, ...)
            end
        end
        function tab:Select()
            self.Window:SelectTab(self.Name)
        end

        if self.ActiveTab == nil then
            self.ActiveTab = name
        end
        self:_renderTabs()
        self.RefreshSearch()
        return tab
    end

    function Library:EnableConfig(configSettings)
        configSettings = configSettings or {}
        local configName = tostring(configSettings.Name or "Settings")
        local folderName = tostring(configSettings.FolderName or "PlantVsCoinsUI")
        local fileName = tostring(configSettings.FileName or (configName .. ".json"))
        if not string.match(fileName, "%.json$") then
            fileName ..= ".json"
        end

        folderName = folderName:gsub("[^%w%._%-/]", "_")
        fileName = fileName:gsub("[^%w%._%-]", "_")

        self.ConfigSettings = {
            Name = configName,
            FolderName = folderName,
            FileName = fileName,
            Path = folderName .. "/" .. fileName,
            AutoSave = configSettings.AutoSave ~= false,
            SaveInterval = math.max(0.5, tonumber(configSettings.SaveInterval) or 1),
        }
        self.ConfigOnline = type(isfolder) == "function"
            and type(makefolder) == "function"
            and type(isfile) == "function"
            and type(readfile) == "function"
            and type(writefile) == "function"

        self.ConfigLoopToken += 1
        local loopToken = self.ConfigLoopToken
        task.spawn(function()
            while self.Screen.Parent and self.ConfigLoopToken == loopToken do
                task.wait(self.ConfigSettings.SaveInterval)
                if self.ConfigSettings.AutoSave and self.ConfigReady and self.ConfigOnline and not self.ConfigSaveBusy then
                    local data = self:GetConfigData()
                    local ok, encoded = pcall(HttpService.JSONEncode, HttpService, data)
                    if ok and encoded ~= self.ConfigLastJSON then
                        self:SaveConfig()
                    end
                end
            end
        end)
        return self
    end

    function Library:BindConfig(flag, control, defaultValue)
        assert(type(flag) == "string" and flag ~= "", "BindConfig requires a non-empty flag")
        assert(type(control) == "table" and type(control.Get) == "function" and type(control.Set) == "function", "BindConfig requires a UI control")
        self.ConfigBindings[flag] = {
            Control = control,
            Default = copyValue(defaultValue ~= nil and defaultValue or control:Get()),
        }
        return control
    end

    function Library:GetConfigData()
        local data = {}
        for flag, binding in pairs(self.ConfigBindings) do
            local ok, value = pcall(binding.Control.Get, binding.Control)
            if ok then
                data[flag] = copyValue(value)
            end
        end
        return data
    end

    function Library:_applyConfigData(data, useDefaults)
        for flag, binding in pairs(self.ConfigBindings) do
            local value = data and data[flag]
            if value == nil and useDefaults then
                value = binding.Default
            end
            if value ~= nil then
                local ok = pcall(binding.Control.Set, binding.Control, copyValue(value), false)
                if not ok and not valuesEqual(value, binding.Default) then
                    pcall(binding.Control.Set, binding.Control, copyValue(binding.Default), false)
                end
            end
        end
    end

    function Library:_ensureConfigFolder()
        if not self.ConfigOnline then
            return false, "Executor file functions are unavailable"
        end
        local ok, message = pcall(function()
            if not isfolder(self.ConfigSettings.FolderName) then
                makefolder(self.ConfigSettings.FolderName)
            end
        end)
        return ok, message
    end

    function Library:LoadConfig()
        assert(self.ConfigSettings, "Call EnableConfig before LoadConfig")
        if not self.ConfigOnline then
            self:_applyConfigData(nil, true)
            self.ConfigReady = true
            return false, "Executor file functions are unavailable; using session-only values"
        end

        local folderOK, folderMessage = self:_ensureConfigFolder()
        if not folderOK then
            self:_applyConfigData(nil, true)
            self.ConfigReady = true
            return false, folderMessage
        end

        if not isfile(self.ConfigSettings.Path) then
            self:_applyConfigData(nil, true)
            self.ConfigReady = true
            self.ConfigLastJSON = nil
            return true, {}
        end

        local readOK, contents = pcall(readfile, self.ConfigSettings.Path)
        if not readOK then
            self:_applyConfigData(nil, true)
            self.ConfigReady = true
            return false, contents
        end

        local decodeOK, loaded = pcall(HttpService.JSONDecode, HttpService, contents)
        if not decodeOK or type(loaded) ~= "table" then
            self:_applyConfigData(nil, true)
            self.ConfigReady = true
            return false, decodeOK and "Config root must be a table" or loaded
        end

        self:_applyConfigData(loaded, true)
        self.ConfigReady = true
        local encodedOK, encoded = pcall(HttpService.JSONEncode, HttpService, self:GetConfigData())
        self.ConfigLastJSON = encodedOK and encoded or nil
        return true, loaded
    end

    function Library:SaveConfig()
        assert(self.ConfigSettings, "Call EnableConfig before SaveConfig")
        if self.ConfigSaveBusy then
            return false, "Save already running"
        end
        local folderOK, folderMessage = self:_ensureConfigFolder()
        if not folderOK then
            return false, folderMessage
        end

        self.ConfigSaveBusy = true
        local data = self:GetConfigData()
        local encodedOK, encoded = pcall(HttpService.JSONEncode, HttpService, data)
        if not encodedOK then
            self.ConfigSaveBusy = false
            return false, encoded
        end

        local writeOK, writeMessage = pcall(writefile, self.ConfigSettings.Path, encoded)
        self.ConfigSaveBusy = false
        if not writeOK then
            return false, writeMessage
        end

        self.ConfigLastJSON = encoded
        self.ConfigOnline = true
        self.ConfigReady = true
        return true
    end

    function Library:ResetConfig(saveAfterReset)
        self:_applyConfigData(nil, true)
        self.ConfigReady = true
        if saveAfterReset ~= false and self.ConfigSettings then
            return self:SaveConfig()
        end
        return true
    end

    function Library:DeleteConfig()
        assert(self.ConfigSettings, "Call EnableConfig before DeleteConfig")
        if not self.ConfigOnline then
            return false, "Executor file functions are unavailable"
        end
        local ok, message = pcall(function()
            if isfile(self.ConfigSettings.Path) then
                if type(delfile) ~= "function" then
                    error("delfile is unavailable")
                end
                delfile(self.ConfigSettings.Path)
            end
        end)
        if not ok then
            return false, message
        end
        self.ConfigLastJSON = nil
        return self:ResetConfig(false)
    end

    function Library:AddButton(name, callback, buttonText)
        local row = self.Templates.Selector:Clone()
        row.SettingName.Text = tostring(name)
        local button = row.Toggle.Button
        button.TextLabel.Text = tostring(buttonText or "Run")
        self:_mount(row, tostring(name), tostring(name))
        GUIFX.ButtonFX(button)
        button.Activated:Connect(function()
            local ok, response = pcall(callback)
            if not ok then
                warn("Settings Button | " .. tostring(name) .. ": " .. tostring(response))
            end
        end)
        return {
            Press = function()
                return callback()
            end,
        }
    end

    function Library:AddSection(text, color)
        text = tostring(text)
        local row = self.Templates.Title:Clone()
        row.Text = text
        applySectionColor(row, color)
        return self:_mount(row, "Section " .. text, text)
    end

    function Library:AddToggle(name, default, callback)
        local row = self.Templates.Toggle:Clone()
        row.SettingName.Text = name
        local button = row.Toggle.Button
        local value = default == true

        self:_mount(row, name, name)
        setToggleVisual(button, value, false)
        GUIFX.ButtonFX(button)

        button.Activated:Connect(function()
            value = not value
            setToggleVisual(button, value, true)
            callback(value)
        end)

        return {
            Get = function()
                return value
            end,
            Set = function(_, newValue, silent)
                value = newValue == true
                setToggleVisual(button, value, true)
                if not silent then
                    callback(value)
                end
            end,
        }
    end

    function Library:AddSelector(name, values, default, callback)
        local row = self.Templates.Selector:Clone()
        row.SettingName.Text = name
        local button = row.Toggle.Button
        local index = table.find(values, default) or 1

        self:_mount(row, name, name .. " " .. table.concat(values, " "))
        GUIFX.ButtonFX(button)

        local function update(fire)
            button.TextLabel.Text = tostring(values[index])
            if fire then
                callback(values[index])
            end
        end

        button.Activated:Connect(function()
            index = index % #values + 1
            update(true)
        end)

        update(false)
        return {
            Get = function()
                return values[index]
            end,
            Set = function(_, newValue, silent)
                index = table.find(values, newValue) or index
                update(not silent)
            end,
        }
    end

    function Library:AddDropdown(dropdownSettings, legacyValues, legacyDefault, legacyCallback, legacyMultipleOptions)
        local library = self
        local legacyMode = type(dropdownSettings) ~= "table"
        local settings

        if legacyMode then
            settings = {
                Name = tostring(dropdownSettings),
                Options = legacyValues,
                CurrentOption = legacyDefault,
                MultipleOptions = legacyMultipleOptions == true,
                Callback = legacyCallback,
            }
        else
            settings = dropdownSettings
        end

        settings.Name = tostring(settings.Name or "Dropdown")
        settings.Options = settings.Options or {}
        settings.MultipleOptions = settings.MultipleOptions == true
        settings.Callback = settings.Callback or function() end
        settings.MaxVisibleOptions = math.max(1, tonumber(settings.MaxVisibleOptions) or 4)

        assert(type(settings.Options) == "table", "AddDropdown Options must be a table")

        local CLOSED_HEIGHT = 52
        local OPTION_HEIGHT = 36
        local OPTION_GAP = 6
        local PANEL_PADDING = 8
        local PANEL_GAP = 5
        local SEARCH_HEIGHT = 34
        local SEARCH_GAP = 6
        local TWEEN_OPEN = TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local TWEEN_OPTION = TweenInfo.new(0.3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

        local row = self.Templates.Selector:Clone()
        row.ClipsDescendants = true
        row.Size = UDim2.new(1, 0, 0, CLOSED_HEIGHT)
        row.SettingName.Text = settings.Name

        local rowAspect = row:FindFirstChildOfClass("UIAspectRatioConstraint")
        if rowAspect then
            rowAspect:Destroy()
        end

        local settingName = row.SettingName
        settingName.Size = UDim2.new(0.58, 0, 0, CLOSED_HEIGHT)
        settingName.Position = UDim2.new(0, 0, 0, CLOSED_HEIGHT / 2)

        local headerContainer = row.Toggle
        headerContainer.Size = UDim2.new(0.42, 0, 0, CLOSED_HEIGHT - 6)
        headerContainer.Position = UDim2.new(1, 0, 0, CLOSED_HEIGHT / 2)

        local headerButton = headerContainer.Button
        local selectedLabel = headerButton.TextLabel
        selectedLabel.Size = UDim2.new(0.72, 0, 0.6, 0)
        selectedLabel.Position = UDim2.new(0.42, 0, 0.5, 0)
        selectedLabel.TextXAlignment = Enum.TextXAlignment.Center

        local arrow = selectedLabel:Clone()
        arrow.Name = "DropdownArrow"
        arrow.Text = "▲"
        arrow.Size = UDim2.new(0.17, 0, 0.6, 0)
        arrow.Position = UDim2.new(0.88, 0, 0.5, 0)
        arrow.Rotation = 180
        arrow.Parent = headerButton

        local function optionsToText(options)
            local parts = {}
            for index, option in ipairs(options) do
                parts[index] = tostring(option)
            end
            return table.concat(parts, " ")
        end

        self:_mount(row, settings.Name, settings.Name .. " " .. optionsToText(settings.Options))
        local rowEntry = self.Rows[#self.Rows]
        GUIFX.ButtonFX(headerButton)

        local panel = self.Templates.Locked:Clone()
        panel.Name = "DropdownList"
        panel.AnchorPoint = Vector2.zero
        panel.Position = UDim2.fromOffset(8, CLOSED_HEIGHT + PANEL_GAP)
        panel.Size = UDim2.new(1, -16, 0, 0)
        panel.ClipsDescendants = true
        panel.Visible = false
        panel.ZIndex = 20
        panel.Parent = row

        local oldPriceFrame = panel:FindFirstChild("PriceFrame")
        if oldPriceFrame then
            oldPriceFrame:Destroy()
        end
        local panelAspect = panel:FindFirstChildOfClass("UIAspectRatioConstraint")
        if panelAspect then
            panelAspect:Destroy()
        end

        local panelStroke = panel:FindFirstChildOfClass("UIStroke")
        local panelBackgroundTransparency = panel.BackgroundTransparency
        local panelStrokeTransparency = panelStroke and panelStroke.Transparency or 0
        panel.BackgroundTransparency = 1
        if panelStroke then
            panelStroke.Transparency = 1
        end

        local searchTemplate = self.Frame:FindFirstChild("Search")
        assert(searchTemplate and searchTemplate:IsA("GuiObject"), "Dropdown search requires the Settings Search asset")

        local dropdownSearch = searchTemplate:Clone()
        dropdownSearch.Name = "DropdownSearch"
        dropdownSearch.AnchorPoint = Vector2.zero
        dropdownSearch.Position = UDim2.fromOffset(PANEL_PADDING, PANEL_PADDING)
        dropdownSearch.Size = UDim2.new(1, -(PANEL_PADDING * 2), 0, SEARCH_HEIGHT)
        dropdownSearch.Visible = true
        dropdownSearch.ZIndex = 22
        dropdownSearch.Parent = panel

        local searchInput = dropdownSearch:FindFirstChild("Input")
        assert(searchInput and searchInput:IsA("TextBox"), "Settings Search asset is missing its Input TextBox")
        searchInput.Text = ""
        searchInput.PlaceholderText = tostring(settings.SearchPlaceholder or "Search options...")
        searchInput.ClearTextOnFocus = false
        searchInput.ZIndex = 23

        for _, descendant in ipairs(dropdownSearch:GetDescendants()) do
            if descendant:IsA("GuiObject") then
                descendant.ZIndex = math.max(descendant.ZIndex, 23)
            end
        end

        local list = Instance.new("ScrollingFrame")
        list.Name = "Options"
        list.Active = true
        list.AnchorPoint = Vector2.zero
        list.AutomaticCanvasSize = Enum.AutomaticSize.Y
        list.BackgroundTransparency = 1
        list.BorderSizePixel = 0
        list.CanvasSize = UDim2.fromOffset(0, 0)
        list.ClipsDescendants = true
        list.Position = UDim2.fromOffset(PANEL_PADDING, PANEL_PADDING + SEARCH_HEIGHT + SEARCH_GAP)
        list.ScrollBarImageTransparency = 1
        list.ScrollBarThickness = 3
        list.Size = UDim2.new(
            1,
            -(PANEL_PADDING * 2),
            1,
            -(PANEL_PADDING * 2 + SEARCH_HEIGHT + SEARCH_GAP)
        )
        list.ZIndex = 21
        list.Parent = panel

        local layout = Instance.new("UIListLayout")
        layout.Padding = UDim.new(0, OPTION_GAP)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = list

        local optionEntries = {}
        local currentOptions = {}
        local open = false
        local animating = false
        local destroyed = false

        local function copyArray(source)
            local result = {}
            for index, value in ipairs(source) do
                result[index] = value
            end
            return result
        end

        local function optionExists(value)
            return table.find(settings.Options, value) ~= nil
        end

        local function normalizeSelection(newSelection)
            local incoming
            if typeof(newSelection) == "table" then
                incoming = newSelection
            elseif newSelection == nil then
                incoming = {}
            else
                incoming = {newSelection}
            end

            local normalizedSelection = {}
            for _, option in ipairs(incoming) do
                if optionExists(option) and not table.find(normalizedSelection, option) then
                    table.insert(normalizedSelection, option)
                end
            end

            if not settings.MultipleOptions then
                if normalizedSelection[1] == nil then
                    return {}
                end
                return {normalizedSelection[1]}
            end

            return normalizedSelection
        end

        local function syncPublicSelection()
            settings.CurrentOption = copyArray(currentOptions)
        end

        local function getSelectedText()
            if settings.MultipleOptions then
                if #currentOptions == 0 then
                    return "None"
                elseif #currentOptions == 1 then
                    return tostring(currentOptions[1])
                end
                return "Various"
            end
            return tostring(currentOptions[1] or "None")
        end

        local function setButtonGradient(button, selected)
            clearGradient(button)
            local gradient = Gradients:FindFirstChild(selected and "GreenGradient" or "GreyGradient")
                or Gradients:FindFirstChild(selected and "LightGreenGradient" or "LightGreyGradient")
            if gradient then
                gradient:Clone().Parent = button
            end
        end

        local function renderSelection()
            selectedLabel.Text = getSelectedText()
            syncPublicSelection()

            for _, entry in ipairs(optionEntries) do
                local selected = table.find(currentOptions, entry.Value) ~= nil
                setButtonGradient(entry.Button, selected)
                entry.Button.TextLabel.TextTransparency = 0
                local textStroke = entry.Button.TextLabel:FindFirstChildOfClass("UIStroke")
                if textStroke then
                    textStroke.Transparency = selected and 0 or 0.2
                end
            end
        end

        local function fireCallback()
            local payload = copyArray(currentOptions)
            local success, response
            if legacyMode and not settings.MultipleOptions then
                success, response = pcall(settings.Callback, payload[1])
            else
                success, response = pcall(settings.Callback, payload)
            end

            if not success then
                local originalText = settingName.Text
                settingName.Text = "Callback Error"
                warn("Settings Dropdown | " .. settings.Name .. " callback error: " .. tostring(response))
                task.delay(0.65, function()
                    if settingName.Parent then
                        settingName.Text = originalText
                    end
                end)
            end
        end

        local function getFilteredOptionCount()
            local count = 0
            for _, entry in ipairs(optionEntries) do
                if entry.Button.Visible then
                    count += 1
                end
            end
            return count
        end

        local function getPanelHeight()
            local visibleCount = math.min(getFilteredOptionCount(), settings.MaxVisibleOptions)
            local optionsHeight = visibleCount * OPTION_HEIGHT + math.max(0, visibleCount - 1) * OPTION_GAP
            return PANEL_PADDING * 2 + SEARCH_HEIGHT + SEARCH_GAP + optionsHeight
        end

        local function getOpenHeight()
            return CLOSED_HEIGHT + PANEL_GAP + getPanelHeight() + 7
        end

        local function updateListCanvas()
            list.CanvasSize = UDim2.fromOffset(0, layout.AbsoluteContentSize.Y)
        end
        layout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateListCanvas)

        local function refreshOptionSearch()
            local query = normalize(searchInput.Text)
            for _, entry in ipairs(optionEntries) do
                entry.Button.Visible = query == ""
                    or string.find(normalize(entry.Value), query, 1, true) ~= nil
            end

            updateListCanvas()
            if open then
                local panelHeight = getPanelHeight()
                panel.Size = UDim2.new(1, -16, 0, panelHeight)
                row.Size = UDim2.new(1, 0, 0, CLOSED_HEIGHT + PANEL_GAP + panelHeight + 7)
                list.ScrollBarImageTransparency = getFilteredOptionCount() > settings.MaxVisibleOptions and 0.45 or 1
            end
        end
        searchInput:GetPropertyChangedSignal("Text"):Connect(refreshOptionSearch)

        local closeDropdown

        local function setOptionFade(transparency)
            for _, entry in ipairs(optionEntries) do
                TweenService:Create(entry.Button, TWEEN_OPTION, {ImageTransparency = transparency}):Play()
                TweenService:Create(entry.Button.TextLabel, TWEEN_OPTION, {TextTransparency = transparency}):Play()
                local textStroke = entry.Button.TextLabel:FindFirstChildOfClass("UIStroke")
                if textStroke then
                    TweenService:Create(textStroke, TWEEN_OPTION, {Transparency = math.max(transparency, 0.15)}):Play()
                end
            end
        end

        local function rebuildOptions()
            for _, entry in ipairs(optionEntries) do
                entry.Button:Destroy()
            end
            table.clear(optionEntries)

            for index, option in ipairs(settings.Options) do
                local optionButton = self.Templates.Selector.Toggle.Button:Clone()
                optionButton.Name = tostring(option)
                optionButton.AnchorPoint = Vector2.zero
                optionButton.Position = UDim2.fromOffset(0, 0)
                optionButton.Size = UDim2.new(1, -4, 0, OPTION_HEIGHT)
                optionButton.LayoutOrder = index
                optionButton.ZIndex = 22
                optionButton.TextLabel.Text = tostring(option)
                optionButton.TextLabel.ZIndex = 23
                optionButton.Parent = list
                GUIFX.ButtonFX(optionButton, 1.015)

                optionButton.Activated:Connect(function()
                    if animating or destroyed then
                        return
                    end

                    local selectedIndex = table.find(currentOptions, option)
                    if settings.MultipleOptions then
                        if selectedIndex then
                            table.remove(currentOptions, selectedIndex)
                        else
                            table.insert(currentOptions, option)
                        end
                        renderSelection()
                        fireCallback()
                    else
                        if selectedIndex then
                            return
                        end
                        table.clear(currentOptions)
                        table.insert(currentOptions, option)
                        renderSelection()
                        fireCallback()
                        task.defer(function()
                            closeDropdown(false)
                        end)
                    end
                end)

                table.insert(optionEntries, {
                    Button = optionButton,
                    Value = option,
                })
            end

            refreshOptionSearch()
            renderSelection()
            if open then
                panel.Size = UDim2.new(1, -16, 0, getPanelHeight())
                row.Size = UDim2.new(1, 0, 0, getOpenHeight())
            end
        end

        closeDropdown = function(immediate)
            if not open or destroyed then
                return
            end

            open = false
            animating = true
            if self.ActiveDropdownClose == closeDropdown then
                self.ActiveDropdownClose = nil
            end

            searchInput:ReleaseFocus()

            if immediate then
                row.Size = UDim2.new(1, 0, 0, CLOSED_HEIGHT)
                arrow.Rotation = 180
                panel.Visible = false
                panel.BackgroundTransparency = 1
                panel.Size = UDim2.new(1, -16, 0, 0)
                if panelStroke then
                    panelStroke.Transparency = 1
                end
                list.ScrollBarImageTransparency = 1
                animating = false
                return
            end

            TweenService:Create(row, TWEEN_OPEN, {Size = UDim2.new(1, 0, 0, CLOSED_HEIGHT)}):Play()
            TweenService:Create(panel, TWEEN_OPEN, {
                Size = UDim2.new(1, -16, 0, 0),
                BackgroundTransparency = 1,
            }):Play()
            if panelStroke then
                TweenService:Create(panelStroke, TWEEN_OPTION, {Transparency = 1}):Play()
            end
            TweenService:Create(arrow, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 180}):Play()
            TweenService:Create(list, TWEEN_OPTION, {ScrollBarImageTransparency = 1}):Play()
            setOptionFade(1)

            task.delay(0.36, function()
                if not destroyed and not open then
                    panel.Visible = false
                    animating = false
                end
            end)
        end

        local function openDropdown()
            if destroyed or animating then
                return
            end
            if open then
                closeDropdown(false)
                return
            end

            if self.ActiveDropdownClose and self.ActiveDropdownClose ~= closeDropdown then
                self.ActiveDropdownClose(false)
            end

            searchInput.Text = ""
            refreshOptionSearch()
            open = true
            animating = true
            self.ActiveDropdownClose = closeDropdown
            panel.Visible = true
            panel.Size = UDim2.new(1, -16, 0, 0)
            panel.BackgroundTransparency = 1
            if panelStroke then
                panelStroke.Transparency = 1
            end

            for _, entry in ipairs(optionEntries) do
                entry.Button.ImageTransparency = 1
                entry.Button.TextLabel.TextTransparency = 1
            end

            TweenService:Create(row, TWEEN_OPEN, {Size = UDim2.new(1, 0, 0, getOpenHeight())}):Play()
            TweenService:Create(panel, TWEEN_OPEN, {
                Size = UDim2.new(1, -16, 0, getPanelHeight()),
                BackgroundTransparency = panelBackgroundTransparency,
            }):Play()
            if panelStroke then
                TweenService:Create(panelStroke, TWEEN_OPTION, {Transparency = panelStrokeTransparency}):Play()
            end
            TweenService:Create(arrow, TweenInfo.new(0.7, Enum.EasingStyle.Quint), {Rotation = 0}):Play()
            TweenService:Create(list, TWEEN_OPTION, {
                ScrollBarImageTransparency = getFilteredOptionCount() > settings.MaxVisibleOptions and 0.45 or 1,
            }):Play()
            setOptionFade(0)

            task.delay(0.48, function()
                if not destroyed then
                    animating = false
                end
            end)
        end

        currentOptions = normalizeSelection(settings.CurrentOption)
        rebuildOptions()
        renderSelection()

        headerButton.Activated:Connect(openDropdown)
        row:GetPropertyChangedSignal("Visible"):Connect(function()
            if not row.Visible then
                closeDropdown(true)
            end
        end)
        row.Destroying:Connect(function()
            destroyed = true
            if self.ActiveDropdownClose == closeDropdown then
                self.ActiveDropdownClose = nil
            end
        end)

        function settings:Get()
            return copyArray(currentOptions)
        end

        function settings:Set(newOptions, silent)
            currentOptions = normalizeSelection(newOptions)
            renderSelection()
            if not silent then
                fireCallback()
            end
        end

        function settings:Refresh(newOptions, newCurrentOptions)
            if newOptions ~= nil then
                assert(type(newOptions) == "table", "Refresh options must be a table")
                settings.Options = newOptions
            end

            if newCurrentOptions ~= nil then
                currentOptions = normalizeSelection(newCurrentOptions)
            else

                currentOptions = normalizeSelection(currentOptions)
            end

            rowEntry.SearchText = normalize(settings.Name .. " " .. optionsToText(settings.Options))
            rebuildOptions()
            library.RefreshSearch()
            return copyArray(currentOptions)
        end

        function settings:Open()
            openDropdown()
        end

        function settings:Close()
            closeDropdown(false)
        end

        function settings:Destroy()
            closeDropdown(true)
            row:Destroy()
        end

        return settings
    end

    function Library:AddSlider(name, minimum, maximum, default, callback, step)
        local row = self.Templates.Slider:Clone()
        row.SettingName.Text = name

        local slider = row.Slider
        local knob = slider.Button
        local value = math.clamp(default or minimum, minimum, maximum)
        local increment = step or 1
        local dragging = false
        local touchInput

        self:_mount(row, name, name)

        slider.Active = true
        knob.Active = true
        GUIFX.ButtonFX(knob)

        local function formatValue(number)
            if math.abs(number - math.round(number)) < 1e-6 then
                return tostring(math.round(number))
            end
            return string.format("%.2f", number):gsub("0+$", ""):gsub("%.$", "")
        end

        local function render(fire)
            local alpha = maximum == minimum and 0 or (value - minimum) / (maximum - minimum)
            knob.Position = UDim2.fromScale(0.05 + 0.9 * alpha, 0.5)
            row.SettingName.Text = string.format("%s: %s", name, formatValue(value))
            if fire then
                callback(value)
            end
        end

        local function updateFromX(x)
            local width = slider.AbsoluteSize.X
            if width <= 0 then
                return
            end

            local alpha = math.clamp((x - slider.AbsolutePosition.X) / width, 0, 1)
            local raw = minimum + (maximum - minimum) * alpha
            local nextValue = math.clamp(math.round((raw - minimum) / increment) * increment + minimum, minimum, maximum)

            if nextValue ~= value then
                value = nextValue
                render(true)
            else
                render(false)
            end
        end

        local function beginDrag(inputObject)
            local inputType = inputObject.UserInputType
            if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
                return
            end

            dragging = true
            touchInput = inputType == Enum.UserInputType.Touch and inputObject or nil
            updateFromX(inputObject.Position.X)
        end

        slider.InputBegan:Connect(beginDrag)
        knob.InputBegan:Connect(beginDrag)

        UserInputService.InputChanged:Connect(function(inputObject)
            if not dragging then
                return
            end

            if inputObject.UserInputType == Enum.UserInputType.MouseMovement then
                updateFromX(inputObject.Position.X)
            elseif touchInput and inputObject == touchInput then
                updateFromX(inputObject.Position.X)
            end
        end)

        UserInputService.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject == touchInput then
                dragging = false
                touchInput = nil
            end
        end)

        render(false)
        return {
            Get = function()
                return value
            end,
            Set = function(_, newValue, silent)
                value = math.clamp(newValue, minimum, maximum)
                render(not silent)
            end,
        }
    end

    local NativeScreenTemplate
    local NativeScreenChecked = false

    local function isCompatibleNativeScreen(candidate)
        if typeof(candidate) ~= "Instance" or not candidate:IsA("ScreenGui") then
            return false
        end
        local frame = candidate:FindFirstChild("Frame")
        local itemsFrame = frame and frame:FindFirstChild("ItemsFrame")
        local items = itemsFrame and itemsFrame:FindFirstChild("Items")
        if not (frame and itemsFrame and items) then
            return false
        end
        return items:FindFirstChild("Toggle") ~= nil
            and items:FindFirstChild("Slider") ~= nil
            and items:FindFirstChild("Selector") ~= nil
            and items:FindFirstChild("Title") ~= nil
    end

    local function stripNativeScripts(root)
        for _, descendant in ipairs(root:GetDescendants()) do
            if descendant:IsA("LuaSourceContainer") then
                descendant:Destroy()
            end
        end
    end

    local function getNativeScreen()
        if not NativeScreenChecked then
            NativeScreenChecked = true
            local candidate = StarterGui:FindFirstChild("Settings")
            if isCompatibleNativeScreen(candidate) then
                local ok, clone = pcall(candidate.Clone, candidate)
                if ok and clone then
                    stripNativeScripts(clone)
                    clone.Parent = nil
                    NativeScreenTemplate = clone
                end
            end
        end

        if NativeScreenTemplate then
            local ok, clone = pcall(NativeScreenTemplate.Clone, NativeScreenTemplate)
            if ok and clone then
                clone.Parent = nil
                clone.Enabled = false
                clone.ResetOnSpawn = false
                return clone
            end
        end
        return nil
    end

  local function resolveUIParent()
	local player = Players.LocalPlayer or Players.PlayerAdded:Wait()
	return player:WaitForChild("PlayerGui")
end
    function Library:CreateWindow(settings)
        settings = settings or {}
        local screen
        if settings.UseGameAssets ~= false then
            screen = getNativeScreen()
        end
        screen = screen or UIFactory.BuildScreen()
        screen.Name = tostring(settings.GuiName or "PlantVsCoinsSettings")

        local parent = resolveUIParent(screen)
        local old = parent:FindFirstChild(screen.Name)
        if old then
            old:Destroy()
        end
        screen.Parent = parent

        local window = Library.new(screen)
        window.ToggleKey = settings.ToggleKey or Enum.KeyCode.RightShift
        window.MaxElementLimit = normalizedPageLimit(settings.MaxElementLimit)

        local title = window.Frame:FindFirstChild("Title")
        if title then
            title.Text = tostring(settings.Name or "Plant vs Coins")
        end

        local saving = settings.ConfigurationSaving
        if type(saving) == "table" and saving.Enabled ~= false then
            window:EnableConfig({
                Name = saving.Name or settings.Name or "Settings",
                FolderName = saving.FolderName or "PlantVsCoinsUI",
                FileName = saving.FileName,
                AutoSave = saving.AutoSave ~= false,
                SaveInterval = saving.SaveInterval or 1,
            })
        end

        local launcher = settings.Launcher
        if launcher == nil then
            launcher = settings.AutoAdvanceButton
        end
        window:ConfigureLauncher(launcher)

        return window
    end

    function Library:Destroy()
        self.ConfigLoopToken += 1
        if self.LauncherSound then
            self.LauncherSound:Destroy()
            self.LauncherSound = nil
        end
        if self.Screen then
            self.Screen:Destroy()
        end
    end

    local GuiService = game:GetService("GuiService")
    local RunService = game:GetService("RunService")
    local ContextActionService = game:GetService("ContextActionService")
    local TextService = game:GetService("TextService")

    local function safeCall(callback, ...)
        if type(callback) ~= "function" then
            return true
        end
        local ok, result = pcall(callback, ...)
        if not ok then
            warn(tostring(result))
        end
        return ok, result
    end

    local function sanitizeProfileName(value)
        local name = tostring(value or "Default"):gsub("[^%w%._%-]", "_")
        if name == "" then
            name = "Default"
        end
        return name
    end

    local function colorToTable(color)
        return {
            R = math.clamp(math.floor(color.R * 255 + 0.5), 0, 255),
            G = math.clamp(math.floor(color.G * 255 + 0.5), 0, 255),
            B = math.clamp(math.floor(color.B * 255 + 0.5), 0, 255),
        }
    end

    local function tableToColor(value, fallback)
        if typeof(value) == "Color3" then
            return value
        end
        if type(value) == "string" then
            local hex = value:gsub("#", "")
            if #hex == 6 then
                local number = tonumber(hex, 16)
                if number then
                    return Color3.fromRGB(
                        bit32.rshift(number, 16) % 256,
                        bit32.rshift(number, 8) % 256,
                        number % 256
                    )
                end
            end
        end
        if type(value) == "table" then
            local r = tonumber(value.R or value.r or value[1])
            local g = tonumber(value.G or value.g or value[2])
            local b = tonumber(value.B or value.b or value[3])
            if r and g and b then
                if r <= 1 and g <= 1 and b <= 1 then
                    return Color3.new(r, g, b)
                end
                return Color3.fromRGB(r, g, b)
            end
        end
        return fallback or Color3.new(1, 1, 1)
    end

    local function colorToHex(color)
        return string.format("#%02X%02X%02X", math.floor(color.R * 255 + 0.5), math.floor(color.G * 255 + 0.5), math.floor(color.B * 255 + 0.5))
    end

    local function findSettingLabel(row)
        if not row then
            return nil
        end
        local direct = row:FindFirstChild("SettingName")
        if direct and direct:IsA("TextLabel") then
            return direct
        end
        if row:IsA("TextLabel") then
            return row
        end
        for _, descendant in ipairs(row:GetDescendants()) do
            if descendant:IsA("TextLabel") and descendant.Name == "SettingName" then
                return descendant
            end
        end
        return nil
    end

    local function removeRowEntry(window, row)
        for index = #window.Rows, 1, -1 do
            if window.Rows[index].Row == row then
                table.remove(window.Rows, index)
                break
            end
        end
        window:_refreshPagination()
    end

    local function setObjectInputEnabled(root, enabled)
        if not root then
            return
        end
        for _, object in ipairs(root:GetDescendants()) do
            if object:IsA("GuiButton") then
                object.Active = enabled
                object.Selectable = enabled
            elseif object:IsA("TextBox") then
                object.TextEditable = enabled
                object.Active = enabled
            end
        end
    end

    local OriginalMountV8 = Library._mount
    function Library:_mount(row, name, searchText)
        local mounted = OriginalMountV8(self, row, name, searchText)
        local entry = self.Rows[#self.Rows]
        entry.ManualVisible = true
        entry.SubTab = self._MountSubTab
        if not self._CreatingSection then
            local tabName = entry.Tab
            local sectionKey = tabName .. "" .. tostring(entry.SubTab or "")
            local section = self._ForcedSection or (self._ActiveSectionByTab and self._ActiveSectionByTab[sectionKey])
            if section then
                entry.Section = section
                table.insert(section.Entries, entry)
            end
        end
        return mounted
    end

    function Library:_entryAvailable(entry, tabName, query)
        if not entry.Row or not entry.Row.Parent then
            return false
        end
        if entry.Tab ~= tabName or entry.ManualVisible == false then
            return false
        end
        if entry.Section and entry.Section.Collapsed then
            return false
        end
        local activeSubTab = self.ActiveSubTabByTab and self.ActiveSubTabByTab[tabName]
        if entry.SubTab and activeSubTab and entry.SubTab ~= activeSubTab then
            return false
        end
        if entry.SubTab and not activeSubTab then
            return false
        end
        if query ~= "" and string.find(entry.SearchText, query, 1, true) == nil then
            return false
        end
        return true
    end

    function Library:_matchingRows(tabName, query)
        local rows = {}
        for _, entry in ipairs(self.Rows) do
            if self:_entryAvailable(entry, tabName, query) then
                table.insert(rows, entry)
            end
        end
        return rows
    end

    function Library:_applyContentInsets()
        if not self.ItemsFrame or not self.ItemsFrameOriginalSize or not self.ItemsFrameOriginalPosition then
            return
        end
        local topReserve = self.SubTabBar and self.SubTabBar.Visible and (((self.SubTabBar.AbsoluteSize.Y > 0) and math.floor(self.SubTabBar.AbsoluteSize.Y + 8) or (self.SubTabBar.Size.Y.Offset + 8))) or 0
        local bottomReserve = self._PageNavigatorSpaceEnabled and 38 or 0
        local originalSize = self.ItemsFrameOriginalSize
        local originalPosition = self.ItemsFrameOriginalPosition
        self.ItemsFrame.Position = UDim2.new(
            originalPosition.X.Scale,
            originalPosition.X.Offset,
            originalPosition.Y.Scale,
            originalPosition.Y.Offset + topReserve
        )
        self.ItemsFrame.Size = UDim2.new(
            originalSize.X.Scale,
            originalSize.X.Offset,
            originalSize.Y.Scale,
            originalSize.Y.Offset - topReserve - bottomReserve
        )
    end

    function Library:_setPageNavigatorSpace(enabled)
        self._PageNavigatorSpaceEnabled = enabled == true
        self:_applyContentInsets()
    end

    function Library:_refreshPagination()
        local activeTab = self.ActiveTab
        local query = normalize(self.SearchInput and self.SearchInput.Text or "")
        local limit = normalizedPageLimit(self.MaxElementLimit)
        if activeTab == nil then
            for _, entry in ipairs(self.Rows) do
                entry.Row.Visible = entry.ManualVisible ~= false and (query == "" or string.find(entry.SearchText, query, 1, true) ~= nil)
            end
            if self.PageNavigator then
                self.PageNavigator.Visible = false
            end
            self:_setPageNavigatorSpace(false)
            return
        end
        local matchingRows = self:_matchingRows(activeTab, query)
        local totalPages = 1
        if limit ~= math.huge then
            totalPages = math.max(1, math.ceil(#matchingRows / limit))
        end
        local currentPage = math.clamp(self:_currentPageFor(activeTab), 1, totalPages)
        self.PageByTab[activeTab] = currentPage
        self.PageCountByTab[activeTab] = totalPages
        local firstIndex = limit == math.huge and 1 or ((currentPage - 1) * limit + 1)
        local lastIndex = limit == math.huge and #matchingRows or math.min(#matchingRows, currentPage * limit)
        local visibleEntries = {}
        for index = firstIndex, lastIndex do
            local entry = matchingRows[index]
            if entry then
                visibleEntries[entry] = true
            end
        end
        for _, entry in ipairs(self.Rows) do
            entry.Row.Visible = visibleEntries[entry] == true
        end
        local showNavigator = limit ~= math.huge and totalPages > 1
        local navigator = self:_ensurePageNavigator()
        navigator.Visible = showNavigator
        self:_setPageNavigatorSpace(showNavigator)
        if self.PageNumberLabel then
            self.PageNumberLabel.Text = string.format("%d / %d", currentPage, totalPages)
        end
        local canGoLeft = currentPage > 1
        local canGoRight = currentPage < totalPages
        if self.PageLeftButton then
            self.PageLeftButton.Active = canGoLeft
            self.PageLeftButton.AutoButtonColor = canGoLeft
            self.PageLeftButton.Selectable = canGoLeft
        end
        if self.PageRightButton then
            self.PageRightButton.Active = canGoRight
            self.PageRightButton.AutoButtonColor = canGoRight
            self.PageRightButton.Selectable = canGoRight
        end
        if self.PageLeftImage then
            self.PageLeftImage.ImageTransparency = canGoLeft and 0 or 0.55
        end
        if self.PageRightImage then
            self.PageRightImage.ImageTransparency = canGoRight and 0 or 0.55
        end
    end

    local function measureInfoText(text, textSize, maxWidth)
        local value = tostring(text or "")
        local ok, bounds = pcall(function()
            return TextService:GetTextSize(value, textSize, Enum.Font.FredokaOne, Vector2.new(maxWidth, 1000))
        end)
        if ok and bounds then
            return bounds
        end
        return Vector2.new(math.min(maxWidth, math.max(1, #value) * textSize * 0.55), textSize)
    end

    local function shortenInfoNumber(value)
        local numberValue = tonumber(value)
        if numberValue == nil then
            return tostring(value or "")
        end
        local absolute = math.abs(numberValue)
        local suffixes = {
            {1e33, "d"},
            {1e30, "n"},
            {1e27, "o"},
            {1e24, "sp"},
            {1e21, "sx"},
            {1e18, "Qn"},
            {1e15, "q"},
            {1e12, "t"},
            {1e9, "b"},
            {1e6, "m"},
            {1e3, "k"},
        }
        for _, entry in ipairs(suffixes) do
            if absolute >= entry[1] then
                local scaled = numberValue / entry[1]
                local formatted
                if math.abs(scaled) >= 100 then
                    formatted = string.format("%.0f", scaled)
                elseif math.abs(scaled) >= 10 then
                    formatted = string.format("%.1f", scaled)
                else
                    formatted = string.format("%.2f", scaled)
                end
                formatted = formatted:gsub("(%..-)0+$", "%1"):gsub("%.$", "")
                return formatted .. entry[2]
            end
        end
        if numberValue % 1 == 0 then
            return tostring(math.floor(numberValue))
        end
        return tostring(numberValue)
    end

    local function firstInfoValue(sourceTable, ...)
        for index = 1, select("#", ...) do
            local key = select(index, ...)
            local value = sourceTable[key]
            if value ~= nil then
                return value
            end
        end
        return nil
    end

    local function joinInfoText(value)
        if value == nil then
            return nil
        end
        if type(value) ~= "table" then
            return tostring(value)
        end
        local parts = {}
        for _, entry in ipairs(value) do
            if entry ~= nil and tostring(entry) ~= "" then
                table.insert(parts, tostring(entry))
            end
        end
        if #parts == 0 then
            return nil
        end
        return table.concat(parts, "\n\n")
    end

    local function appendInfoText(current, value)
        local text = joinInfoText(value)
        if text == nil or text == "" then
            return current
        end
        if current == nil or current == "" then
            return text
        end
        return current .. "\n\n" .. text
    end

    local function formatInfoExists(value)
        if value == nil then
            return nil
        end
        local text
        if type(value) == "number" then
            text = shortenInfoNumber(value)
        else
            text = tostring(value)
        end
        if text == "" then
            return nil
        end
        if not text:lower():find("exist", 1, true) then
            text ..= " Exist"
        end
        return text
    end

    local function formatInfoPrice(value)
        if value == nil then
            return nil
        end
        if type(value) == "number" then
            return shortenInfoNumber(value)
        end
        local text = tostring(value)
        return text ~= "" and text or nil
    end

    local function applyInfoCurrency(result, value, fallbackAmount)
        if type(value) == "table" then
            local amount = firstInfoValue(value, "Text", "Amount", "Price", "Value")
            if amount == nil then
                amount = value[2] or fallbackAmount
            end
            local icon = firstInfoValue(value, "Icon", "Image", "CurrencyIcon")
            if icon == nil and type(value[1]) == "string" and value[1]:find("rbxasset", 1, true) then
                icon = value[1]
            end
            result.Price = formatInfoPrice(amount)
            if icon ~= nil then
                result.CurrencyIcon = tostring(icon)
            end
            if typeof(value.Color) == "Color3" then
                result.CurrencyColor = value.Color
            end
            if typeof(value.IconColor) == "Color3" then
                result.CurrencyIconColor = value.IconColor
            end
        else
            result.Price = formatInfoPrice(fallbackAmount ~= nil and fallbackAmount or value)
        end
    end

    local function resolveInfoTooltip(value)
        if type(value) == "function" then
            local ok, result = pcall(value)
            if not ok then
                warn(tostring(result))
                return nil
            end
            value = result
        end
        if value == nil then
            return nil
        end

        local result = {
            Title = nil,
            Rarity = nil,
            Description = nil,
            Duration = nil,
            Action = nil,
            Exists = nil,
            Price = nil,
            CurrencyIcon = "rbxassetid://14867116353",
            CurrencyColor = Color3.fromRGB(66, 245, 255),
            CurrencyIconColor = Color3.new(1, 1, 1),
            Width = nil,
            RarityColor = nil,
            RarityGradient = nil,
            RarityStrokeColor = nil,
        }

        if type(value) ~= "table" then
            result.Title = tostring(value)
            return result
        end

        result.Title = joinInfoText(firstInfoValue(value, "Title", "Name", "Text"))
        result.Rarity = joinInfoText(firstInfoValue(value, "Rarity", "Tier"))
        result.Description = joinInfoText(firstInfoValue(value, "Description", "Desc", "Body"))
        result.Duration = joinInfoText(firstInfoValue(value, "Duration", "Time"))
        result.Action = joinInfoText(firstInfoValue(value, "Action", "AdditionalDescription", "Hint", "Message"))
        result.Exists = formatInfoExists(value.Exists)
        result.Width = tonumber(firstInfoValue(value, "Width", "TooltipWidth"))
        if typeof(value.RarityColor) == "Color3" then
            result.RarityColor = value.RarityColor
        end
        if typeof(value.RarityGradient) == "ColorSequence" then
            result.RarityGradient = value.RarityGradient
        end
        if typeof(value.RarityStrokeColor) == "Color3" then
            result.RarityStrokeColor = value.RarityStrokeColor
        end
        if typeof(value.CurrencyColor) == "Color3" then
            result.CurrencyColor = value.CurrencyColor
        end
        if typeof(value.CurrencyIconColor) == "Color3" then
            result.CurrencyIconColor = value.CurrencyIconColor
        end

        local directIcon = firstInfoValue(value, "CurrencyIcon", "Icon")
        if directIcon ~= nil then
            result.CurrencyIcon = tostring(directIcon)
        end

        local directPrice = firstInfoValue(value, "Price", "PriceText", "Amount")
        if directPrice ~= nil then
            applyInfoCurrency(result, directPrice)
        elseif value.Currency ~= nil then
            applyInfoCurrency(result, value.Currency)
        end

        local blocks = value.Blocks
        if type(blocks) ~= "table" then
            blocks = value
        end

        for _, block in ipairs(blocks) do
            if type(block) == "table" then
                local kind = tostring(block[1] or block.Type or block.Kind or "")
                local normalized = kind:lower():gsub("[%s_%-]", "")
                local blockValue = block[2]
                if blockValue == nil then
                    blockValue = firstInfoValue(block, "Value", "Text", "Amount")
                end

                if normalized == "title" then
                    result.Title = joinInfoText(blockValue) or result.Title
                elseif normalized == "rarity" or normalized == "tier" then
                    result.Rarity = joinInfoText(blockValue) or result.Rarity
                    if typeof(block.Color) == "Color3" then
                        result.RarityColor = block.Color
                    end
                    if typeof(block.Gradient) == "ColorSequence" then
                        result.RarityGradient = block.Gradient
                    end
                elseif normalized == "desc" or normalized == "description" or normalized == "body" or normalized == "subtitle" then
                    result.Description = appendInfoText(result.Description, blockValue)
                elseif normalized == "duration" or normalized == "time" then
                    result.Duration = appendInfoText(result.Duration, blockValue)
                elseif normalized == "action" or normalized == "message" or normalized == "hint" or normalized == "additionaldescription" then
                    result.Action = appendInfoText(result.Action, blockValue)
                elseif normalized == "exists" or normalized == "exist" then
                    result.Exists = formatInfoExists(blockValue)
                elseif normalized == "currency" or normalized == "price" or normalized == "cost" then
                    applyInfoCurrency(result, blockValue, block[3])
                elseif normalized == "currencyicon" or normalized == "icon" then
                    if blockValue ~= nil then
                        result.CurrencyIcon = tostring(blockValue)
                    end
                elseif normalized == "width" then
                    result.Width = tonumber(blockValue) or result.Width
                end
            end
        end

        if result.Title == nil and value[1] ~= nil and type(value[1]) ~= "table" then
            result.Title = tostring(value[1])
        end

        return result
    end

    local INFO_RARITY_GRADIENTS = {
        basic = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(210, 215, 226)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(151, 158, 176)),
        }),
        rare = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(94, 215, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(109, 154, 255)),
        }),
        epic = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(225, 116, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(147, 91, 255)),
        }),
        legendary = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 223, 82)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 145, 49)),
        }),
        mythical = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 89, 144)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 46, 76)),
        }),
        exclusive = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(166, 139, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(173, 79, 255)),
        }),
        superior = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 255, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(220, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(185, 255, 255)),
        }),
        secret = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(94, 94, 94)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255)),
        }),
    }

    local function applyInfoRarityVisual(self, data)
        local label = self.TooltipRarityLabel
        local gradient = self.TooltipRarityGradient
        if not label or not gradient then
            return
        end
        local sequence = data.RarityGradient
        if sequence == nil and typeof(data.RarityColor) == "Color3" then
            sequence = ColorSequence.new(data.RarityColor)
        end
        if sequence == nil then
            local key = tostring(data.Rarity or ""):lower():gsub("[%s_%-]", "")
            sequence = INFO_RARITY_GRADIENTS[key] or INFO_RARITY_GRADIENTS.superior
        end
        gradient.Color = sequence
        label.TextColor3 = Color3.new(1, 1, 1)
        if self.TooltipRarityStroke then
            self.TooltipRarityStroke.Color = data.RarityStrokeColor or Color3.fromRGB(47, 80, 82)
        end
    end

    function Library:_ensureTooltip()
        if self.TooltipPanel then
            return self.TooltipPanel
        end

        local panel = Instance.new("Frame")
        panel.Name = "InfoOverlay"
        panel.Active = true
        panel.AnchorPoint = Vector2.new(0, 0)
        panel.BackgroundTransparency = 1
        panel.BorderSizePixel = 0
        panel.ClipsDescendants = false
        panel.Size = UDim2.fromOffset(320, 120)
        panel.Visible = false
        panel.ZIndex = 400
        panel.Parent = self.Screen

        local scale = Instance.new("UIScale")
        scale.Name = "UIScale"
        scale.Scale = 1
        scale.Parent = panel

        local shadow = Instance.new("ImageLabel")
        shadow.Name = "shadow"
        shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        shadow.BackgroundTransparency = 1
        shadow.Image = "rbxassetid://14001321443"
        shadow.ImageColor3 = Color3.new(0, 0, 0)
        shadow.ImageTransparency = 0.85
        shadow.Position = UDim2.fromScale(0.5, 0.5)
        shadow.ScaleType = Enum.ScaleType.Slice
        shadow.Size = UDim2.new(1, 35, 1, 35)
        shadow.SliceCenter = Rect.new(50, 50, 150, 150)
        shadow.SliceScale = 0.8
        shadow.ZIndex = 400
        shadow.Parent = panel

        local main = Instance.new("Frame")
        main.Name = "Frame"
        main.BackgroundColor3 = Color3.new(1, 1, 1)
        main.BackgroundTransparency = 0
        main.BorderSizePixel = 0
        main.ClipsDescendants = true
        main.Size = UDim2.fromScale(1, 1)
        main.ZIndex = 401
        main.Parent = panel

        local mainCorner = Instance.new("UICorner")
        mainCorner.CornerRadius = UDim.new(0, 16)
        mainCorner.Parent = main

        local mainStroke = Instance.new("UIStroke")
        mainStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        mainStroke.Color = Color3.fromRGB(42, 43, 49)
        mainStroke.LineJoinMode = Enum.LineJoinMode.Round
        mainStroke.Thickness = 3
        mainStroke.Transparency = 0
        mainStroke.Parent = main

        local background = Instance.new("ImageLabel")
        background.Name = "background"
        background.AnchorPoint = Vector2.new(0, 1)
        background.BackgroundTransparency = 1
        background.Image = "rbxassetid://13581793331"
        background.ImageColor3 = Color3.fromRGB(20, 58, 67)
        background.ImageTransparency = 0.95
        background.Position = UDim2.new(0, 0, 1, 0)
        background.ScaleType = Enum.ScaleType.Tile
        background.Size = UDim2.fromScale(1, 1)
        background.TileSize = UDim2.fromOffset(171, 135)
        background.ZIndex = 401
        background.Parent = main

        local backgroundCorner = Instance.new("UICorner")
        backgroundCorner.CornerRadius = UDim.new(0, 16)
        backgroundCorner.Parent = background

        local backgroundGradient = Instance.new("UIGradient")
        backgroundGradient.Rotation = -90
        backgroundGradient.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.310087, 0.39375),
            NumberSequenceKeypoint.new(0.495641, 0.59375),
            NumberSequenceKeypoint.new(0.738481, 0.825),
            NumberSequenceKeypoint.new(1, 1),
        })
        backgroundGradient.Parent = background

        local blocks = Instance.new("Frame")
        blocks.Name = "Blocks"
        blocks.BackgroundTransparency = 1
        blocks.Size = UDim2.fromScale(1, 1)
        blocks.ZIndex = 402
        blocks.Parent = main

        local padding = Instance.new("UIPadding")
        padding.PaddingBottom = UDim.new(0, 9)
        padding.PaddingLeft = UDim.new(0, 16)
        padding.PaddingRight = UDim.new(0, 16)
        padding.PaddingTop = UDim.new(0, 9)
        padding.Parent = blocks

        local layout = Instance.new("UIListLayout")
        layout.FillDirection = Enum.FillDirection.Vertical
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        layout.Padding = UDim.new(0, 3)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.VerticalAlignment = Enum.VerticalAlignment.Top
        layout.Parent = blocks

        local function createBlock(name, order, height)
            local block = Instance.new("Frame")
            block.Name = name
            block.BackgroundTransparency = 1
            block.LayoutOrder = order
            block.Size = UDim2.new(1, 0, 0, height)
            block.Visible = false
            block.ZIndex = 402
            block.Parent = blocks
            return block
        end

        local function createText(parent, name, textSize, color, fontFace)
            local label = Instance.new("TextLabel")
            label.Name = name
            label.AnchorPoint = Vector2.new(0.5, 0.5)
            label.BackgroundTransparency = 1
            label.FontFace = fontFace or Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            label.Position = UDim2.fromScale(0.5, 0.5)
            label.Size = UDim2.fromScale(1, 1)
            label.Text = ""
            label.TextColor3 = color
            label.TextSize = textSize
            label.TextWrapped = true
            label.TextXAlignment = Enum.TextXAlignment.Center
            label.TextYAlignment = Enum.TextYAlignment.Center
            label.ZIndex = 403
            label.Parent = parent
            return label
        end

        local function createDivider(name, order)
            local block = createBlock(name, order, 10)
            local line = Instance.new("Frame")
            line.Name = "Line"
            line.AnchorPoint = Vector2.new(0.5, 0.5)
            line.BackgroundColor3 = Color3.fromRGB(222, 226, 229)
            line.BorderSizePixel = 0
            line.Position = UDim2.fromScale(0.5, 0.5)
            line.Size = UDim2.new(1, 0, 0, 3)
            line.ZIndex = 403
            line.Parent = block
            local lineCorner = Instance.new("UICorner")
            lineCorner.CornerRadius = UDim.new(1, 0)
            lineCorner.Parent = line
            local lineGradient = Instance.new("UIGradient")
            lineGradient.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 1),
                NumberSequenceKeypoint.new(0.12, 0.2),
                NumberSequenceKeypoint.new(0.5, 0),
                NumberSequenceKeypoint.new(0.88, 0.2),
                NumberSequenceKeypoint.new(1, 1),
            })
            lineGradient.Parent = line
            return block
        end

        local titleBlock = createBlock("Title", 1, 32)
        local title = createText(titleBlock, "title", 32, Color3.fromRGB(42, 43, 49))
        title.TextYAlignment = Enum.TextYAlignment.Top

        local rarityBlock = createBlock("Rarity", 2, 24)
        local rarity = createText(
            rarityBlock,
            "title",
            22,
            Color3.new(1, 1, 1),
            Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        )
        local rarityGradient = Instance.new("UIGradient")
        rarityGradient.Name = "Tier Gradient"
        rarityGradient.Color = INFO_RARITY_GRADIENTS.superior
        rarityGradient.Rotation = 100
        rarityGradient.Parent = rarity
        local rarityStroke = Instance.new("UIStroke")
        rarityStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        rarityStroke.Color = Color3.fromRGB(47, 80, 82)
        rarityStroke.LineJoinMode = Enum.LineJoinMode.Round
        rarityStroke.Thickness = 2
        rarityStroke.Parent = rarity

        local dividerTop = createDivider("Div", 3)

        local bodyBlock = createBlock("Desc", 4, 20)
        local body = createText(bodyBlock, "title", 20, Color3.fromRGB(128, 128, 128))
        body.LineHeight = 1.05

        local actionBlock = createBlock("Message", 5, 22)
        local action = createText(actionBlock, "title", 20, Color3.fromRGB(128, 128, 128))
        action.LineHeight = 1.05

        local dividerBottom = createDivider("DivBottom", 6)

        local existsBlock = createBlock("Exists", 7, 22)
        local exists = createText(existsBlock, "title", 20, Color3.fromRGB(42, 43, 49))

        local currencyBlock = createBlock("Currency", 8, 40)
        local currencyContent = Instance.new("Frame")
        currencyContent.Name = "Content"
        currencyContent.AnchorPoint = Vector2.new(0.5, 0.5)
        currencyContent.BackgroundTransparency = 1
        currencyContent.Position = UDim2.fromScale(0.5, 0.5)
        currencyContent.Size = UDim2.fromOffset(120, 40)
        currencyContent.ZIndex = 403
        currencyContent.Parent = currencyBlock

        local currencyIcon = Instance.new("ImageLabel")
        currencyIcon.Name = "Icon"
        currencyIcon.AnchorPoint = Vector2.new(0, 0.5)
        currencyIcon.BackgroundTransparency = 1
        currencyIcon.Image = "rbxassetid://14867116353"
        currencyIcon.Position = UDim2.new(0, 0, 0.5, 0)
        currencyIcon.ScaleType = Enum.ScaleType.Fit
        currencyIcon.Size = UDim2.fromOffset(38, 38)
        currencyIcon.ZIndex = 404
        currencyIcon.Parent = currencyContent

        local iconAspect = Instance.new("UIAspectRatioConstraint")
        iconAspect.AspectRatio = 1
        iconAspect.Parent = currencyIcon

        local currencyAmount = createText(
            currencyContent,
            "Amount",
            28,
            Color3.fromRGB(66, 245, 255),
            Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
        )
        currencyAmount.AnchorPoint = Vector2.new(0, 0.5)
        currencyAmount.Position = UDim2.new(0, 42, 0.5, 0)
        currencyAmount.Size = UDim2.new(1, -42, 1, 0)
        currencyAmount.TextWrapped = false
        currencyAmount.TextXAlignment = Enum.TextXAlignment.Left
        local amountStroke = Instance.new("UIStroke")
        amountStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        amountStroke.Color = Color3.new(0, 0, 0)
        amountStroke.LineJoinMode = Enum.LineJoinMode.Bevel
        amountStroke.Thickness = 2.5
        amountStroke.Parent = currencyAmount

        self.TooltipPanel = panel
        self.TooltipMain = main
        self.TooltipScale = scale
        self.TooltipBlocks = blocks
        self.TooltipLayout = layout
        self.TooltipTitleBlock = titleBlock
        self.TooltipTitleLabel = title
        self.TooltipRarityBlock = rarityBlock
        self.TooltipRarityLabel = rarity
        self.TooltipRarityGradient = rarityGradient
        self.TooltipRarityStroke = rarityStroke
        self.TooltipDividerTop = dividerTop
        self.TooltipBodyBlock = bodyBlock
        self.TooltipBodyLabel = body
        self.TooltipActionBlock = actionBlock
        self.TooltipActionLabel = action
        self.TooltipDividerBottom = dividerBottom
        self.TooltipExistsBlock = existsBlock
        self.TooltipExistsLabel = exists
        self.TooltipCurrencyBlock = currencyBlock
        self.TooltipCurrencyContent = currencyContent
        self.TooltipCurrencyIcon = currencyIcon
        self.TooltipCurrencyAmount = currencyAmount

        local moveConnection = UserInputService.InputChanged:Connect(function(inputObject)
            if panel.Visible and inputObject.UserInputType == Enum.UserInputType.MouseMovement then
                self:_positionTooltip(self.TooltipTarget)
            end
        end)
        self.TooltipMoveConnection = moveConnection
        if self._V8Connections then
            table.insert(self._V8Connections, moveConnection)
        else
            panel.Destroying:Connect(function()
                if moveConnection.Connected then
                    moveConnection:Disconnect()
                end
            end)
        end

        return panel
    end

    function Library:_positionTooltip(target)
        local panel = self.TooltipPanel
        if not panel or not panel.Visible then
            return
        end
        local camera = workspace.CurrentCamera
        local viewport = camera and camera.ViewportSize or Vector2.new(1920, 1080)
        local mousePosition = UserInputService:GetMouseLocation()
        if target and UserInputService.GamepadEnabled and GuiService.SelectedObject == target then
            mousePosition = target.AbsolutePosition + target.AbsoluteSize * 0.5
        end
        local panelSize = panel.AbsoluteSize
        if panelSize.X <= 0 or panelSize.Y <= 0 then
            panelSize = Vector2.new(panel.Size.X.Offset, panel.Size.Y.Offset)
        end
        local x = mousePosition.X + 12
        local y = mousePosition.Y + 12
        if x + panelSize.X >= viewport.X then
            x = mousePosition.X - panelSize.X - 12
        end
        if y + panelSize.Y >= viewport.Y then
            y = mousePosition.Y - panelSize.Y - 12
        end
        x = math.clamp(x, 0, math.max(0, viewport.X - panelSize.X))
        y = math.clamp(y, 0, math.max(0, viewport.Y - panelSize.Y))
        panel.Position = UDim2.fromOffset(x, y)
    end

    function Library:ShowTooltip(value, target)
        if self.TooltipsEnabled == false then
            return
        end

        local data = resolveInfoTooltip(value)
        if not data or not data.Title or data.Title == "" then
            self:HideTooltip()
            return
        end

        self:_ensureTooltip()

        local hasRarity = data.Rarity ~= nil and data.Rarity ~= ""
        local bodyText = data.Description
        if data.Duration ~= nil and data.Duration ~= "" then
            bodyText = appendInfoText(bodyText, data.Duration)
        end
        local hasBody = bodyText ~= nil and bodyText ~= ""
        local hasAction = data.Action ~= nil and data.Action ~= ""
        local hasExists = data.Exists ~= nil and data.Exists ~= ""
        local hasCurrency = data.Price ~= nil and data.Price ~= ""
        local rich = hasRarity or hasBody or hasAction or hasExists or hasCurrency

        local width
        if data.Width ~= nil then
            width = math.clamp(data.Width, 180, 420)
        elseif rich then
            width = 320
        else
            local compactBounds = measureInfoText(data.Title, 32, 300)
            width = math.clamp(compactBounds.X + 32, 100, 332)
        end
        local innerWidth = math.max(60, width - 32)

        local visibleBlocks = 0
        local contentHeight = 18

        local function setBlock(block, visible, height)
            block.Visible = visible
            if visible then
                block.Size = UDim2.new(1, 0, 0, height)
                contentHeight += height
                visibleBlocks += 1
            end
        end

        local titleBounds = measureInfoText(data.Title, 32, innerWidth)
        local titleHeight = math.max(32, titleBounds.Y)
        self.TooltipTitleLabel.Text = data.Title
        setBlock(self.TooltipTitleBlock, true, titleHeight)

        self.TooltipRarityLabel.Text = data.Rarity or ""
        setBlock(self.TooltipRarityBlock, hasRarity, 24)
        if hasRarity then
            applyInfoRarityVisual(self, data)
        end

        local showTopDivider = hasRarity and (hasBody or hasAction or hasExists or hasCurrency)
        setBlock(self.TooltipDividerTop, showTopDivider, 10)

        self.TooltipBodyLabel.Text = bodyText or ""
        local bodyHeight = 20
        if hasBody then
            bodyHeight = math.max(20, measureInfoText(bodyText, 20, innerWidth).Y)
        end
        setBlock(self.TooltipBodyBlock, hasBody, bodyHeight)

        self.TooltipActionLabel.Text = data.Action or ""
        local actionHeight = 22
        if hasAction then
            actionHeight = math.max(22, measureInfoText(data.Action, 20, innerWidth).Y)
        end
        setBlock(self.TooltipActionBlock, hasAction, actionHeight)

        local showBottomDivider = (hasExists or hasCurrency) and (hasBody or hasAction)
        setBlock(self.TooltipDividerBottom, showBottomDivider, 10)

        self.TooltipExistsLabel.Text = data.Exists or ""
        local existsHeight = 22
        if hasExists then
            existsHeight = math.max(22, measureInfoText(data.Exists, 20, innerWidth).Y)
        end
        setBlock(self.TooltipExistsBlock, hasExists, existsHeight)

        self.TooltipCurrencyAmount.Text = data.Price or ""
        self.TooltipCurrencyAmount.TextColor3 = data.CurrencyColor or Color3.fromRGB(66, 245, 255)
        self.TooltipCurrencyIcon.Image = data.CurrencyIcon or "rbxassetid://14867116353"
        self.TooltipCurrencyIcon.ImageColor3 = data.CurrencyIconColor or Color3.new(1, 1, 1)
        if hasCurrency then
            local amountBounds = measureInfoText(data.Price, 28, innerWidth - 42)
            local amountWidth = math.min(math.max(1, amountBounds.X + 4), innerWidth - 42)
            local contentWidth = math.min(innerWidth, 42 + amountWidth)
            self.TooltipCurrencyContent.Size = UDim2.fromOffset(contentWidth, 40)
        end
        setBlock(self.TooltipCurrencyBlock, hasCurrency, 40)

        if visibleBlocks > 1 then
            contentHeight += (visibleBlocks - 1) * 3
        end

        self.TooltipPanel.Size = UDim2.fromOffset(width, contentHeight)
        self.TooltipPanel.Visible = true
        self.TooltipTarget = target
        self.TooltipValue = value

        if self.TooltipScale then
            self.TooltipScale.Scale = 0.92
            TweenService:Create(
                self.TooltipScale,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Scale = 1}
            ):Play()
        end

        if self.TooltipSoundEnabled ~= false then
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://6907626084"
            sound.Volume = 0.2
            sound.Parent = SoundService
            sound.Ended:Connect(function()
                sound:Destroy()
            end)
            pcall(function()
                sound:Play()
            end)
            task.delay(2, function()
                if sound.Parent then
                    sound:Destroy()
                end
            end)
        end

        task.defer(function()
            self:_positionTooltip(target)
        end)
    end

    function Library:HideTooltip()
        if self.TooltipPanel then
            self.TooltipPanel.Visible = false
        end
        self.TooltipTarget = nil
        self.TooltipValue = nil
    end

    function Library:AttachTooltip(object, value)
        if not object or not object:IsA("GuiObject") then
            return function() end
        end

        if type(value) == "string" or type(value) == "number" then
            object:SetAttribute("Tooltip", tostring(value))
        else
            object:SetAttribute("Tooltip", nil)
        end

        local connections = {}
        local touchToken = 0

        local function resolve()
            if type(value) == "function" then
                local ok, result = pcall(value)
                if not ok then
                    warn(tostring(result))
                    return nil
                end
                return result
            end
            return value
        end

        local function show()
            local tooltip = resolve()
            if tooltip ~= nil then
                self:ShowTooltip(tooltip, object)
            end
        end

        table.insert(connections, object.MouseEnter:Connect(show))
        table.insert(connections, object.MouseLeave:Connect(function()
            if self.TooltipTarget == object then
                self:HideTooltip()
            end
        end))
        table.insert(connections, object.SelectionGained:Connect(show))
        table.insert(connections, object.SelectionLost:Connect(function()
            if self.TooltipTarget == object then
                self:HideTooltip()
            end
        end))
        table.insert(connections, object.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.Touch then
                touchToken += 1
                local token = touchToken
                task.delay(0.45, function()
                    if token == touchToken and object.Parent then
                        show()
                    end
                end)
            end
        end))
        table.insert(connections, object.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.Touch then
                touchToken += 1
                task.delay(1.5, function()
                    if self.TooltipTarget == object then
                        self:HideTooltip()
                    end
                end)
            end
        end))

        return function()
            for _, connection in ipairs(connections) do
                connection:Disconnect()
            end
            if self.TooltipTarget == object then
                self:HideTooltip()
            end
        end
    end

    function Library:AttachItemTooltip(object, value)
        return self:AttachTooltip(object, value)
    end

    function Library:_ensureNotificationHost()
        if self.NotificationHost then
            return self.NotificationHost
        end
        local host = Instance.new("Frame")
        host.Name = "Notifications"
        host.AnchorPoint = Vector2.new(1, 0)
        host.AutomaticSize = Enum.AutomaticSize.Y
        host.BackgroundTransparency = 1
        host.Position = UDim2.new(1, -18, 0, 18)
        host.Size = UDim2.fromOffset(330, 0)
        host.ZIndex = 250
        host.Parent = self.Screen
        local layout = Instance.new("UIListLayout")
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Right
        layout.Padding = UDim.new(0, 8)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.VerticalAlignment = Enum.VerticalAlignment.Top
        layout.Parent = host
        self.NotificationHost = host
        self.NotificationOrder = 0
        return host
    end

    function Library:Notify(notificationSettings)
        local settings = type(notificationSettings) == "table" and notificationSettings or {Content = tostring(notificationSettings)}
        local host = self:_ensureNotificationHost()
        self.NotificationOrder += 1
        local panel = self.Templates.Locked:Clone()
        panel.Name = tostring(settings.Title or "Notification")
        panel.AnchorPoint = Vector2.new(1, 0)
        panel.AutomaticSize = Enum.AutomaticSize.None
        panel.ClipsDescendants = true
        panel.LayoutOrder = self.NotificationOrder
        panel.Size = UDim2.fromOffset(0, 92)
        panel.Visible = true
        panel.ZIndex = 251
        panel.Parent = host
        local price = panel:FindFirstChild("PriceFrame")
        if price then
            price:Destroy()
        end
        local aspect = panel:FindFirstChildOfClass("UIAspectRatioConstraint")
        if aspect then
            aspect:Destroy()
        end
        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundTransparency = 1
        title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        title.Position = UDim2.fromOffset(16, 9)
        title.Size = UDim2.new(1, -55, 0, 26)
        title.Text = tostring(settings.Title or "Notification")
        title.TextColor3 = Color3.new(1, 1, 1)
        title.TextSize = 22
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.ZIndex = 253
        title.Parent = panel
        local titleStroke = Instance.new("UIStroke")
        titleStroke.Color = Color3.fromRGB(42, 43, 49)
        titleStroke.Thickness = 2
        titleStroke.Parent = title
        local content = Instance.new("TextLabel")
        content.Name = "Content"
        content.BackgroundTransparency = 1
        content.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        content.Position = UDim2.fromOffset(16, 38)
        content.Size = UDim2.new(1, -32, 0, 43)
        content.Text = tostring(settings.Content or "")
        content.TextColor3 = Color3.fromRGB(248, 248, 248)
        content.TextSize = 16
        content.TextWrapped = true
        content.TextXAlignment = Enum.TextXAlignment.Left
        content.TextYAlignment = Enum.TextYAlignment.Top
        content.ZIndex = 253
        content.Parent = panel
        local close = Instance.new("TextButton")
        close.Name = "Close"
        close.AnchorPoint = Vector2.new(1, 0)
        close.AutoButtonColor = false
        close.BackgroundTransparency = 1
        close.Position = UDim2.new(1, -8, 0, 7)
        close.Size = UDim2.fromOffset(28, 28)
        close.Text = "×"
        close.FontFace = title.FontFace
        close.TextColor3 = Color3.new(1, 1, 1)
        close.TextSize = 27
        close.ZIndex = 254
        close.Parent = panel
        GUIFX.ButtonFX(close, 1.1)
        local notificationType = string.lower(tostring(settings.Type or "Info")):gsub("[%s_%-]", "")
        local notificationAliases = {
            success = "GreenGradient",
            error = "RedGradient",
            danger = "RedGradient",
            warning = "YellowGradient",
            info = "BlueGradient",
        }
        local gradientName = notificationAliases[notificationType] or SECTION_GRADIENT_ALIASES[notificationType] or "BlueGradient"
        local gradient = Gradients:FindFirstChild(gradientName)
        if gradient then
            gradient:Clone().Parent = panel
        end
        local closed = false
        local function dismiss()
            if closed then
                return
            end
            closed = true
            TweenService:Create(panel, TweenInfo.new(0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.In), {
                Size = UDim2.fromOffset(0, 92),
                BackgroundTransparency = 1,
            }):Play()
            task.delay(0.3, function()
                if panel.Parent then
                    panel:Destroy()
                end
            end)
        end
        close.Activated:Connect(dismiss)
        TweenService:Create(panel, TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
            Size = UDim2.fromOffset(320, 92),
        }):Play()
        local duration = tonumber(settings.Duration)
        if duration == nil then
            duration = 4
        end
        if duration > 0 then
            task.delay(duration, dismiss)
        end
        return {
            Close = dismiss,
            Destroy = dismiss,
            SetTitle = function(_, value)
                title.Text = tostring(value)
            end,
            SetContent = function(_, value)
                content.Text = tostring(value)
            end,
        }
    end

    local function buildNativeAlertTemplate()
        local frame = Instance.new("Frame")
        frame.Name = "Alert"
        frame.BackgroundColor3 = Color3.new(1, 1, 1)
        frame.BackgroundTransparency = 1
        frame.BorderSizePixel = 0
        frame.Size = UDim2.fromScale(1, 1)
        frame.Visible = true

        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundColor3 = Color3.new(1, 1, 1)
        title.BackgroundTransparency = 1
        title.BorderSizePixel = 0
        title.Position = UDim2.new(0, 0, 0, 2)
        title.Size = UDim2.new(0.95, 0, 0.25, 0)
        title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        title.Text = "Quest Completed!"
        title.TextColor3 = Color3.fromRGB(255, 245, 106)
        title.TextScaled = true
        title.TextSize = 18
        title.TextStrokeColor3 = Color3.new(0, 0, 0)
        title.TextStrokeTransparency = 1
        title.TextWrapped = true
        title.TextXAlignment = Enum.TextXAlignment.Center
        title.TextYAlignment = Enum.TextYAlignment.Center
        title.Parent = frame

        local titleStroke = Instance.new("UIStroke")
        titleStroke.Color = Color3.new(0, 0, 0)
        titleStroke.Thickness = 3
        titleStroke.Transparency = 0
        titleStroke.Parent = title

        local desc = Instance.new("TextLabel")
        desc.Name = "Desc"
        desc.AnchorPoint = Vector2.new(0.5, 1)
        desc.BackgroundColor3 = Color3.new(1, 1, 1)
        desc.BackgroundTransparency = 1
        desc.BorderSizePixel = 0
        desc.Position = UDim2.new(0.5, 0, 1, 0)
        desc.Size = UDim2.new(0.8, 0, 0.7, -2)
        desc.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        desc.Text = "Short desc"
        desc.TextColor3 = Color3.new(1, 1, 1)
        desc.TextScaled = true
        desc.TextSize = 18
        desc.TextStrokeColor3 = Color3.new(0, 0, 0)
        desc.TextStrokeTransparency = 1
        desc.TextWrapped = true
        desc.TextXAlignment = Enum.TextXAlignment.Center
        desc.TextYAlignment = Enum.TextYAlignment.Center
        desc.Parent = frame

        local descStroke = Instance.new("UIStroke")
        descStroke.Color = Color3.new(0, 0, 0)
        descStroke.Thickness = 2.5
        descStroke.Transparency = 0
        descStroke.Parent = desc

        local descSize = Instance.new("UITextSizeConstraint")
        descSize.MaxTextSize = 34
        descSize.MinTextSize = 1
        descSize.Parent = desc

        return frame
    end

    local function buildNativeImageAlertTemplate()
        local frame = Instance.new("Frame")
        frame.Name = "ImageAlert"
        frame.BackgroundColor3 = Color3.new(1, 1, 1)
        frame.BackgroundTransparency = 1
        frame.BorderSizePixel = 0
        frame.Size = UDim2.fromScale(1, 1)
        frame.Visible = true

        local holder = Instance.new("Frame")
        holder.Name = "Holder"
        holder.AnchorPoint = Vector2.new(0, 0.5)
        holder.BackgroundColor3 = Color3.new(1, 1, 1)
        holder.BackgroundTransparency = 1
        holder.BorderSizePixel = 0
        holder.Position = UDim2.new(0, 0, 0.5, 0)
        holder.Size = UDim2.fromScale(0.9, 0.9)
        holder.Parent = frame

        local holderAspect = Instance.new("UIAspectRatioConstraint")
        holderAspect.AspectRatio = 1
        holderAspect.AspectType = Enum.AspectType.FitWithinMaxSize
        holderAspect.DominantAxis = Enum.DominantAxis.Width
        holderAspect.Parent = holder

        local image = Instance.new("ImageLabel")
        image.Name = "ImageLabel"
        image.BackgroundColor3 = Color3.new(1, 1, 1)
        image.BackgroundTransparency = 1
        image.BorderSizePixel = 0
        image.Image = "rbxassetid://15000811448"
        image.ImageColor3 = Color3.new(1, 1, 1)
        image.ImageTransparency = 0
        image.ScaleType = Enum.ScaleType.Fit
        image.Size = UDim2.fromScale(1, 1)
        image.ZIndex = 5
        image.Parent = holder

        local textHolder = Instance.new("Frame")
        textHolder.Name = "TextHolder"
        textHolder.AnchorPoint = Vector2.new(1, 0.5)
        textHolder.BackgroundColor3 = Color3.new(1, 1, 1)
        textHolder.BackgroundTransparency = 1
        textHolder.BorderSizePixel = 0
        textHolder.Position = UDim2.new(1, 0, 0.5, 0)
        textHolder.Size = UDim2.fromScale(0.65, 0.95)
        textHolder.Parent = frame

        local layout = Instance.new("UIListLayout")
        layout.FillDirection = Enum.FillDirection.Vertical
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        layout.Padding = UDim.new(0.08, 0)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.VerticalAlignment = Enum.VerticalAlignment.Top
        layout.Parent = textHolder

        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundColor3 = Color3.new(1, 1, 1)
        title.BackgroundTransparency = 1
        title.BorderSizePixel = 0
        title.LayoutOrder = 1
        title.Size = UDim2.new(1, 0, 0.3, 0)
        title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        title.Text = "Coin Jar Event!"
        title.TextColor3 = Color3.fromRGB(255, 245, 106)
        title.TextScaled = true
        title.TextSize = 18
        title.TextStrokeColor3 = Color3.new(0, 0, 0)
        title.TextStrokeTransparency = 1
        title.TextWrapped = true
        title.TextXAlignment = Enum.TextXAlignment.Center
        title.TextYAlignment = Enum.TextYAlignment.Center
        title.Parent = textHolder

        local titleStroke = Instance.new("UIStroke")
        titleStroke.Color = Color3.new(0, 0, 0)
        titleStroke.Thickness = 3
        titleStroke.Transparency = 0
        titleStroke.Parent = title

        local desc = Instance.new("TextLabel")
        desc.Name = "Desc"
        desc.BackgroundColor3 = Color3.new(1, 1, 1)
        desc.BackgroundTransparency = 1
        desc.BorderSizePixel = 0
        desc.LayoutOrder = 3
        desc.Size = UDim2.new(1, 0, 0.3, 0)
        desc.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        desc.Text = "Starting in Hot Springs"
        desc.TextColor3 = Color3.new(1, 1, 1)
        desc.TextScaled = true
        desc.TextSize = 18
        desc.TextStrokeColor3 = Color3.new(0, 0, 0)
        desc.TextStrokeTransparency = 1
        desc.TextWrapped = true
        desc.TextXAlignment = Enum.TextXAlignment.Center
        desc.TextYAlignment = Enum.TextYAlignment.Center
        desc.Parent = textHolder

        local descStroke = Instance.new("UIStroke")
        descStroke.Color = Color3.new(0, 0, 0)
        descStroke.Thickness = 2.5
        descStroke.Transparency = 0
        descStroke.Parent = desc

        return frame
    end

    local function cloneNativeNotificationTemplate(name)
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local assets = replicatedStorage:FindFirstChild("Assets")
        local ui = assets and assets:FindFirstChild("UI")
        local notifications = ui and ui:FindFirstChild("Notifications")
        local top = notifications and notifications:FindFirstChild("Top")
        local template = top and top:FindFirstChild(name)
        if template then
            return template:Clone()
        end
        if name == "ImageAlert" then
            return buildNativeImageAlertTemplate()
        end
        return buildNativeAlertTemplate()
    end

    local function ensureNativeNotificationHost(self)
        local existing = self._NativeNotificationHost
        if existing and existing.Screen and existing.Screen.Parent then
            return existing
        end

        local parent = self.Screen and self.Screen.Parent
        if not parent then
            local player = Players.LocalPlayer
            parent = player and player:FindFirstChildOfClass("PlayerGui")
            if not parent and player then
                parent = player:WaitForChild("PlayerGui")
            end
        end

        local screen = Instance.new("ScreenGui")
        screen.Name = "Notifications"
        screen.AutoLocalize = true
        screen.ClipToDeviceSafeArea = true
        screen.DisplayOrder = self.Screen and (self.Screen.DisplayOrder - 1) or -1
        screen.Enabled = true
        screen.ResetOnSpawn = false
        screen.SafeAreaCompatibility = Enum.SafeAreaCompatibility.FullscreenExtension
        screen.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
        screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        screen.Parent = parent

        local top = Instance.new("Frame")
        top.Name = "Top"
        top.AnchorPoint = Vector2.new(0.5, 0)
        top.BackgroundColor3 = Color3.new(0, 0, 0)
        top.BackgroundTransparency = 0.8
        top.BorderSizePixel = 0
        top.ClipsDescendants = false
        top.Position = UDim2.new(.5,0,0,-9999)
        top.Size = UDim2.new(0.5, 25, 0.125, 25)
        top.Visible = false
        top.Parent = screen

        local topAspect = Instance.new("UIAspectRatioConstraint")
        topAspect.Name = "UIAspectRatioConstraint"
        topAspect.AspectRatio = 3
        topAspect.AspectType = Enum.AspectType.FitWithinMaxSize
        topAspect.DominantAxis = Enum.DominantAxis.Width
        topAspect.Parent = top

        local topPadding = Instance.new("UIPadding")
        topPadding.Name = "UIPadding"
        topPadding.PaddingBottom = UDim.new(0.025, 0)
        topPadding.PaddingLeft = UDim.new(0.025, 2)
        topPadding.PaddingRight = UDim.new(0.025, 2)
        topPadding.PaddingTop = UDim.new(0.025, 0)
        topPadding.Parent = top

        local topGradient = Instance.new("UIGradient")
        topGradient.Name = "UIGradient"
        topGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
            ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
        })
        topGradient.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.19202, 0),
            NumberSequenceKeypoint.new(1, 1),
        })
        topGradient.Offset = Vector2.new(0, 0)
        topGradient.Rotation = 90
        topGradient.Scale = 1
        topGradient.TileMode = Enum.GradientTileMode.Clamp
        topGradient.Type = Enum.GradientType.Linear
        topGradient.Parent = top

        existing = {
            Screen = screen,
            Top = top,
            Queue = {},
            Current = nil,
            Running = false,
        }
        self._NativeNotificationHost = existing
        return existing
    end

    local function removeQueuedNotification(host, handle)
        for index, queued in ipairs(host.Queue) do
            if queued == handle then
                table.remove(host.Queue, index)
                return true
            end
        end
        return false
    end

    local function processNativeNotificationQueue(host)
        if host.Running then
            return
        end
        host.Running = true
        task.spawn(function()
            while host.Screen and host.Screen.Parent do
                local handle = table.remove(host.Queue, 1)
                if not handle then
                    break
                end
                if not handle._Cancelled then
                    host.Current = handle
                    local top = host.Top
                    local frame = handle.Frame
                    frame.Parent = top
                    top.Visible = true
                    task.wait()
                    local hiddenPosition = UDim2.new(0.5, 0, 0, -top.AbsoluteSize.Y - 40)
                    top.Position = hiddenPosition
                    TweenService:Create(top, TweenInfo.new(0.65, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                        Position = UDim2.new(0.5, 0, 0, 0),
                    }):Play()

                    if handle.Started then
                        task.spawn(handle.Started)
                    end

                    local deadline = os.clock() + handle.Time
                    while not handle._CloseRequested and os.clock() < deadline and frame.Parent do
                        task.wait(0.03)
                    end

                    local outTween = TweenService:Create(top, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                        Position = hiddenPosition,
                    })
                    outTween:Play()
                    outTween.Completed:Wait()

                    if frame.Parent then
                        frame:Destroy()
                    end
                    top.Visible = false
                    host.Current = nil
                    handle._Closed = true
                end
            end
            host.Running = false
            if #host.Queue > 0 and host.Screen and host.Screen.Parent then
                processNativeNotificationQueue(host)
            end
        end)
    end

    local function enqueueNativeNotification(self, frame, settings, started)
        local host = ensureNativeNotificationHost(self)
        local handle = {
            Frame = frame,
            Time = math.max(0, tonumber(settings.Time) or 4),
            Started = started,
            _Closed = false,
            _Cancelled = false,
            _CloseRequested = false,
        }

        function handle:Close()
            if self._Closed then
                return
            end
            if host.Current == self then
                self._CloseRequested = true
            elseif removeQueuedNotification(host, self) then
                self._Cancelled = true
                self._Closed = true
                if self.Frame and self.Frame.Parent then
                    self.Frame:Destroy()
                end
            end
        end

        handle.Destroy = handle.Close

        local count = #host.Queue + (host.Current and 1 or 0)
        if count >= 6 then
            handle._Cancelled = true
            handle._Closed = true
            frame:Destroy()
            return handle
        end

        table.insert(host.Queue, handle)
        processNativeNotificationQueue(host)
        return handle
    end

    function Library:Alert(alertSettings, config)
        local settings = type(alertSettings) == "table" and alertSettings or {Desc = tostring(alertSettings)}
        if settings.Desc == nil and settings.Content ~= nil then
            settings.Desc = tostring(settings.Content)
        end
        if settings.Time == nil and settings.Duration ~= nil then
            settings.Time = settings.Duration
        end

        local frame = cloneNativeNotificationTemplate("Alert")
        local title = frame:FindFirstChild("Title")
        local desc = frame:FindFirstChild("Desc")
        if title then
            title.Text = tostring(settings.Title or "Alert")
        end
        if desc then
            desc.Text = tostring(settings.Desc or "")
        end

        return enqueueNativeNotification(self, frame, settings)
    end

    function Library:ImageAlert(alertSettings, config)
        local settings = type(alertSettings) == "table" and alertSettings or {Title = tostring(alertSettings)}
        if settings.Desc == nil and settings.Content ~= nil then
            settings.Desc = tostring(settings.Content)
        end
        if settings.Time == nil and settings.Duration ~= nil then
            settings.Time = settings.Duration
        end

        local frame = cloneNativeNotificationTemplate("ImageAlert")
        local textHolder = frame:FindFirstChild("TextHolder")
        local holder = frame:FindFirstChild("Holder")
        local title = textHolder and textHolder:FindFirstChild("Title")
        local desc = textHolder and textHolder:FindFirstChild("Desc")
        local image = holder and holder:FindFirstChild("ImageLabel")

        if title then
            title.Text = tostring(settings.Title or "Alert")
        end
        if desc then
            local content = settings.Desc
            if content == nil or tostring(content) == "" then
                desc.Visible = settings.UpdateTask ~= nil
                desc.Text = ""
            else
                desc.Visible = true
                desc.Text = tostring(content)
            end
        end
        if image and settings.Image ~= nil then
            image.Image = tostring(settings.Image)
        end

        local function started()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://15434452209"
            sound.Volume = 0.5
            sound.Parent = frame
            sound:Play()
            sound.Ended:Connect(function()
                if sound.Parent then
                    sound:Destroy()
                end
            end)

            if settings.UpdateTask and title and desc then
                task.spawn(function()
                    while frame.Parent do
                        local nextTitle, nextDesc = settings.UpdateTask()
                        title.Text = tostring(nextTitle or "")
                        desc.Text = tostring(nextDesc or "")
                        task.wait()
                    end
                end)
            end
        end

        return enqueueNativeNotification(self, frame, settings, started)
    end


    local function applyPS99Properties(object, properties)
        for property, value in pairs(properties) do
            pcall(function() object[property] = value end)
        end
        return object
    end

    local buildPS99MessageScreenCompiled
    local buildPS99MessageScreenSource = [============[
return function(applyPS99Properties)
    return function()
        local objects = {}
        objects[1] = Instance.new("ScreenGui")
        applyPS99Properties(objects[1], {
            ["ClipToDeviceSafeArea"] = true,
            ["DisplayOrder"] = 100,
            ["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.FullscreenExtension,
            ["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets,
            ["Enabled"] = false,
            ["ResetOnSpawn"] = false,
            ["ZIndexBehavior"] = Enum.ZIndexBehavior.Global,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Message",
        })
        objects[2] = Instance.new("Frame")
        applyPS99Properties(objects[2], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 120),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Frame",
        })
        objects[2].Parent = objects[1]
        objects[3] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[3], {
            ["AspectRatio"] = 1.25,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[3].Parent = objects[2]
        objects[4] = Instance.new("ImageLabel")
        applyPS99Properties(objects[4], {
            ["Image"] = "rbxassetid://13581793331",
            ["ImageColor3"] = Color3.new(0.0784313753, 0.227450997, 0.262745112),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.949999988,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Tile,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(0, 171, 0, 135),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "background",
        })
        objects[4].Parent = objects[2]
        objects[5] = Instance.new("UIGradient")
        applyPS99Properties(objects[5], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.310087, 0.39375, 0), NumberSequenceKeypoint.new(0.495641, 0.59375, 0), NumberSequenceKeypoint.new(0.738481, 0.825, 0), NumberSequenceKeypoint.new(1, 1, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[5].Parent = objects[4]
        objects[6] = Instance.new("UICorner")
        applyPS99Properties(objects[6], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
        })
        objects[6].Parent = objects[4]
        objects[7] = Instance.new("Frame")
        applyPS99Properties(objects[7], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Contents",
        })
        objects[7].Parent = objects[2]
        objects[8] = Instance.new("UICorner")
        applyPS99Properties(objects[8], {
            ["BottomLeftRadius"] = UDim.new(0.0500000007, 0),
            ["BottomRightRadius"] = UDim.new(0.0500000007, 0),
            ["TopLeftRadius"] = UDim.new(0.0500000007, 0),
            ["TopRightRadius"] = UDim.new(0.0500000007, 0),
            ["Name"] = "UICorner",
        })
        objects[8].Parent = objects[7]
        objects[9] = Instance.new("UIPadding")
        applyPS99Properties(objects[9], {
            ["PaddingBottom"] = UDim.new(0, 4),
            ["PaddingLeft"] = UDim.new(0, 4),
            ["PaddingRight"] = UDim.new(0, 4),
            ["PaddingTop"] = UDim.new(0, 4),
            ["Name"] = "UIPadding",
        })
        objects[9].Parent = objects[7]
        objects[10] = Instance.new("ImageButton")
        applyPS99Properties(objects[10], {
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.75, 0, 0.86406666, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.446375281, 0, 0.150000006, 25),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "No",
        })
        objects[10].Parent = objects[7]
        objects[11] = Instance.new("TextLabel")
        applyPS99Properties(objects[11], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "ffd648f3-e1a2-4aaa-a4ca-3d2d33940ff0",
            ["LocalizationMatchedSourceText"] = "No",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "No",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[11].Parent = objects[10]
        objects[12] = Instance.new("UIStroke")
        applyPS99Properties(objects[12], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[12].Parent = objects[11]
        objects[13] = Instance.new("UIGradient")
        applyPS99Properties(objects[13], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784314, 0.239216)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941, 0.490196))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "red gradient",
        })
        objects[13].Parent = objects[10]
        objects[14] = Instance.new("ImageLabel")
        applyPS99Properties(objects[14], {
            ["Image"] = "rbxasset://textures/ui/Controls/DefaultController/ButtonB@2x.png",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ConsoleButton",
        })
        objects[14].Parent = objects[10]
        objects[15] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[15], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[15].Parent = objects[14]
        objects[16] = Instance.new("UIScale")
        applyPS99Properties(objects[16], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[16].Parent = objects[10]
        objects[17] = Instance.new("ImageButton")
        applyPS99Properties(objects[17], {
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.86406666, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.446375281, 0, 0.150000006, 25),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Ok",
        })
        objects[17].Parent = objects[7]
        objects[18] = Instance.new("UIGradient")
        applyPS99Properties(objects[18], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360784, 0.937255, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.992157, 0.109804))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "green gradient",
        })
        objects[18].Parent = objects[17]
        objects[19] = Instance.new("TextLabel")
        applyPS99Properties(objects[19], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "327b59f3-3152-41a8-8434-3a067c37f8a4",
            ["LocalizationMatchedSourceText"] = "Ok!",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "Ok!",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[19].Parent = objects[17]
        objects[20] = Instance.new("UIStroke")
        applyPS99Properties(objects[20], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[20].Parent = objects[19]
        objects[21] = Instance.new("ImageLabel")
        applyPS99Properties(objects[21], {
            ["Image"] = "rbxasset://textures/ui/Controls/DefaultController/ButtonA@2x.png",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ConsoleButton",
        })
        objects[21].Parent = objects[17]
        objects[22] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[22], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[22].Parent = objects[21]
        objects[23] = Instance.new("UIScale")
        applyPS99Properties(objects[23], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[23].Parent = objects[17]
        objects[24] = Instance.new("ImageButton")
        applyPS99Properties(objects[24], {
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.25, 0, 0.86406666, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.446375281, 0, 0.150000006, 25),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Option1",
        })
        objects[24].Parent = objects[7]
        objects[25] = Instance.new("TextLabel")
        applyPS99Properties(objects[25], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "Option {number1}",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "Option 1",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[25].Parent = objects[24]
        objects[26] = Instance.new("UIStroke")
        applyPS99Properties(objects[26], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[26].Parent = objects[25]
        objects[27] = Instance.new("UIGradient")
        applyPS99Properties(objects[27], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.847059, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.529412, 1, 0.976471))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "blue gradient",
        })
        objects[27].Parent = objects[24]
        objects[28] = Instance.new("ImageLabel")
        applyPS99Properties(objects[28], {
            ["Image"] = "rbxasset://textures/ui/Controls/DefaultController/ButtonA@2x.png",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ConsoleButton",
        })
        objects[28].Parent = objects[24]
        objects[29] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[29], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[29].Parent = objects[28]
        objects[30] = Instance.new("UIScale")
        applyPS99Properties(objects[30], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[30].Parent = objects[24]
        objects[31] = Instance.new("ImageButton")
        applyPS99Properties(objects[31], {
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.75, 0, 0.86406666, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.446375281, 0, 0.150000006, 25),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Option2",
        })
        objects[31].Parent = objects[7]
        objects[32] = Instance.new("TextLabel")
        applyPS99Properties(objects[32], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "Option {number1}",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "Option 1",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[32].Parent = objects[31]
        objects[33] = Instance.new("UIStroke")
        applyPS99Properties(objects[33], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[33].Parent = objects[32]
        objects[34] = Instance.new("UIGradient")
        applyPS99Properties(objects[34], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.847059, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.529412, 1, 0.976471))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "blue gradient",
        })
        objects[34].Parent = objects[31]
        objects[35] = Instance.new("ImageLabel")
        applyPS99Properties(objects[35], {
            ["Image"] = "rbxasset://textures/ui/Controls/DefaultController/ButtonX@2x.png",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ConsoleButton",
        })
        objects[35].Parent = objects[31]
        objects[36] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[36], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[36].Parent = objects[35]
        objects[37] = Instance.new("UIScale")
        applyPS99Properties(objects[37], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[37].Parent = objects[31]
        objects[38] = Instance.new("ImageButton")
        applyPS99Properties(objects[38], {
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.25, 0, 0.86406666, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.446375281, 0, 0.150000006, 25),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Yes",
        })
        objects[38].Parent = objects[7]
        objects[39] = Instance.new("UIGradient")
        applyPS99Properties(objects[39], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360784, 0.937255, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.992157, 0.109804))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "green gradient",
        })
        objects[39].Parent = objects[38]
        objects[40] = Instance.new("TextLabel")
        applyPS99Properties(objects[40], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "0be263d1-c5c1-4d96-bd59-193306bb39ba",
            ["LocalizationMatchedSourceText"] = "Yes!",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "Yes!",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[40].Parent = objects[38]
        objects[41] = Instance.new("UIStroke")
        applyPS99Properties(objects[41], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[41].Parent = objects[40]
        objects[42] = Instance.new("ImageLabel")
        applyPS99Properties(objects[42], {
            ["Image"] = "rbxasset://textures/ui/Controls/DefaultController/ButtonA@2x.png",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ConsoleButton",
        })
        objects[42].Parent = objects[38]
        objects[43] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[43], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[43].Parent = objects[42]
        objects[44] = Instance.new("Frame")
        applyPS99Properties(objects[44], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.0299999993, 0, 0.119999997, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.349999994, 0, 0.349999994, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 110,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "CircularBar",
        })
        objects[44].Parent = objects[38]
        objects[45] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[45], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[45].Parent = objects[44]
        objects[46] = Instance.new("ImageLabel")
        applyPS99Properties(objects[46], {
            ["Image"] = "rbxassetid://8897745728",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 110,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Left",
        })
        objects[46].Parent = objects[44]
        objects[47] = Instance.new("UIGradient")
        applyPS99Properties(objects[47], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 180,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.499, 0, 0), NumberSequenceKeypoint.new(0.5, 1, 0), NumberSequenceKeypoint.new(1, 1, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[47].Parent = objects[46]
        objects[48] = Instance.new("ImageLabel")
        applyPS99Properties(objects[48], {
            ["Image"] = "rbxassetid://8897746094",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 110,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Right",
        })
        objects[48].Parent = objects[44]
        objects[49] = Instance.new("UIGradient")
        applyPS99Properties(objects[49], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = 180,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.499, 0, 0), NumberSequenceKeypoint.new(0.5, 1, 0), NumberSequenceKeypoint.new(1, 1, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[49].Parent = objects[48]
        objects[50] = Instance.new("UIScale")
        applyPS99Properties(objects[50], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[50].Parent = objects[38]
        objects[51] = Instance.new("ImageLabel")
        applyPS99Properties(objects[51], {
            ["Image"] = "rbxassetid://14968178095",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.439999998, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.800000012, 0, 0.234999999, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 8,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "CustomIcon",
        })
        objects[51].Parent = objects[7]
        objects[52] = Instance.new("TextLabel")
        applyPS99Properties(objects[52], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "Buy these items for {number1} Diamonds?",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "Buy these items for 10,312 Diamonds?",
            ["TextColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.AtEnd,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.164999992, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.850000024, 0, 0.25, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 7,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "CustomDesc",
        })
        objects[52].Parent = objects[7]
        objects[53] = Instance.new("UITextSizeConstraint")
        applyPS99Properties(objects[53], {
            ["MaxTextSize"] = 55,
            ["MinTextSize"] = 10,
            ["Name"] = "UITextSizeConstraint",
        })
        objects[53].Parent = objects[52]
        objects[54] = Instance.new("TextLabel")
        applyPS99Properties(objects[54], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "9f2e7402-31de-4604-bbde-e6fe767e67c8",
            ["LocalizationMatchedSourceText"] = "Bubble pop-up description?",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "Bubble pop-up description?",
            ["TextColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.AtEnd,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.165000007, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.550000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 7,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Desc",
        })
        objects[54].Parent = objects[7]
        objects[55] = Instance.new("UITextSizeConstraint")
        applyPS99Properties(objects[55], {
            ["MaxTextSize"] = 60,
            ["MinTextSize"] = 10,
            ["Name"] = "UITextSizeConstraint",
        })
        objects[55].Parent = objects[54]
        objects[56] = Instance.new("Frame")
        applyPS99Properties(objects[56], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(0, 0, 0),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 3,
            ["Position"] = UDim2.new(0.5, 0, 0.439999998, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.800000012, 0, 0.234999999, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "CurrencyCoins",
        })
        objects[56].Parent = objects[7]
        objects[57] = Instance.new("Frame")
        applyPS99Properties(objects[57], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 1000,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Gold Coins",
        })
        objects[57].Parent = objects[56]
        objects[58] = Instance.new("ImageLabel")
        applyPS99Properties(objects[58], {
            ["Image"] = "rbxassetid://14867116080",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.899999976, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Icon",
        })
        objects[58].Parent = objects[57]
        objects[59] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[59], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[59].Parent = objects[58]
        objects[60] = Instance.new("TextLabel")
        applyPS99Properties(objects[60], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
            ["LineHeight"] = 0.899999976,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "999",
            ["TextColor3"] = Color3.new(1, 0.988235295, 0.858823538),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 0.800000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Amount",
        })
        objects[60].Parent = objects[57]
        objects[61] = Instance.new("UIStroke")
        applyPS99Properties(objects[61], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[61].Parent = objects[60]
        objects[62] = Instance.new("UIListLayout")
        applyPS99Properties(objects[62], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0, 2),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["Name"] = "UIListLayout",
        })
        objects[62].Parent = objects[57]
        objects[63] = Instance.new("Frame")
        applyPS99Properties(objects[63], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 100,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Gold Bars",
        })
        objects[63].Parent = objects[56]
        objects[64] = Instance.new("ImageLabel")
        applyPS99Properties(objects[64], {
            ["Image"] = "rbxassetid://14867116225",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.899999976, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Icon",
        })
        objects[64].Parent = objects[63]
        objects[65] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[65], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[65].Parent = objects[64]
        objects[66] = Instance.new("TextLabel")
        applyPS99Properties(objects[66], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
            ["LineHeight"] = 0.899999976,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "999",
            ["TextColor3"] = Color3.new(1, 0.972549021, 0.607843161),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 0.800000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Amount",
        })
        objects[66].Parent = objects[63]
        objects[67] = Instance.new("UIStroke")
        applyPS99Properties(objects[67], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[67].Parent = objects[66]
        objects[68] = Instance.new("UIListLayout")
        applyPS99Properties(objects[68], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0, 2),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["Name"] = "UIListLayout",
        })
        objects[68].Parent = objects[63]
        objects[69] = Instance.new("UIListLayout")
        applyPS99Properties(objects[69], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0.0599999987, 0),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["Name"] = "UIListLayout",
        })
        objects[69].Parent = objects[56]
        objects[70] = Instance.new("Frame")
        applyPS99Properties(objects[70], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 10,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Platinum Coins",
        })
        objects[70].Parent = objects[56]
        objects[71] = Instance.new("ImageLabel")
        applyPS99Properties(objects[71], {
            ["Image"] = "rbxassetid://14867115964",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.899999976, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Icon",
        })
        objects[71].Parent = objects[70]
        objects[72] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[72], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[72].Parent = objects[71]
        objects[73] = Instance.new("TextLabel")
        applyPS99Properties(objects[73], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
            ["LineHeight"] = 0.899999976,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "99",
            ["TextColor3"] = Color3.new(0.968627453, 1, 0.996078432),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 0.800000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Amount",
        })
        objects[73].Parent = objects[70]
        objects[74] = Instance.new("UIStroke")
        applyPS99Properties(objects[74], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[74].Parent = objects[73]
        objects[75] = Instance.new("UIListLayout")
        applyPS99Properties(objects[75], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0, 2),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["Name"] = "UIListLayout",
        })
        objects[75].Parent = objects[70]
        objects[76] = Instance.new("Frame")
        applyPS99Properties(objects[76], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 1,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Platinum Bars",
        })
        objects[76].Parent = objects[56]
        objects[77] = Instance.new("ImageLabel")
        applyPS99Properties(objects[77], {
            ["Image"] = "rbxassetid://14867115795",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.899999976, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Icon",
        })
        objects[77].Parent = objects[76]
        objects[78] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[78], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[78].Parent = objects[77]
        objects[79] = Instance.new("TextLabel")
        applyPS99Properties(objects[79], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
            ["LineHeight"] = 0.899999976,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "9",
            ["TextColor3"] = Color3.new(0.835294127, 1, 0.968627453),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 0.800000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Amount",
        })
        objects[79].Parent = objects[76]
        objects[80] = Instance.new("UIStroke")
        applyPS99Properties(objects[80], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[80].Parent = objects[79]
        objects[81] = Instance.new("UIListLayout")
        applyPS99Properties(objects[81], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0, 2),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["Name"] = "UIListLayout",
        })
        objects[81].Parent = objects[76]
        objects[82] = Instance.new("UIPadding")
        applyPS99Properties(objects[82], {
            ["PaddingBottom"] = UDim.new(0.0700000003, 0),
            ["PaddingLeft"] = UDim.new(0, 8),
            ["PaddingRight"] = UDim.new(0, 8),
            ["PaddingTop"] = UDim.new(0.0700000003, 0),
            ["Name"] = "UIPadding",
        })
        objects[82].Parent = objects[56]
        objects[83] = Instance.new("ScrollingFrame")
        applyPS99Properties(objects[83], {
            ["AutomaticCanvasSize"] = Enum.AutomaticSize.X,
            ["BottomImage"] = "rbxasset://textures/ui/Scroll/scroll-bottom.png",
            ["CanvasPosition"] = Vector2.new(0, 0),
            ["CanvasSize"] = UDim2.new(0, 0, 0, 0),
            ["ElasticBehavior"] = Enum.ElasticBehavior.WhenScrollable,
            ["HorizontalScrollBarInset"] = Enum.ScrollBarInset.None,
            ["MidImage"] = "rbxasset://textures/ui/Scroll/scroll-middle.png",
            ["ScrollBarImageColor3"] = Color3.new(0, 0, 0),
            ["ScrollBarImageTransparency"] = 0,
            ["ScrollBarThickness"] = 12,
            ["ScrollingDirection"] = Enum.ScrollingDirection.Y,
            ["ScrollingEnabled"] = true,
            ["TopImage"] = "rbxasset://textures/ui/Scroll/scroll-top.png",
            ["VerticalScrollBarInset"] = Enum.ScrollBarInset.None,
            ["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Right,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.419999987, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.300000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = true,
            ["Name"] = "CustomHolder",
        })
        objects[83].Parent = objects[7]
        objects[84] = Instance.new("UIListLayout")
        applyPS99Properties(objects[84], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0, 10),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Center,
            ["Name"] = "UIListLayout",
        })
        objects[84].Parent = objects[83]
        objects[85] = Instance.new("UICorner")
        applyPS99Properties(objects[85], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
        })
        objects[85].Parent = objects[2]
        objects[86] = Instance.new("ImageLabel")
        applyPS99Properties(objects[86], {
            ["Image"] = "rbxassetid://14001321443",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.75,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(50, 50, 150, 150),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 35, 1, 35),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = -1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "shadow",
        })
        objects[86].Parent = objects[2]
        objects[87] = Instance.new("UIStroke")
        applyPS99Properties(objects[87], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Round,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 6.76990747,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[87].Parent = objects[2]
        objects[88] = Instance.new("Frame")
        applyPS99Properties(objects[88], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.150000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Top",
        })
        objects[88].Parent = objects[2]
        objects[89] = Instance.new("UIGradient")
        applyPS99Properties(objects[89], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.215686, 0.764706, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.368627, 0.937255, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[89].Parent = objects[88]
        objects[90] = Instance.new("Frame")
        applyPS99Properties(objects[90], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "background-side",
        })
        objects[90].Parent = objects[88]
        objects[91] = Instance.new("UIGradient")
        applyPS99Properties(objects[91], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.215686, 0.764706, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.368627, 0.937255, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, -0.5),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[91].Parent = objects[90]
        objects[92] = Instance.new("UICorner")
        applyPS99Properties(objects[92], {
            ["BottomLeftRadius"] = UDim.new(0.239999995, 0),
            ["BottomRightRadius"] = UDim.new(0.239999995, 0),
            ["TopLeftRadius"] = UDim.new(0.239999995, 0),
            ["TopRightRadius"] = UDim.new(0.239999995, 0),
            ["Name"] = "UICorner",
        })
        objects[92].Parent = objects[88]
        objects[93] = Instance.new("TextLabel")
        applyPS99Properties(objects[93], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "c15c36f4-f01f-4e5e-afab-d05105f45cc8",
            ["LocalizationMatchedSourceText"] = "You're so lucky!",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "You're so lucky!",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.AtEnd,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.50000006, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.675000012, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Title",
        })
        objects[93].Parent = objects[88]
        objects[94] = Instance.new("UIStroke")
        applyPS99Properties(objects[94], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[94].Parent = objects[93]
        objects[95] = Instance.new("ImageButton")
        applyPS99Properties(objects[95], {
            ["HoverImage"] = "",
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.990999997, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.0599999987, 45),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 50,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Close",
        })
        objects[95].Parent = objects[2]
        objects[96] = Instance.new("UIAspectRatioConstraint")
        applyPS99Properties(objects[96], {
            ["AspectRatio"] = 1.04999995,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[96].Parent = objects[95]
        objects[97] = Instance.new("UIGradient")
        applyPS99Properties(objects[97], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784314, 0.239216)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941, 0.490196))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "red gradient",
        })
        objects[97].Parent = objects[95]
        objects[98] = Instance.new("TextLabel")
        applyPS99Properties(objects[98], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = false,
            ["Text"] = "X",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 50,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[98].Parent = objects[95]
        objects[99] = Instance.new("UIStroke")
        applyPS99Properties(objects[99], {
            ["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual,
            ["BorderOffset"] = UDim.new(0, 0),
            ["BorderStrokePosition"] = Enum.BorderStrokePosition.Outer,
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["LineJoinMode"] = Enum.LineJoinMode.Bevel,
            ["StrokeSizingMode"] = Enum.StrokeSizingMode.FixedSize,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[99].Parent = objects[98]
        objects[100] = Instance.new("ImageLabel")
        applyPS99Properties(objects[100], {
            ["Image"] = "rbxassetid://14001321443",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.75,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(50, 50, 150, 150),
            ["SliceScale"] = 0.75,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.600000024, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1.10000002, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 49,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "shadow",
        })
        objects[100].Parent = objects[95]
        objects[101] = Instance.new("UIScale")
        applyPS99Properties(objects[101], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[101].Parent = objects[95]
        objects[102] = Instance.new("UIPadding")
        applyPS99Properties(objects[102], {
            ["PaddingBottom"] = UDim.new(0, 0),
            ["PaddingLeft"] = UDim.new(0, 0),
            ["PaddingRight"] = UDim.new(0, 0),
            ["PaddingTop"] = UDim.new(0, -12),
            ["Name"] = "UIPadding",
        })
        objects[102].Parent = objects[1]
        return objects[1]
    end
end
]============]

    local function buildPS99MessageScreen()
        if not buildPS99MessageScreenCompiled then
            local compiler = loadstring or load
            assert(type(compiler) == "function", "PlantVsCoinsUI: loadstring is required for the embedded message UI fallback")
            local chunk, compileError = compiler(buildPS99MessageScreenSource)
            assert(chunk, compileError)
            buildPS99MessageScreenCompiled = chunk()(applyPS99Properties)
            buildPS99MessageScreenSource = nil
        end
        return buildPS99MessageScreenCompiled()
    end

    local buildPS99BottomMessageTemplateCompiled
    local buildPS99BottomMessageTemplateSource = [============[
return function(applyPS99Properties)
    return function()
        local objects = {}
        objects[1] = Instance.new("CanvasGroup")
        applyPS99Properties(objects[1], {
            ["GroupColor3"] = Color3.new(1, 1, 1),
            ["GroupTransparency"] = 0,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = true,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.200000003, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Message",
        })
        objects[2] = Instance.new("Frame")
        applyPS99Properties(objects[2], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Frame",
        })
        objects[2].Parent = objects[1]
        objects[3] = Instance.new("UIListLayout")
        applyPS99Properties(objects[3], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0, 12),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Top,
            ["Name"] = "UIListLayout",
        })
        objects[3].Parent = objects[2]
        objects[4] = Instance.new("TextLabel")
        applyPS99Properties(objects[4], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["LocalizationMatchIdentifier"] = "",
            ["LocalizationMatchedSourceText"] = "",
            ["MaxVisibleGraphemes"] = -1,
            ["OpenTypeFeatures"] = "",
            ["RichText"] = true,
            ["Text"] = "Generic message w00t!",
            ["TextColor3"] = Color3.new(0.0901960805, 0.168627456, 0.223529428),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.X,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 2,
            ["Position"] = UDim2.new(0, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[4].Parent = objects[2]
        objects[5] = Instance.new("ImageLabel")
        applyPS99Properties(objects[5], {
            ["Image"] = "rbxassetid://13873482240",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.649999976,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Stretch,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.100000001, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.400000006, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Shadow",
        })
        objects[5].Parent = objects[1]
        return objects[1]
    end
end
]============]

    local function buildPS99BottomMessageTemplate()
        if not buildPS99BottomMessageTemplateCompiled then
            local compiler = loadstring or load
            assert(type(compiler) == "function", "PlantVsCoinsUI: loadstring is required for the embedded bottom-message template fallback")
            local chunk, compileError = compiler(buildPS99BottomMessageTemplateSource)
            assert(chunk, compileError)
            buildPS99BottomMessageTemplateCompiled = chunk()(applyPS99Properties)
            buildPS99BottomMessageTemplateSource = nil
        end
        return buildPS99BottomMessageTemplateCompiled()
    end

    local buildPS99BottomHostCompiled
    local buildPS99BottomHostSource = [============[
return function(applyPS99Properties)
    return function()
        local objects = {}
        objects[1] = Instance.new("Frame")
        applyPS99Properties(objects[1], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.800000012, -40),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.5, 25, 0.119999997, 55),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Bottom",
        })
        objects[2] = Instance.new("UIListLayout")
        applyPS99Properties(objects[2], {
            ["HorizontalFlex"] = Enum.UIFlexAlignment.None,
            ["ItemLineAlignment"] = Enum.ItemLineAlignment.Automatic,
            ["Padding"] = UDim.new(0.0250000004, 0),
            ["VerticalFlex"] = Enum.UIFlexAlignment.None,
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Vertical,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Bottom,
            ["Name"] = "UIListLayout",
        })
        objects[2].Parent = objects[1]
        return objects[1]
    end
end
]============]

    local function buildPS99BottomHost()
        if not buildPS99BottomHostCompiled then
            local compiler = loadstring or load
            assert(type(compiler) == "function", "PlantVsCoinsUI: loadstring is required for the embedded bottom-message host fallback")
            local chunk, compileError = compiler(buildPS99BottomHostSource)
            assert(chunk, compileError)
            buildPS99BottomHostCompiled = chunk()(applyPS99Properties)
            buildPS99BottomHostSource = nil
        end
        return buildPS99BottomHostCompiled()
    end


    local function getPS99UIParent(self)
        local parent = self.Screen and self.Screen.Parent
        if parent then
            return parent
        end
        local player = Players.LocalPlayer
        if not player then
            return nil
        end
        return player:FindFirstChildOfClass("PlayerGui") or player:WaitForChild("PlayerGui")
    end

    local function playPS99UISound(soundId, volume, parent)
        local sound = Instance.new("Sound")
        sound.SoundId = soundId
        sound.Volume = volume
        sound.Parent = parent or game:GetService("SoundService")
        sound:Play()
        sound.Ended:Connect(function()
            if sound.Parent then
                sound:Destroy()
            end
        end)
        task.delay(10, function()
            if sound.Parent then
                sound:Destroy()
            end
        end)
        return sound
    end

    local function findDirect(parent, name)
        return parent and parent:FindFirstChild(name)
    end

    function Library:Message(messageSettings, options)
        local settings
        local message
        if type(messageSettings) == "table" then
            settings = messageSettings
            message = settings.Message or settings.Content or settings.Desc or ""
        else
            settings = type(options) == "table" and options or {}
            message = messageSettings
        end

        if self.ActivePS99Message then
            return nil
        end

        local parent = getPS99UIParent(self)
        if not parent then
            return nil
        end

        local screen = buildPS99MessageScreen()
        local frame = findDirect(screen, "Frame")
        local contents = findDirect(frame, "Contents")
        local top = findDirect(frame, "Top")
        local title = findDirect(top, "Title")
        local close = findDirect(frame, "Close")
        local ok = findDirect(contents, "Ok")
        local no = findDirect(contents, "No")
        local yes = findDirect(contents, "Yes")
        local option1 = findDirect(contents, "Option1")
        local option2 = findDirect(contents, "Option2")
        local desc = findDirect(contents, "Desc")
        local customDesc = findDirect(contents, "CustomDesc")
        local customIcon = findDirect(contents, "CustomIcon")
        local customHolder = findDirect(contents, "CustomHolder")
        local currencyCoins = findDirect(contents, "CurrencyCoins")

        local isError = settings.err == true or settings.Error == true or settings.Type == "Error"
        local icon = settings.icon or settings.Icon
        if isError and not icon then
            icon = "rbxassetid://14693511016"
        end
        local titleText = settings.title or settings.Title
        if titleText == nil then
            titleText = isError and "Oops!" or "Hey!"
        end

        if title then
            title.Text = tostring(titleText)
        end
        if customIcon then
            customIcon.Visible = icon ~= nil and tostring(icon) ~= ""
            customIcon.Image = customIcon.Visible and tostring(icon) or ""
            customIcon.ImageColor3 = settings.iconColor or settings.IconColor or Color3.new(1, 1, 1)
        end
        if customDesc then
            customDesc.Visible = customIcon and customIcon.Visible or false
            customDesc.Text = tostring(message or "")
        end
        if desc then
            desc.Visible = not (customIcon and customIcon.Visible)
            desc.Text = tostring(message or "")
        end
        if ok then
            ok.Visible = true
        end
        if close then
            close.Visible = true
        end
        if no then
            no.Visible = false
        end
        if yes then
            yes.Visible = false
        end
        if option1 then
            option1.Visible = false
        end
        if option2 then
            option2.Visible = false
        end
        if customHolder then
            customHolder.Visible = false
        end
        if currencyCoins then
            currencyCoins.Visible = false
        end

        screen.Parent = parent
        screen.Enabled = true

        local scale = frame:FindFirstChildOfClass("UIScale")
        if not scale then
            scale = Instance.new("UIScale")
            scale.Name = "TabControllerUIScale"
            scale.Parent = frame
        end
        scale.Scale = 0.975
        frame.Position = UDim2.new(0.5, 0, 0.6, frame.Position.Y.Offset)

        TweenService:Create(frame, TweenInfo.new(0.1, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
            Position = UDim2.new(0.5, 0, 0.5, 0),
        }):Play()
        TweenService:Create(scale, TweenInfo.new(0.15, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {
            Scale = 1,
        }):Play()

        playPS99UISound("rbxassetid://12413423178", 0.5, screen)

        local closed = false
        local handle = {}
        self.ActivePS99Message = handle

        local function closeMessage(immediate)
            if closed then
                return
            end
            closed = true
            if self.ActivePS99Message == handle then
                self.ActivePS99Message = nil
            end

            if immediate then
                screen:Destroy()
                return
            end

            local tween = TweenService:Create(frame, TweenInfo.new(0.045, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                Position = UDim2.new(0.5, 0, 0.6, frame.Position.Y.Offset),
            })
            TweenService:Create(scale, TweenInfo.new(0.045, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {
                Scale = 0.85,
            }):Play()
            tween:Play()
            tween.Completed:Connect(function()
                if screen.Parent then
                    screen:Destroy()
                end
            end)
        end

        function handle:Close(immediate)
            closeMessage(immediate == true)
        end
        handle.Destroy = handle.Close
        handle.Screen = screen
        handle.Frame = frame

        if ok then
            GUIFX.ButtonFX(ok)
            ok.Activated:Connect(function()
                closeMessage(false)
                if settings.Callback then
                    safeCall(settings.Callback)
                end
            end)
        end
        if close then
            GUIFX.ButtonFX(close)
            close.Activated:Connect(function()
                closeMessage(false)
            end)
        end

        return handle
    end

    function Library:Error(messageSettings)
        if type(messageSettings) == "table" then
            local settings = {}
            for key, value in pairs(messageSettings) do
                settings[key] = value
            end
            settings.err = true
            return self:Message(settings)
        end
        return self:Message(tostring(messageSettings or "Something went wrong."), {err = true})
    end

    Library.CreateMessage = Library.Message
    Library.ErrorMessage = Library.Error
    Library.CreateError = Library.Error

    local function ensurePS99BottomMessageHost(self)
        local state = self._PS99BottomMessageState
        if state and state.Host and state.Host.Parent then
            return state
        end

        local nativeHost = ensureNativeNotificationHost(self)
        local bottom = nativeHost.Screen:FindFirstChild("Bottom")
        if not bottom then
            bottom = buildPS99BottomHost()
            bottom.Parent = nativeHost.Screen
        end

        state = {
            Host = bottom,
            Queue = {},
            Renders = {},
            LayoutOrder = 0,
            Running = false,
        }
        self._PS99BottomMessageState = state
        return state
    end

    local function removePS99BottomEntry(list, entry)
        for index, value in ipairs(list) do
            if value == entry then
                table.remove(list, index)
                return true
            end
        end
        return false
    end

    local function fadePS99BottomMessage(entry, state)
        if entry.Tweening then
            return
        end
        entry.Tweening = true
        local frame = entry.Frame
        local gradient = frame and frame:FindFirstChildOfClass("UIGradient")
        if gradient then
            gradient.Rotation = 45
            local started = os.clock()
            while frame.Parent do
                local alpha = math.clamp((os.clock() - started) / 0.35, 0, 1)
                local first = TweenService:GetValue(alpha, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                local rest = TweenService:GetValue(alpha, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                gradient.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, first),
                    NumberSequenceKeypoint.new(1 - alpha * 0.99, rest),
                    NumberSequenceKeypoint.new(1, rest),
                })
                if alpha >= 1 then
                    break
                end
                RunService.RenderStepped:Wait()
            end
        end
        if frame and frame.Parent then
            frame:Destroy()
        end
        removePS99BottomEntry(state.Renders, entry)
        entry.Closed = true
    end

    local function processPS99BottomMessages(self, state)
        if state.Running then
            return
        end
        state.Running = true
        task.spawn(function()
            local lastCreated = 0
            while state.Host and state.Host.Parent do
                local now = os.clock()

                for index = #state.Renders, 1, -1 do
                    local entry = state.Renders[index]
                    if entry.CloseRequested or now - entry.Created > entry.Time then
                        task.spawn(fadePS99BottomMessage, entry, state)
                    end
                end

                if #state.Queue > 0 and #state.Renders < 3 and now - lastCreated >= 0.1 then
                    local entry = table.remove(state.Queue, 1)
                    if not entry.Cancelled then
                        lastCreated = now
                        state.LayoutOrder += 1
                        entry.Created = now
                        table.insert(state.Renders, entry)

                        local frame = entry.Frame
                        local scale = frame:FindFirstChildOfClass("UIScale") or Instance.new("UIScale")
                        scale.Parent = frame
                        scale.Scale = 1.35

                        local gradient = Instance.new("UIGradient")
                        gradient.Parent = frame

                        frame.AnchorPoint = Vector2.new(0.5, 0.5)
                        frame.LayoutOrder = state.LayoutOrder
                        frame.Parent = state.Host

                        TweenService:Create(scale, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
                            Scale = 1,
                        }):Play()

                        if entry.Sound then
                            playPS99UISound(entry.Sound, entry.SoundVolume or 0.75, frame)
                        end
                        playPS99UISound("rbxassetid://14254721038", 0.6, frame)

                        task.delay(0.65, function()
                            local shadow = frame:FindFirstChild("Shadow")
                            if shadow and shadow:IsA("ImageLabel") then
                                TweenService:Create(shadow, TweenInfo.new(1.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
                                    ImageTransparency = 1,
                                }):Play()
                            end
                        end)
                    end
                end

                if #state.Queue == 0 and #state.Renders == 0 then
                    break
                end
                RunService.RenderStepped:Wait()
            end
            state.Running = false
            if #state.Queue > 0 and state.Host and state.Host.Parent then
                processPS99BottomMessages(self, state)
            end
        end)
    end

    function Library:BottomMessage(messageSettings, config)
        local settings
        if type(messageSettings) == "table" then
            settings = {}
            for key, value in pairs(messageSettings) do
                settings[key] = value
            end
        else
            settings = {Message = tostring(messageSettings)}
        end
        if type(config) == "table" then
            for key, value in pairs(config) do
                settings[key] = value
            end
        end

        local state = ensurePS99BottomMessageHost(self)
        local frame = buildPS99BottomMessageTemplate()
        local holder = frame:FindFirstChild("Frame")
        local textLabel = holder and holder:FindFirstChild("TextLabel")
        local text = tostring(settings.Message or settings.Content or settings.Text or "")
        local color = settings.Color

        if textLabel then
            if typeof(color) == "Color3" then
                textLabel.Text = ("<stroke color=\"#172b39\" joins=\"bevel\" thickness=\"3\" transparency=\"0\"><font color=\"#%s\">%s</font></stroke>"):format(color:ToHex(), text)
            else
                textLabel.Text = ("<stroke color=\"#172b39\" joins=\"bevel\" thickness=\"3\" transparency=\"0\"><font color=\"#ffffff\">%s</font></stroke>"):format(text)
            end
        end

        local entry = {
            Frame = frame,
            Time = math.max(0, tonumber(settings.Time or settings.Duration) or 4),
            Sound = settings.Sound,
            SoundVolume = settings.SoundVolume,
            Cancelled = false,
            Closed = false,
            CloseRequested = false,
        }

        local handle = {
            Frame = frame,
        }

        function handle:Close()
            if entry.Closed then
                return
            end
            if removePS99BottomEntry(state.Queue, entry) then
                entry.Cancelled = true
                entry.Closed = true
                if frame.Parent then
                    frame:Destroy()
                end
                return
            end
            entry.CloseRequested = true
        end
        handle.Destroy = handle.Close

        if #state.Queue + #state.Renders >= 20 then
            entry.Cancelled = true
            entry.Closed = true
            frame:Destroy()
            return handle
        end

        table.insert(state.Queue, entry)
        processPS99BottomMessages(self, state)
        return handle
    end

    Library.NotificationMessage = Library.BottomMessage
    Library.CreateBottomMessage = Library.BottomMessage

    local function applyGoalProperties(object, properties)
        for property, value in pairs(properties) do
            local success = pcall(function()
                object[property] = value
            end)
            if not success and object:IsA("UICorner") and string.find(property, "Radius", 1, true) then
                pcall(function()
                    object.CornerRadius = value
                end)
            end
        end
        return object
    end

    local buildPS99GoalScreenCompiled
    local buildPS99GoalScreenSource = [============[
return function(applyGoalProperties)
    return function()
        local objects = {}
        objects[1] = Instance.new("ScreenGui")
        applyGoalProperties(objects[1], {
            ["ClipToDeviceSafeArea"] = true,
            ["DisplayOrder"] = 0,
            ["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.FullscreenExtension,
            ["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets,
            ["Enabled"] = true,
            ["ResetOnSpawn"] = false,
            ["ZIndexBehavior"] = Enum.ZIndexBehavior.Global,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Goal",
        })
        objects[2] = Instance.new("UIPadding")
        applyGoalProperties(objects[2], {
            ["PaddingBottom"] = UDim.new(0, 0),
            ["PaddingLeft"] = UDim.new(0, 0),
            ["PaddingRight"] = UDim.new(0, 0),
            ["PaddingTop"] = UDim.new(0, -12),
            ["Name"] = "UIPadding",
        })
        objects[2].Parent = objects[1]
        objects[3] = Instance.new("Frame")
        applyGoalProperties(objects[3], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.0299999993, 15),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.147499993, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Frame",
        })
        objects[3].Parent = objects[1]
        objects[4] = Instance.new("ImageLabel")
        applyGoalProperties(objects[4], {
            ["Image"] = "rbxassetid://13581793331",
            ["ImageColor3"] = Color3.new(0.0784313753, 0.227450997, 0.262745112),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.949999988,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Tile,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(0, 171, 0, 135),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "background",
        })
        objects[4].Parent = objects[3]
        objects[5] = Instance.new("UIGradient")
        applyGoalProperties(objects[5], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.310087, 0.39375, 0), NumberSequenceKeypoint.new(0.495641, 0.59375, 0), NumberSequenceKeypoint.new(0.738481, 0.825, 0), NumberSequenceKeypoint.new(1, 1, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[5].Parent = objects[4]
        objects[6] = Instance.new("UICorner")
        applyGoalProperties(objects[6], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
        })
        objects[6].Parent = objects[4]
        objects[7] = Instance.new("UIStroke")
        applyGoalProperties(objects[7], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["Enabled"] = true,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[7].Parent = objects[3]
        objects[8] = Instance.new("UICorner")
        applyGoalProperties(objects[8], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
        })
        objects[8].Parent = objects[3]
        objects[9] = Instance.new("Frame")
        applyGoalProperties(objects[9], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 1.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Buttons",
        })
        objects[9].Parent = objects[3]
        objects[10] = Instance.new("ImageButton")
        applyGoalProperties(objects[10], {
            ["Image"] = "rbxassetid://14423621163",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["PressedImage"] = "rbxassetid://14423621349",
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(20, 20, 80, 80),
            ["SliceScale"] = 0.967129648,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["AutoButtonColor"] = true,
            ["Modal"] = false,
            ["Selected"] = false,
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = true,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = true,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1.29999995, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Teleport",
        })
        objects[10].Parent = objects[9]
        objects[11] = Instance.new("UIGradient")
        applyGoalProperties(objects[11], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.360784, 0.937255, 0)), ColorSequenceKeypoint.new(1, Color3.new(0.639216, 0.992157, 0.109804))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "GreenGradient",
        })
        objects[11].Parent = objects[10]
        objects[12] = Instance.new("TextLabel")
        applyGoalProperties(objects[12], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["MaxVisibleGraphemes"] = -1,
            ["RichText"] = false,
            ["Text"] = "Return to Area",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.899999976, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 6,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "TextLabel",
        })
        objects[12].Parent = objects[10]
        objects[13] = Instance.new("UIStroke")
        applyGoalProperties(objects[13], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[13].Parent = objects[12]
        objects[14] = Instance.new("ImageLabel")
        applyGoalProperties(objects[14], {
            ["Image"] = "rbxasset://textures/ui/Controls/DefaultController/ButtonA@2x.png",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ConsoleButton",
        })
        objects[14].Parent = objects[10]
        objects[15] = Instance.new("UIAspectRatioConstraint")
        applyGoalProperties(objects[15], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[15].Parent = objects[14]
        objects[16] = Instance.new("UIScale")
        applyGoalProperties(objects[16], {
            ["Scale"] = 1,
            ["Name"] = "ButtonUIScale",
        })
        objects[16].Parent = objects[10]
        objects[17] = Instance.new("UIPadding")
        applyGoalProperties(objects[17], {
            ["PaddingBottom"] = UDim.new(0.0500000007, 0),
            ["PaddingLeft"] = UDim.new(0.0500000007, 0),
            ["PaddingRight"] = UDim.new(0.0500000007, 0),
            ["PaddingTop"] = UDim.new(0, 0),
            ["Name"] = "UIPadding",
        })
        objects[17].Parent = objects[9]
        objects[18] = Instance.new("UIListLayout")
        applyGoalProperties(objects[18], {
            ["Padding"] = UDim.new(0.0250000004, 0),
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Center,
            ["Name"] = "UIListLayout",
        })
        objects[18].Parent = objects[9]
        objects[19] = Instance.new("ImageLabel")
        applyGoalProperties(objects[19], {
            ["Image"] = "rbxassetid://14001321443",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.75,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(50, 50, 150, 150),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 35, 1, 35),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = -2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "shadow",
        })
        objects[19].Parent = objects[3]
        objects[20] = Instance.new("UIAspectRatioConstraint")
        applyGoalProperties(objects[20], {
            ["AspectRatio"] = 2.4000001,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[20].Parent = objects[3]
        objects[21] = Instance.new("Frame")
        applyGoalProperties(objects[21], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(1.00009656, 0, 0.0121528208, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.159044489, 0, 0.24160248, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 13,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Notification",
        })
        objects[21].Parent = objects[3]
        objects[22] = Instance.new("UICorner")
        applyGoalProperties(objects[22], {
            ["BottomLeftRadius"] = UDim.new(1, 0),
            ["BottomRightRadius"] = UDim.new(1, 0),
            ["TopLeftRadius"] = UDim.new(1, 0),
            ["TopRightRadius"] = UDim.new(1, 0),
            ["Name"] = "UICorner",
        })
        objects[22].Parent = objects[21]
        objects[23] = Instance.new("TextLabel")
        applyGoalProperties(objects[23], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal),
            ["LineHeight"] = 0.899999976,
            ["MaxVisibleGraphemes"] = -1,
            ["RichText"] = false,
            ["Text"] = "99",
            ["TextColor3"] = Color3.new(1, 1, 1),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0, 0, 0),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.800000012, 0, 0.699999988, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 14,
            ["AutoLocalize"] = false,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Count",
        })
        objects[23].Parent = objects[21]
        objects[24] = Instance.new("UIStroke")
        applyGoalProperties(objects[24], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["Thickness"] = 2.41782403,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[24].Parent = objects[23]
        objects[25] = Instance.new("UIStroke")
        applyGoalProperties(objects[25], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0.301960796, 0, 0),
            ["Enabled"] = true,
            ["Thickness"] = 3.38495374,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[25].Parent = objects[21]
        objects[26] = Instance.new("UIAspectRatioConstraint")
        applyGoalProperties(objects[26], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[26].Parent = objects[21]
        objects[27] = Instance.new("UIGradient")
        applyGoalProperties(objects[27], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784314, 0.239216)), ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941, 0.490196))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "red gradient",
        })
        objects[27].Parent = objects[21]
        objects[28] = Instance.new("Frame")
        applyGoalProperties(objects[28], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 1, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Progress",
        })
        objects[28].Parent = objects[3]
        objects[29] = Instance.new("UIListLayout")
        applyGoalProperties(objects[29], {
            ["Padding"] = UDim.new(0, 0),
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Vertical,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Center,
            ["Name"] = "UIListLayout",
        })
        objects[29].Parent = objects[28]
        objects[30] = Instance.new("Frame")
        applyGoalProperties(objects[30], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(0, 0, 0),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 2,
            ["Position"] = UDim2.new(0.5, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.150000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 10,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "div",
        })
        objects[30].Parent = objects[28]
        objects[31] = Instance.new("TextLabel")
        applyGoalProperties(objects[31], {
            ["FontFace"] = Font.new("rbxassetid://11702779409", Enum.FontWeight.ExtraBold, Enum.FontStyle.Normal),
            ["LineHeight"] = 0.889999986,
            ["MaxVisibleGraphemes"] = -1,
            ["RichText"] = false,
            ["Text"] = "0/1",
            ["TextColor3"] = Color3.new(0.43921569, 0.929411769, 0.988235295),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 18,
            ["TextStrokeColor3"] = Color3.new(0.0745098069, 0.188235313, 0.223529428),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextTruncate"] = Enum.TextTruncate.None,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 3,
            ["Position"] = UDim2.new(0.5, 0, 0.999999881, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.400000006, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Amount",
        })
        objects[31].Parent = objects[28]
        objects[32] = Instance.new("UIStroke")
        applyGoalProperties(objects[32], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["Thickness"] = 2.41782403,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[32].Parent = objects[31]
        objects[33] = Instance.new("Frame")
        applyGoalProperties(objects[33], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(0, 0, 0),
            ["BackgroundTransparency"] = 0.5,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.219999999, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.800000012, 0, 0.200000003, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "ProgressBar",
        })
        objects[33].Parent = objects[28]
        objects[34] = Instance.new("UICorner")
        applyGoalProperties(objects[34], {
            ["BottomLeftRadius"] = UDim.new(1, 0),
            ["BottomRightRadius"] = UDim.new(1, 0),
            ["TopLeftRadius"] = UDim.new(1, 0),
            ["TopRightRadius"] = UDim.new(1, 0),
            ["Name"] = "UICorner",
        })
        objects[34].Parent = objects[33]
        objects[35] = Instance.new("Frame")
        applyGoalProperties(objects[35], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0, 1, 1.10000002, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 3,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Bar",
        })
        objects[35].Parent = objects[33]
        objects[36] = Instance.new("UIStroke")
        applyGoalProperties(objects[36], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0.0666666701, 0.192156881, 0.227450997),
            ["Enabled"] = true,
            ["Thickness"] = 1.9342593,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[36].Parent = objects[35]
        objects[37] = Instance.new("UIGradient")
        applyGoalProperties(objects[37], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(0.341176, 0.847059, 1)), ColorSequenceKeypoint.new(1, Color3.new(0.529412, 1, 0.976471))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 0, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[37].Parent = objects[35]
        objects[38] = Instance.new("UICorner")
        applyGoalProperties(objects[38], {
            ["BottomLeftRadius"] = UDim.new(1, 0),
            ["BottomRightRadius"] = UDim.new(1, 0),
            ["TopLeftRadius"] = UDim.new(1, 0),
            ["TopRightRadius"] = UDim.new(1, 0),
            ["Name"] = "UICorner",
        })
        objects[38].Parent = objects[35]
        objects[39] = Instance.new("Frame")
        applyGoalProperties(objects[39], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.600000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Message",
        })
        objects[39].Parent = objects[3]
        objects[40] = Instance.new("Frame")
        applyGoalProperties(objects[40], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(1, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 2,
            ["Position"] = UDim2.new(1, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.699999988, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Text",
        })
        objects[40].Parent = objects[39]
        objects[41] = Instance.new("TextLabel")
        applyGoalProperties(objects[41], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["MaxVisibleGraphemes"] = -1,
            ["RichText"] = false,
            ["Text"] = "Garden Quest!",
            ["TextColor3"] = Color3.new(0.43921569, 0.929411769, 0.988235295),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.164999992, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 7,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Title",
        })
        objects[41].Parent = objects[40]
        objects[42] = Instance.new("UIStroke")
        applyGoalProperties(objects[42], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[42].Parent = objects[41]
        objects[43] = Instance.new("TextLabel")
        applyGoalProperties(objects[43], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["MaxVisibleGraphemes"] = -1,
            ["RichText"] = false,
            ["Text"] = "Place your unit in the lane!",
            ["TextColor3"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.164999992, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 7,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Desc",
        })
        objects[43].Parent = objects[40]
        objects[44] = Instance.new("UIListLayout")
        applyGoalProperties(objects[44], {
            ["Padding"] = UDim.new(0, 0),
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Vertical,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Center,
            ["Name"] = "UIListLayout",
        })
        objects[44].Parent = objects[40]
        objects[45] = Instance.new("UIPadding")
        applyGoalProperties(objects[45], {
            ["PaddingBottom"] = UDim.new(0.100000001, 0),
            ["PaddingLeft"] = UDim.new(0.0250000004, 0),
            ["PaddingRight"] = UDim.new(0.0250000004, 0),
            ["PaddingTop"] = UDim.new(0.100000001, 0),
            ["Name"] = "UIPadding",
        })
        objects[45].Parent = objects[40]
        objects[46] = Instance.new("ImageLabel")
        applyGoalProperties(objects[46], {
            ["Image"] = "rbxassetid://17638331997",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 1,
            ["Position"] = UDim2.new(0, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 5,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "SideIcon",
        })
        objects[46].Parent = objects[39]
        objects[47] = Instance.new("UIAspectRatioConstraint")
        applyGoalProperties(objects[47], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[47].Parent = objects[46]
        objects[48] = Instance.new("UIListLayout")
        applyGoalProperties(objects[48], {
            ["Padding"] = UDim.new(0, 0),
            ["Wraps"] = false,
            ["FillDirection"] = Enum.FillDirection.Horizontal,
            ["HorizontalAlignment"] = Enum.HorizontalAlignment.Center,
            ["SortOrder"] = Enum.SortOrder.LayoutOrder,
            ["VerticalAlignment"] = Enum.VerticalAlignment.Center,
            ["Name"] = "UIListLayout",
        })
        objects[48].Parent = objects[39]
        objects[49] = Instance.new("UIPadding")
        applyGoalProperties(objects[49], {
            ["PaddingBottom"] = UDim.new(0, 0),
            ["PaddingLeft"] = UDim.new(0, 0),
            ["PaddingRight"] = UDim.new(0, 0),
            ["PaddingTop"] = UDim.new(0.0299999993, 0),
            ["Name"] = "UIPadding",
        })
        objects[49].Parent = objects[39]
        objects[50] = Instance.new("Frame")
        applyGoalProperties(objects[50], {
            ["Style"] = Enum.FrameStyle.Custom,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 0,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.150000006, 0, 1.10000002, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.75, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = false,
            ["ZIndex"] = 1,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "BonusReward",
        })
        objects[50].Parent = objects[3]
        objects[51] = Instance.new("ImageLabel")
        applyGoalProperties(objects[51], {
            ["Image"] = "rbxassetid://13581793331",
            ["ImageColor3"] = Color3.new(0.0784313753, 0.227450997, 0.262745112),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.949999988,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Tile,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(0, 171, 0, 135),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 1),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0, 0, 1, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 1, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "background",
        })
        objects[51].Parent = objects[50]
        objects[52] = Instance.new("UIGradient")
        applyGoalProperties(objects[52], {
            ["Color"] = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)), ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1))}),
            ["Enabled"] = true,
            ["Offset"] = Vector2.new(0, 0),
            ["Rotation"] = -90,
            ["Scale"] = 1,
            ["TileMode"] = Enum.GradientTileMode.Clamp,
            ["Transparency"] = NumberSequence.new({NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.310087, 0.39375, 0), NumberSequenceKeypoint.new(0.495641, 0.59375, 0), NumberSequenceKeypoint.new(0.738481, 0.825, 0), NumberSequenceKeypoint.new(1, 1, 0)}),
            ["Type"] = Enum.GradientType.Linear,
            ["Name"] = "UIGradient",
        })
        objects[52].Parent = objects[51]
        objects[53] = Instance.new("UICorner")
        applyGoalProperties(objects[53], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
        })
        objects[53].Parent = objects[51]
        objects[54] = Instance.new("ImageLabel")
        applyGoalProperties(objects[54], {
            ["Image"] = "rbxassetid://14001321443",
            ["ImageColor3"] = Color3.new(0, 0, 0),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0.75,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Slice,
            ["SliceCenter"] = Rect.new(50, 50, 150, 150),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.5, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 35, 1, 35),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = -2,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "shadow",
        })
        objects[54].Parent = objects[50]
        objects[55] = Instance.new("UIStroke")
        applyGoalProperties(objects[55], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0.164705887, 0.168627456, 0.192156866),
            ["Enabled"] = true,
            ["Thickness"] = 4.83564806,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[55].Parent = objects[50]
        objects[56] = Instance.new("UICorner")
        applyGoalProperties(objects[56], {
            ["BottomLeftRadius"] = UDim.new(0.0350000001, 0),
            ["BottomRightRadius"] = UDim.new(0.0350000001, 0),
            ["TopLeftRadius"] = UDim.new(0.0350000001, 0),
            ["TopRightRadius"] = UDim.new(0.0350000001, 0),
            ["Name"] = "UICorner",
        })
        objects[56].Parent = objects[50]
        objects[57] = Instance.new("ImageLabel")
        applyGoalProperties(objects[57], {
            ["Image"] = "rbxassetid://15048277894",
            ["ImageColor3"] = Color3.new(1, 1, 1),
            ["ImageRectOffset"] = Vector2.new(0, 0),
            ["ImageRectSize"] = Vector2.new(0, 0),
            ["ImageTransparency"] = 0,
            ["ResampleMode"] = Enum.ResamplerMode.Default,
            ["ScaleType"] = Enum.ScaleType.Fit,
            ["SliceCenter"] = Rect.new(0, 0, 0, 0),
            ["SliceScale"] = 1,
            ["TileSize"] = UDim2.new(1, 0, 1, 0),
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0, 0.5),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0, 0, 0),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 1,
            ["Position"] = UDim2.new(0.725000024, 0, 0.5, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(0.850000024, 0, 0.850000024, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 5,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "RewardImage",
        })
        objects[57].Parent = objects[50]
        objects[58] = Instance.new("UIAspectRatioConstraint")
        applyGoalProperties(objects[58], {
            ["AspectRatio"] = 1,
            ["AspectType"] = Enum.AspectType.FitWithinMaxSize,
            ["DominantAxis"] = Enum.DominantAxis.Width,
            ["Name"] = "UIAspectRatioConstraint",
        })
        objects[58].Parent = objects[57]
        objects[59] = Instance.new("TextLabel")
        applyGoalProperties(objects[59], {
            ["FontFace"] = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            ["LineHeight"] = 1,
            ["MaxVisibleGraphemes"] = -1,
            ["RichText"] = false,
            ["Text"] = "Bonus Item:",
            ["TextColor3"] = Color3.new(0.988235354, 0.941176534, 0.435294151),
            ["TextDirection"] = Enum.TextDirection.Auto,
            ["TextScaled"] = true,
            ["TextSize"] = 14,
            ["TextStrokeColor3"] = Color3.new(0.0666666701, 0.227450997, 0.282352954),
            ["TextStrokeTransparency"] = 1,
            ["TextTransparency"] = 0,
            ["TextWrapped"] = true,
            ["TextXAlignment"] = Enum.TextXAlignment.Center,
            ["TextYAlignment"] = Enum.TextYAlignment.Center,
            ["Active"] = false,
            ["AnchorPoint"] = Vector2.new(0.5, 0),
            ["AutomaticSize"] = Enum.AutomaticSize.None,
            ["BackgroundColor3"] = Color3.new(1, 1, 1),
            ["BackgroundTransparency"] = 1,
            ["BorderColor3"] = Color3.new(0.105882362, 0.164705887, 0.207843155),
            ["BorderMode"] = Enum.BorderMode.Outline,
            ["BorderSizePixel"] = 0,
            ["ClipsDescendants"] = false,
            ["Draggable"] = false,
            ["InputSink"] = Enum.InputSink.None,
            ["Interactable"] = true,
            ["LayoutOrder"] = 0,
            ["Position"] = UDim2.new(0.379999995, 0, 0.25, 0),
            ["Rotation"] = 0,
            ["Selectable"] = false,
            ["SelectionOrder"] = 0,
            ["Size"] = UDim2.new(1, 0, 0.5, 0),
            ["SizeConstraint"] = Enum.SizeConstraint.RelativeXY,
            ["Visible"] = true,
            ["ZIndex"] = 7,
            ["AutoLocalize"] = true,
            ["SelectionBehaviorDown"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorLeft"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorRight"] = Enum.SelectionBehavior.Escape,
            ["SelectionBehaviorUp"] = Enum.SelectionBehavior.Escape,
            ["SelectionGroup"] = false,
            ["Name"] = "Title",
        })
        objects[59].Parent = objects[50]
        objects[60] = Instance.new("UIStroke")
        applyGoalProperties(objects[60], {
            ["BorderOffset"] = UDim.new(0, 0),
            ["Color"] = Color3.new(0, 0, 0),
            ["Enabled"] = true,
            ["Thickness"] = 2.90138888,
            ["Transparency"] = 0,
            ["ZIndex"] = 1,
            ["Name"] = "UIStroke",
        })
        objects[60].Parent = objects[59]
        return objects[1]
    end
end
]============]

    local function buildPS99GoalScreen()
        if not buildPS99GoalScreenCompiled then
            local compiler = loadstring or load
            assert(type(compiler) == "function", "PlantVsCoinsUI: loadstring is required for the embedded goal UI fallback")
            local chunk, compileError = compiler(buildPS99GoalScreenSource)
            assert(chunk, compileError)
            buildPS99GoalScreenCompiled = chunk()(applyGoalProperties)
            buildPS99GoalScreenSource = nil
        end
        return buildPS99GoalScreenCompiled()
    end


    local function playPS99GoalShimmer(frame)
        if not frame or not frame.Parent then
            return
        end

        local shimmer = Instance.new("Frame")
        applyGoalProperties(shimmer, {
            Name = "Shimmer",
            Active = false,
            AnchorPoint = Vector2.new(0.5, 1),
            AutomaticSize = Enum.AutomaticSize.None,
            BackgroundColor3 = Color3.new(1, 1, 1),
            BackgroundTransparency = 0.5,
            BorderColor3 = Color3.new(0, 0, 0),
            BorderMode = Enum.BorderMode.Outline,
            BorderSizePixel = 0,
            ClipsDescendants = true,
            Interactable = true,
            Position = UDim2.new(0.5, 0, 0.99, 0),
            Rotation = 0,
            Selectable = false,
            Size = UDim2.new(0.96, 0, 0.93, 0),
            Visible = true,
            ZIndex = 11,
        })
        shimmer.Parent = frame

        local corner = Instance.new("UICorner")
        applyGoalProperties(corner, {
            BottomLeftRadius = UDim.new(0.18, 0),
            BottomRightRadius = UDim.new(0.18, 0),
            TopLeftRadius = UDim.new(0.18, 0),
            TopRightRadius = UDim.new(0.18, 0),
            CornerRadius = UDim.new(0.18, 0),
        })
        corner.Parent = shimmer

        local gradient = Instance.new("UIGradient")
        gradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
            ColorSequenceKeypoint.new(1, Color3.new(1, 1, 1)),
        })
        gradient.Enabled = true
        gradient.Offset = Vector2.new(-1, 0)
        gradient.Rotation = 25
        gradient.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1, 0),
            NumberSequenceKeypoint.new(0.375312, 0.18125, 0),
            NumberSequenceKeypoint.new(0.5, 0, 0),
            NumberSequenceKeypoint.new(0.639651, 0.1875, 0),
            NumberSequenceKeypoint.new(1, 1, 0),
        })
        gradient.Parent = shimmer

        local tween = TweenService:Create(
            gradient,
            TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
            {Offset = Vector2.new(1, 0)}
        )
        tween:Play()
        tween.Completed:Connect(function()
            if shimmer.Parent then
                shimmer:Destroy()
            end
        end)
    end

    local function playPS99GoalWiggle(frame)
        task.spawn(function()
            local elapsed = 0
            while elapsed < 1 and frame and frame.Parent do
                local delta = RunService.RenderStepped:Wait()
                elapsed += delta
                local alpha = math.clamp(elapsed, 0, 1)
                local rotation = 15 * math.sin(math.pi * 2 * (1 + alpha) * 6)
                frame.Rotation = rotation / (4 ^ (5 * alpha))
            end
            if frame and frame.Parent then
                frame.Rotation = 0
            end
        end)
    end

    local function playPS99GoalCompleteSound()
        local sound = Instance.new("Sound")
        sound.Name = "GoalComplete"
        sound.SoundId = "rbxassetid://17600460910"
        sound.Volume = 1
        sound.PlaybackSpeed = 1.1
        sound.Parent = SoundService
        sound.Ended:Connect(function()
            sound:Destroy()
        end)
        sound:Play()
        task.delay(8, function()
            if sound.Parent then
                sound:Destroy()
            end
        end)
    end

    local function getGoalParent(window)
        local parent = window.Screen and window.Screen.Parent
        if parent then
            return parent
        end
        local player = Players.LocalPlayer
        if player then
            return player:FindFirstChildOfClass("PlayerGui") or player:WaitForChild("PlayerGui")
        end
        return CoreGui
    end

    function Library:CreateGoal(goalSettings, legacyDescription, legacyIcon, legacyCurrent, legacyMaximum, legacyCallback)
        local settings
        if type(goalSettings) == "table" then
            settings = goalSettings
        else
            settings = {
                Title = tostring(goalSettings or "Goal"),
                Description = legacyDescription,
                Icon = legacyIcon,
                CurrentValue = legacyCurrent,
                MaxValue = legacyMaximum,
                ShowButton = type(legacyCallback) == "function",
                ButtonCallback = legacyCallback,
            }
        end

        if self.ActiveGoal and self.ActiveGoal.Destroy then
            self.ActiveGoal:Destroy()
        end

        local screen = buildPS99GoalScreen()
        screen.Enabled = false
        screen.DisplayOrder = tonumber(settings.DisplayOrder) or 0
        screen.Parent = getGoalParent(self)

        local frame = screen:WaitForChild("Frame")
        local message = frame:WaitForChild("Message")
        local textHolder = message:WaitForChild("Text")
        local titleLabel = textHolder:WaitForChild("Title")
        local descriptionLabel = textHolder:WaitForChild("Desc")
        local sideIcon = message:WaitForChild("SideIcon")
        local progressFrame = frame:WaitForChild("Progress")
        local amountLabel = progressFrame:WaitForChild("Amount")
        local progressBar = progressFrame:WaitForChild("ProgressBar")
        local bar = progressBar:WaitForChild("Bar")
        local teleport = frame:WaitForChild("Buttons"):WaitForChild("Teleport")
        local teleportText = teleport:WaitForChild("TextLabel")
        local notification = frame:WaitForChild("Notification")
        local notificationCount = notification:WaitForChild("Count")
        local bonusReward = frame:WaitForChild("BonusReward")
        local bonusTitle = bonusReward:WaitForChild("Title")
        local bonusImage = bonusReward:WaitForChild("RewardImage")

        local currentValue = tonumber(settings.CurrentValue or settings.Current or settings.Value)
        if currentValue == nil and type(settings.Progress) == "number" then
            currentValue = settings.Progress
        end
        currentValue = currentValue or 0

        local maximumValue = tonumber(settings.MaxValue or settings.Maximum or settings.Max or settings.Total or settings.Goal) or 1
        maximumValue = math.max(maximumValue, 0)

        local destroyed = false
        local completed = false
        local targetFill = bar.Size.X.Scale
        local progressProvider = type(settings.Progress) == "function" and settings.Progress or settings.UpdateProgress
        local descriptionProvider = type(settings.Description) == "function" and settings.Description or nil
        local titleProvider = type(settings.Title) == "function" and settings.Title or nil
        local connections = {}
        local control = {}
        local window = self

        local function formatNumber(value)
            if type(shortenInfoNumber) == "function" then
                return shortenInfoNumber(value)
            end
            local number = tonumber(value) or 0
            if number % 1 == 0 then
                return tostring(math.floor(number))
            end
            return tostring(number)
        end

        local function getText(value, fallback)
            if type(value) == "function" then
                local ok, result = safeCall(value)
                if ok and result ~= nil then
                    return tostring(result)
                end
                return tostring(fallback or "")
            end
            if value == nil then
                return tostring(fallback or "")
            end
            return tostring(value)
        end

        local function setBonus(value)
            local data = type(value) == "table" and value or nil
            bonusReward.Visible = data ~= nil and data.Visible ~= false
            if not data then
                return
            end
            bonusTitle.Text = tostring(data.Title or data.Text or "Bonus Item:")
            bonusImage.Image = tostring(data.Image or data.Icon or "rbxassetid://15048277894")
        end

        local function setNotification(value)
            local number = tonumber(value)
            notification.Visible = number ~= nil and number > 0
            if number then
                notificationCount.Text = tostring(math.max(0, math.floor(number)))
            end
        end

        local buttonData = type(settings.Button) == "table" and settings.Button or nil
        local buttonCallback = buttonData and buttonData.Callback
            or settings.ButtonCallback
            or settings.TeleportCallback
            or settings.OnTeleport
        if not buttonCallback and settings.ShowButton == true then
            buttonCallback = settings.Callback
        end
        teleport.Visible = type(buttonCallback) == "function" or settings.ShowButton == true
        teleportText.Text = tostring(
            buttonData and (buttonData.Text or buttonData.Name)
                or settings.ButtonText
                or "Return to Area"
        )

        if teleport.Visible then
            GUIFX.ButtonFX(teleport)
            table.insert(connections, teleport.Activated:Connect(function()
                safeCall(buttonCallback, control)
            end))
        end

        local function runCompletionEffect()
            playPS99GoalCompleteSound()
            playPS99GoalShimmer(frame)
            playPS99GoalWiggle(frame)
            safeCall(settings.OnComplete, control)
            if settings.AutoCloseAfter ~= nil then
                local delayTime = math.max(0, tonumber(settings.AutoCloseAfter) or 0)
                task.delay(delayTime, function()
                    if not destroyed then
                        control:Destroy()
                    end
                end)
            end
        end

        local function render(fireCompletion)
            if destroyed then
                return
            end

            titleLabel.Text = getText(titleProvider or settings.Title or settings.Name, "Goal")
            descriptionLabel.Text = getText(descriptionProvider or settings.Description or settings.Content, "")
            sideIcon.Image = tostring(settings.Icon or settings.Image or "rbxassetid://17638233159")

            local safeMaximum = math.max(maximumValue, 0)
            local displayedCurrent = currentValue
            if safeMaximum > 0 then
                displayedCurrent = math.min(currentValue, safeMaximum)
                targetFill = math.clamp(displayedCurrent / safeMaximum, 0, 1)
            else
                displayedCurrent = 0
                targetFill = 0
            end

            bar:SetAttribute("TargetFill", targetFill)
            if targetFill < bar.Size.X.Scale then
                bar.Size = UDim2.new(targetFill, bar.Size.X.Offset, bar.Size.Y.Scale, bar.Size.Y.Offset)
            end

            amountLabel.Text = string.format("%s/%s", formatNumber(displayedCurrent), formatNumber(safeMaximum))

            local isComplete = safeMaximum > 0 and displayedCurrent >= safeMaximum
            if isComplete and not completed then
                completed = true
                if fireCompletion then
                    runCompletionEffect()
                end
            elseif not isComplete then
                completed = false
            end
        end

        table.insert(connections, RunService.RenderStepped:Connect(function(deltaTime)
            if destroyed then
                return
            end
            local currentFill = bar.Size.X.Scale
            local difference = math.abs(currentFill - targetFill)
            if difference >= 0.01 then
                local nextFill = currentFill + (targetFill - currentFill) * (1 - math.exp(-10 * deltaTime))
                bar.Size = UDim2.new(nextFill, bar.Size.X.Offset, bar.Size.Y.Scale, bar.Size.Y.Offset)
            end
        end))

        if type(progressProvider) == "function" or descriptionProvider or titleProvider then
            local elapsed = 0
            local updateInterval = math.max(0.03, tonumber(settings.UpdateInterval) or 0.1)
            table.insert(connections, RunService.RenderStepped:Connect(function(deltaTime)
                if destroyed then
                    return
                end
                elapsed += deltaTime
                if elapsed < updateInterval then
                    return
                end
                elapsed = 0

                if type(progressProvider) == "function" then
                    local ok, value, maximum = pcall(progressProvider, control)
                    if not ok then
                        warn(tostring(value))
                    else
                        if tonumber(value) ~= nil then
                            currentValue = tonumber(value)
                        end
                        if tonumber(maximum) ~= nil then
                            maximumValue = math.max(0, tonumber(maximum))
                        end
                    end
                end
                render(true)
            end))
        end

        function control:Get()
            return currentValue, maximumValue
        end

        function control:GetScreen()
            return screen
        end

        function control:SetProgress(value, maximum, silent)
            if tonumber(value) ~= nil then
                currentValue = tonumber(value)
            end
            if tonumber(maximum) ~= nil then
                maximumValue = math.max(0, tonumber(maximum))
            end
            render(silent ~= true)
            return control
        end

        function control:SetTitle(value)
            settings.Title = value
            titleProvider = type(value) == "function" and value or nil
            render(false)
            return control
        end

        function control:SetDescription(value)
            settings.Description = value
            descriptionProvider = type(value) == "function" and value or nil
            render(false)
            return control
        end

        function control:SetIcon(value)
            settings.Icon = tostring(value or "")
            render(false)
            return control
        end

        function control:SetVisible(value)
            screen.Enabled = value == true
            return control
        end

        function control:SetButton(value)
            local data = type(value) == "table" and value or {}
            local callback = type(value) == "function" and value or data.Callback
            if callback ~= nil then
                buttonCallback = callback
            end
            if data.Text or data.Name then
                teleportText.Text = tostring(data.Text or data.Name)
            end
            teleport.Visible = value ~= false and (type(buttonCallback) == "function" or data.Visible == true)
            return control
        end

        function control:SetBonusReward(value)
            setBonus(value)
            return control
        end

        function control:SetNotification(value)
            setNotification(value)
            return control
        end

        function control:Refresh()
            if type(progressProvider) == "function" then
                local ok, value, maximum = pcall(progressProvider, control)
                if not ok then
                    warn(tostring(value))
                else
                    if tonumber(value) ~= nil then
                        currentValue = tonumber(value)
                    end
                    if tonumber(maximum) ~= nil then
                        maximumValue = math.max(0, tonumber(maximum))
                    end
                end
            end
            render(true)
            return control
        end

        function control:Complete()
            currentValue = maximumValue
            render(true)
            return control
        end

        function control:Destroy()
            if destroyed then
                return
            end
            destroyed = true
            for _, connection in ipairs(connections) do
                pcall(function()
                    connection:Disconnect()
                end)
            end
            if self == control and screen and screen.Parent then
                screen:Destroy()
            end
            if window.ActiveGoal == control then
                window.ActiveGoal = nil
            end
        end

        control.Close = control.Destroy
        control.Remove = control.Destroy

        setBonus(settings.BonusReward)
        setNotification(settings.NotificationCount)
        render(false)
        screen.Enabled = settings.Visible ~= false
        if completed and settings.PlayCompletionOnCreate == true then
            runCompletionEffect()
        end

        self.ActiveGoal = control
        return control
    end

    Library.Goal = Library.CreateGoal

    Library.ShowAlert = Library.Alert
    Library.ShowImageAlert = Library.ImageAlert


    function Library:Prompt(promptSettings)
        local settings = type(promptSettings) == "table" and promptSettings or {Content = tostring(promptSettings)}
        if self.ActivePrompt and self.ActivePrompt.Close then
            self.ActivePrompt:Close(false)
        end
        GuiService.SelectedObject = nil
        local overlay = Instance.new("TextButton")
        overlay.Name = "Modal"
        overlay.Active = true
        overlay.AutoButtonColor = false
        overlay.BackgroundColor3 = Color3.new(0, 0, 0)
        overlay.BackgroundTransparency = 1
        overlay.Modal = true
        overlay.Size = UDim2.fromScale(1, 1)
        overlay.Text = ""
        overlay.ZIndex = 300
        overlay.Parent = self.Screen
        local panel = self.Templates.Locked:Clone()
        panel.Name = "Prompt"
        panel.AnchorPoint = Vector2.new(0.5, 0.5)
        panel.ClipsDescendants = false
        panel.Position = UDim2.fromScale(0.5, 0.5)
        panel.Size = UDim2.fromOffset(0, 0)
        panel.Visible = true
        panel.ZIndex = 301
        panel.Parent = overlay
        local price = panel:FindFirstChild("PriceFrame")
        if price then
            price:Destroy()
        end
        local aspect = panel:FindFirstChildOfClass("UIAspectRatioConstraint")
        if aspect then
            aspect:Destroy()
        end
        local title = Instance.new("TextLabel")
        title.BackgroundTransparency = 1
        title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        title.Position = UDim2.fromOffset(18, 14)
        title.Size = UDim2.new(1, -36, 0, 34)
        title.Text = tostring(settings.Title or "Confirm")
        title.TextColor3 = Color3.new(1, 1, 1)
        title.TextScaled = true
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.ZIndex = 303
        title.Parent = panel
        local titleStroke = Instance.new("UIStroke")
        titleStroke.Color = Color3.fromRGB(42, 43, 49)
        titleStroke.Thickness = 2.5
        titleStroke.Parent = title
        local content = Instance.new("TextLabel")
        content.BackgroundTransparency = 1
        content.FontFace = title.FontFace
        content.Position = UDim2.fromOffset(18, 56)
        content.Size = UDim2.new(1, -36, 0, 66)
        content.Text = tostring(settings.Content or "Are you sure?")
        content.TextColor3 = Color3.fromRGB(245, 245, 245)
        content.TextSize = 18
        content.TextWrapped = true
        content.TextXAlignment = Enum.TextXAlignment.Left
        content.TextYAlignment = Enum.TextYAlignment.Top
        content.ZIndex = 303
        content.Parent = panel
        local function createPromptButton(name, text, position, gradientName)
            local source = self.Templates.Selector.Toggle.Button
            local button = source:Clone()
            button.Name = name
            button.AnchorPoint = Vector2.new(0.5, 1)
            button.Position = position
            button.Size = UDim2.new(0.42, 0, 0, 48)
            button.Selectable = true
            button.ZIndex = 304
            button.Parent = panel
            local buttonText = button:FindFirstChild("TextLabel", true)
            if buttonText and buttonText:IsA("TextLabel") then
                buttonText.Text = text
                buttonText.Visible = true
                buttonText.TextTransparency = 0
                buttonText.TextColor3 = Color3.new(1, 1, 1)
                buttonText.ZIndex = button.ZIndex + 2
            end
            clearGradient(button)
            local gradient = Gradients:FindFirstChild(gradientName)
            if gradient then
                gradient:Clone().Parent = button
            end
            GUIFX.ButtonFX(button)
            return button
        end
        local cancel = createPromptButton("Cancel", tostring(settings.CancelText or "Cancel"), UDim2.new(0.27, 0, 1, -14), "GreyGradient")
        local confirm = createPromptButton("Confirm", tostring(settings.ConfirmText or "Confirm"), UDim2.new(0.73, 0, 1, -14), settings.Dangerous and "RedGradient" or "GreenGradient")
        local resolved = false
        local prompt = {}
        local function close(result)
            if resolved then
                return
            end
            resolved = true
            local selectedObject = GuiService.SelectedObject
            if selectedObject and (selectedObject == cancel or selectedObject == confirm or selectedObject:IsDescendantOf(overlay)) then
                GuiService.SelectedObject = nil
            end
            TweenService:Create(overlay, TweenInfo.new(0.22), {BackgroundTransparency = 1}):Play()
            TweenService:Create(panel, TweenInfo.new(0.24, Enum.EasingStyle.Back, Enum.EasingDirection.In), {Size = UDim2.fromOffset(0, 0)}):Play()
            task.delay(0.25, function()
                if overlay.Parent then
                    overlay:Destroy()
                end
            end)
            if self.ActivePrompt == prompt then
                self.ActivePrompt = nil
            end
            safeCall(settings.Callback, result)
        end
        function prompt:Close(result)
            close(result == true)
        end
        function prompt:Confirm()
            close(true)
        end
        function prompt:Cancel()
            close(false)
        end
        cancel.Activated:Connect(function()
            close(false)
        end)
        confirm.Activated:Connect(function()
            close(true)
        end)
        if settings.CloseOnOverlay ~= false then
            overlay.Activated:Connect(function()
                close(false)
            end)
        end
        self.ActivePrompt = prompt
        TweenService:Create(overlay, TweenInfo.new(0.25), {BackgroundTransparency = 0.42}):Play()
        TweenService:Create(panel, TweenInfo.new(0.42, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.fromOffset(390, 190)}):Play()
        task.defer(function()
            if resolved or not confirm.Parent then
                return
            end
            local lastInputType = UserInputService:GetLastInputType()
            if string.find(lastInputType.Name, "Gamepad", 1, true) == 1 then
                GuiService.SelectedObject = confirm
            else
                GuiService.SelectedObject = nil
            end
        end)
        return prompt
    end

    Library.Confirm = Library.Prompt

    function Library:_createLockOverlay(row)
        local overlay = Instance.new("TextButton")
        overlay.Name = "InteractionBlocker"
        overlay.Active = true
        overlay.AutoButtonColor = false
        overlay.BackgroundColor3 = Color3.fromRGB(42, 43, 49)
        overlay.BackgroundTransparency = 0.38
        overlay.BorderSizePixel = 0
        overlay.Size = UDim2.fromScale(1, 1)
        overlay.Text = ""
        overlay.Visible = false
        overlay.ZIndex = 120
        overlay.Parent = row
        local corner = row:FindFirstChildOfClass("UICorner")
        if corner then
            corner:Clone().Parent = overlay
        end
        local label = Instance.new("TextLabel")
        label.Name = "Reason"
        label.AnchorPoint = Vector2.new(1, 0.5)
        label.BackgroundTransparency = 1
        label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        label.Position = UDim2.new(1, -12, 0.5, 0)
        label.Size = UDim2.new(0.48, 0, 0.7, 0)
        label.Text = "Locked"
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextScaled = true
        label.TextXAlignment = Enum.TextXAlignment.Right
        label.ZIndex = 121
        label.Parent = overlay
        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(42, 43, 49)
        stroke.Thickness = 2
        stroke.Parent = label
        return overlay, label
    end

    function Library:_decorateControl(control, row, settings, controlType)
        control = control or {}
        settings = type(settings) == "table" and settings or {}
        control.Type = controlType or control.Type or "Element"
        control._Settings = settings
        control.Row = row
        control.Window = self
        control.Name = tostring(settings.Name or control.Name or (findSettingLabel(row) and findSettingLabel(row).Text) or control.Type)
        control.Enabled = settings.Enabled ~= false
        control.Locked = settings.Locked == true
        control.LockReason = tostring(settings.LockReason or settings.LockedReason or "This option is locked")
        local label = findSettingLabel(row)
        local overlay, overlayLabel
        local tooltipDisconnect
        local originalDestroy = control.Destroy
        local originalSet = control.Set
        local function refreshOverlay()
            local blocked = not control.Enabled or control.Locked
            if blocked and not overlay then
                overlay, overlayLabel = self:_createLockOverlay(row)
                overlay.Activated:Connect(function()
                    if control.Locked then
                        self:Notify({Title = control.Name, Content = control.LockReason, Type = "Red", Duration = 3})
                    end
                end)
            end
            if overlay then
                overlay.Visible = blocked
                overlayLabel.Text = control.Locked and "Locked" or "Disabled"
            end
            setObjectInputEnabled(row, not blocked)
            if overlay then
                overlay.Active = blocked
            end
        end
        function control:SetName(value)
            control.Name = tostring(value)
            if control._Settings then
                control._Settings.Name = control.Name
            end
            if label then
                label.Text = control.Name
            end
            return control
        end
        function control:SetVisible(value)
            local visible = value == true
            for _, entry in ipairs(self.Window.Rows) do
                if entry.Row == row then
                    entry.ManualVisible = visible
                    break
                end
            end
            self.Window:_refreshPagination()
            return control
        end
        function control:SetEnabled(value)
            control.Enabled = value == true
            refreshOverlay()
            return control
        end
        function control:SetLocked(value, reason)
            control.Locked = value == true
            if reason ~= nil then
                control.LockReason = tostring(reason)
            end
            refreshOverlay()
            return control
        end
        function control:SetTooltip(value)
            if tooltipDisconnect then
                tooltipDisconnect()
                tooltipDisconnect = nil
            end
            local hasValue = value ~= nil
            if type(value) == "string" then
                hasValue = value ~= ""
            end
            if hasValue then
                tooltipDisconnect = self.Window:AttachTooltip(row, value)
            else
                row:SetAttribute("Tooltip", nil)
            end
            return control
        end
        function control:Destroy()
            if tooltipDisconnect then
                tooltipDisconnect()
                tooltipDisconnect = nil
            end
            if originalDestroy then
                pcall(originalDestroy, control)
            elseif row and row.Parent then
                row:Destroy()
            end
            removeRowEntry(self.Window, row)
        end
        if originalSet then
            function control:Set(value, silent)
                if (not control.Enabled or control.Locked) and not silent then
                    return control.Get and control:Get() or nil
                end
                return originalSet(control, value, silent)
            end
        end
        if settings.Tooltip then
            control:SetTooltip(settings.Tooltip)
        end
        refreshOverlay()
        if settings.Visible == false then
            control:SetVisible(false)
        end
        if settings.Flag and self.ConfigSettings then
            self:BindConfig(tostring(settings.Flag), control, settings.Default ~= nil and settings.Default or (control.Get and control:Get() or nil))
        end
        return control
    end

    local OriginalAddButtonV8 = Library.AddButton
    function Library:AddButton(nameOrSettings, callback, buttonText)
        local settings = type(nameOrSettings) == "table" and nameOrSettings or {
            Name = tostring(nameOrSettings),
            Callback = callback,
            ButtonText = buttonText,
        }
        settings.Name = tostring(settings.Name or "Button")
        settings.Callback = settings.Callback or function() end
        local control = OriginalAddButtonV8(self, settings.Name, settings.Callback, settings.ButtonText or settings.Text or "Run")
        local row = self.Rows[#self.Rows].Row
        control.Get = control.Get or function()
            return nil
        end
        control.Set = control.Set or function()
            return nil
        end
        return self:_decorateControl(control, row, settings, "Button")
    end

    local OriginalAddToggleV8 = Library.AddToggle
    function Library:AddToggle(nameOrSettings, default, callback)
        local settings = type(nameOrSettings) == "table" and nameOrSettings or {
            Name = tostring(nameOrSettings),
            Default = default,
            Callback = callback,
        }
        settings.Name = tostring(settings.Name or "Toggle")
        settings.Default = settings.Default == true or settings.CurrentValue == true
        settings.Callback = settings.Callback or function() end
        local control = OriginalAddToggleV8(self, settings.Name, settings.Default, settings.Callback)
        local row = self.Rows[#self.Rows].Row
        return self:_decorateControl(control, row, settings, "Toggle")
    end

    local OriginalAddSelectorV8 = Library.AddSelector
    function Library:AddSelector(nameOrSettings, values, default, callback)
        local settings = type(nameOrSettings) == "table" and nameOrSettings or {
            Name = tostring(nameOrSettings),
            Values = values,
            Default = default,
            Callback = callback,
        }
        settings.Name = tostring(settings.Name or "Selector")
        settings.Values = settings.Values or settings.Options or {}
        settings.Default = settings.Default ~= nil and settings.Default or settings.CurrentValue
        settings.Callback = settings.Callback or function() end
        local control = OriginalAddSelectorV8(self, settings.Name, settings.Values, settings.Default, settings.Callback)
        local row = self.Rows[#self.Rows].Row
        return self:_decorateControl(control, row, settings, "Selector")
    end

    local OriginalAddDropdownV8 = Library.AddDropdown
    function Library:AddDropdown(settingsOrName, legacyValues, legacyDefault, legacyCallback, legacyMultiple)
        local settings = type(settingsOrName) == "table" and settingsOrName or {
            Name = tostring(settingsOrName),
            Options = legacyValues,
            CurrentOption = legacyDefault,
            Callback = legacyCallback,
            MultipleOptions = legacyMultiple,
        }
        local control = OriginalAddDropdownV8(self, settings)
        local row = self.Rows[#self.Rows].Row
        settings.Default = settings.CurrentOption
        return self:_decorateControl(control, row, settings, "Dropdown")
    end

    local OriginalAddSliderV8 = Library.AddSlider
    function Library:AddSlider(nameOrSettings, minimum, maximum, default, callback, step)
        local settings = type(nameOrSettings) == "table" and nameOrSettings or {
            Name = tostring(nameOrSettings),
            Minimum = minimum,
            Maximum = maximum,
            Default = default,
            Callback = callback,
            Step = step,
        }
        settings.Name = tostring(settings.Name or "Slider")
        settings.Minimum = tonumber(settings.Minimum or settings.Range and settings.Range[1]) or 0
        settings.Maximum = tonumber(settings.Maximum or settings.Range and settings.Range[2]) or 100
        settings.Default = tonumber(settings.Default ~= nil and settings.Default or settings.CurrentValue) or settings.Minimum
        settings.Callback = settings.Callback or function() end
        local control = OriginalAddSliderV8(self, settings.Name, settings.Minimum, settings.Maximum, settings.Default, settings.Callback, settings.Step or settings.Increment)
        local row = self.Rows[#self.Rows].Row
        local sliderSet = control.Set
        control.Set = function(selfControl, value, silent)
            local result = sliderSet(selfControl, value, silent)
            local current = selfControl:Get()
            local text = math.abs(current - math.round(current)) < 1e-6 and tostring(math.round(current)) or string.format("%.2f", current):gsub("0+$", ""):gsub("%.$", "")
            row.SettingName.Text = string.format("%s: %s", settings.Name, text)
            return result
        end
        return self:_decorateControl(control, row, settings, "Slider")
    end

    local OriginalAddSectionV8 = Library.AddSection
    function Library:AddSection(textOrSettings, color, options)
        local settings
        if type(textOrSettings) == "table" then
            settings = textOrSettings
        else
            settings = type(options) == "table" and options or {}
            settings.Name = tostring(textOrSettings)
            settings.Color = color
        end
        settings.Name = tostring(settings.Name or settings.Title or "Section")
        settings.Color = settings.Color or color
        settings.Collapsible = settings.Collapsible == true
        settings.DefaultCollapsed = settings.DefaultCollapsed == true or settings.Collapsed == true
        local tabName = self._MountTab or self.ActiveTab or "__default"
        self._CreatingSection = true
        local row = OriginalAddSectionV8(self, settings.Name, settings.Color)
        self._CreatingSection = false
        local section = {
            Type = "Section",
            Name = settings.Name,
            Row = row,
            Window = self,
            Tab = tabName,
            Entries = {},
            Collapsible = settings.Collapsible,
            Collapsed = false,
            SubTab = self._MountSubTab,
            Animating = false,
            AnimationToken = 0,
            EntryVisualStates = {},
        }
        local sectionKey = tabName .. "" .. tostring(section.SubTab or "")
        self._ActiveSectionByTab[sectionKey] = section
        local arrow
        local button
        local updateArrowPosition
        local SECTION_TWEEN = TweenInfo.new(0.42, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
        local ARROW_TWEEN = TweenInfo.new(0.7, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

        local function captureVisualState(targetRow)
            local state = {
                Size = targetRow.Size,
                ClipsDescendants = targetRow.ClipsDescendants,
                Properties = {},
            }
            local objects = {targetRow}
            for _, descendant in ipairs(targetRow:GetDescendants()) do
                table.insert(objects, descendant)
            end
            for _, object in ipairs(objects) do
                local properties = {}
                if object:IsA("GuiObject") then
                    properties.BackgroundTransparency = object.BackgroundTransparency
                end
                if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                    properties.TextTransparency = object.TextTransparency
                    properties.TextStrokeTransparency = object.TextStrokeTransparency
                end
                if object:IsA("ImageLabel") or object:IsA("ImageButton") then
                    properties.ImageTransparency = object.ImageTransparency
                end
                if object:IsA("ScrollingFrame") then
                    properties.ScrollBarImageTransparency = object.ScrollBarImageTransparency
                end
                if object:IsA("UIStroke") then
                    properties.Transparency = object.Transparency
                end
                if next(properties) then
                    state.Properties[object] = properties
                end
            end
            return state
        end

        local function tweenVisualState(targetRow, state, collapsed)
            targetRow.ClipsDescendants = true
            local targetSize = collapsed and UDim2.new(state.Size.X.Scale, state.Size.X.Offset, 0, 0) or state.Size
            TweenService:Create(targetRow, SECTION_TWEEN, {Size = targetSize}):Play()
            for object, properties in pairs(state.Properties) do
                if object.Parent then
                    local goals = {}
                    for property, value in pairs(properties) do
                        goals[property] = collapsed and 1 or value
                    end
                    TweenService:Create(object, SECTION_TWEEN, goals):Play()
                end
            end
        end

        local function applyCollapsedVisual(targetRow, state)
            targetRow.ClipsDescendants = true
            targetRow.Size = UDim2.new(state.Size.X.Scale, state.Size.X.Offset, 0, 0)
            for object, properties in pairs(state.Properties) do
                if object.Parent then
                    for property in pairs(properties) do
                        object[property] = 1
                    end
                end
            end
        end

        local function restoreVisualState(targetRow, state)
            if not targetRow.Parent then
                return
            end
            targetRow.Size = state.Size
            targetRow.ClipsDescendants = state.ClipsDescendants
            for object, properties in pairs(state.Properties) do
                if object.Parent then
                    for property, value in pairs(properties) do
                        object[property] = value
                    end
                end
            end
        end

        local function getEntryState(entry)
            local targetRow = entry.Row
            local state = section.EntryVisualStates[entry]
            if not state or not targetRow or not targetRow.Parent then
                if not targetRow or not targetRow.Parent then
                    return nil
                end
                state = captureVisualState(targetRow)
                section.EntryVisualStates[entry] = state
            end
            return state
        end

        if settings.Collapsible then
            button = Instance.new("TextButton")
            button.Name = "Collapse"
            button.Active = true
            button.AutoButtonColor = false
            button.BackgroundTransparency = 1
            button.AnchorPoint = Vector2.new(0.5, 0.5)
            button.Position = UDim2.fromScale(0.5, 0.5)
            button.Size = UDim2.new(1, 0, 1, 0)
            button.Text = ""
            button.Selectable = true
            button.ZIndex = row.ZIndex + 5
            button.Parent = row

            arrow = Instance.new("TextLabel")
            arrow.Name = "DropdownArrow"
            arrow.AnchorPoint = Vector2.new(1, 0.5)
            arrow.BackgroundTransparency = 1
            arrow.FontFace = row.FontFace
            arrow.Position = UDim2.new(1, -4, 0.5, 0)
            arrow.Size = UDim2.fromOffset(24, 24)
            arrow.Text = "▲"
            arrow.TextColor3 = row.TextColor3
            arrow.TextScaled = true
            arrow.TextStrokeColor3 = row.TextStrokeColor3
            arrow.TextStrokeTransparency = row.TextStrokeTransparency
            arrow.Rotation = 0
            arrow.ZIndex = button.ZIndex + 1
            arrow.Parent = button

            local rowGradient = row:FindFirstChildOfClass("UIGradient")
            if rowGradient then
                rowGradient:Clone().Parent = arrow
            end

            updateArrowPosition = function()
                arrow.Position = UDim2.new(1, -4, 0.5, 0)
            end

            row:GetPropertyChangedSignal("AbsoluteSize"):Connect(updateArrowPosition)
            task.defer(updateArrowPosition)
            GUIFX.ButtonFX(button, 1.01)
        end

        function section:SetCollapsed(value, immediate)
            if not self.Collapsible then
                return false
            end

            local targetCollapsed = value == true
            if self.Animating then
                self.AnimationToken += 1
                self.Animating = false
                for _, entry in ipairs(self.Entries) do
                    local targetRow = entry.Row
                    local state = self.EntryVisualStates[entry]
                    if targetRow and state then
                        restoreVisualState(targetRow, state)
                    end
                end
            end
            if self.Collapsed == targetCollapsed then
                if arrow then
                    arrow.Rotation = targetCollapsed and 180 or 0
                end
                return self.Collapsed
            end

            if self.Window.ActiveDropdownClose then
                self.Window.ActiveDropdownClose(true)
            end

            self.AnimationToken += 1
            local token = self.AnimationToken
            self.Animating = immediate ~= true

            if arrow then
                if immediate then
                    arrow.Rotation = targetCollapsed and 180 or 0
                else
                    TweenService:Create(arrow, ARROW_TWEEN, {Rotation = targetCollapsed and 180 or 0}):Play()
                end
            end

            if targetCollapsed then
                local animatedRows = {}
                for _, entry in ipairs(self.Entries) do
                    local targetRow = entry.Row
                    if targetRow and targetRow.Parent then
                        self.EntryVisualStates[entry] = captureVisualState(targetRow)
                        if targetRow.Visible then
                            table.insert(animatedRows, entry)
                        end
                    end
                end

                if immediate or #animatedRows == 0 then
                    self.Collapsed = true
                    self.Window.PageByTab[self.Tab] = 1
                    self.Window:_refreshPagination()
                    self.Animating = false
                    return true
                end

                for _, entry in ipairs(animatedRows) do
                    local targetRow = entry.Row
                    local state = self.EntryVisualStates[entry]
                    tweenVisualState(targetRow, state, true)
                end

                task.delay(0.43, function()
                    if token ~= self.AnimationToken then
                        return
                    end
                    self.Collapsed = true
                    self.Window.PageByTab[self.Tab] = 1
                    self.Window:_refreshPagination()
                    for _, entry in ipairs(self.Entries) do
                        local targetRow = entry.Row
                        local state = self.EntryVisualStates[entry]
                        if targetRow and state then
                            restoreVisualState(targetRow, state)
                        end
                    end
                    self.Animating = false
                end)
            else
                for _, entry in ipairs(self.Entries) do
                    local targetRow = entry.Row
                    if targetRow and targetRow.Parent then
                        local state = getEntryState(entry)
                        if state then
                            applyCollapsedVisual(targetRow, state)
                        end
                    end
                end

                self.Collapsed = false
                self.Window.PageByTab[self.Tab] = 1
                self.Window:_refreshPagination()

                if immediate then
                    for _, entry in ipairs(self.Entries) do
                        local targetRow = entry.Row
                        local state = self.EntryVisualStates[entry]
                        if targetRow and state then
                            restoreVisualState(targetRow, state)
                        end
                    end
                    self.Animating = false
                    return false
                end

                task.defer(function()
                    if token ~= self.AnimationToken then
                        return
                    end
                    for _, entry in ipairs(self.Entries) do
                        local targetRow = entry.Row
                        local state = self.EntryVisualStates[entry]
                        if targetRow and targetRow.Parent and targetRow.Visible and state then
                            tweenVisualState(targetRow, state, false)
                        elseif targetRow and state then
                            restoreVisualState(targetRow, state)
                        end
                    end
                end)

                task.delay(0.43, function()
                    if token ~= self.AnimationToken then
                        return
                    end
                    for _, entry in ipairs(self.Entries) do
                        local targetRow = entry.Row
                        local state = self.EntryVisualStates[entry]
                        if targetRow and state then
                            restoreVisualState(targetRow, state)
                        end
                    end
                    self.Animating = false
                end)
            end

            return targetCollapsed
        end

        function section:Toggle()
            return self:SetCollapsed(not self.Collapsed)
        end
        function section:Get()
            return self.Collapsed
        end
        function section:Set(value)
            return self:SetCollapsed(value)
        end
        function section:SetName(value)
            self.Name = tostring(value)
            row.Text = self.Name
            if updateArrowPosition then
                task.defer(updateArrowPosition)
            end
            return self
        end
        function section:SetVisible(value)
            for _, entry in ipairs(self.Window.Rows) do
                if entry.Row == row then
                    entry.ManualVisible = value == true
                    break
                end
            end
            self.Window:_refreshPagination()
            return self
        end
        function section:SetEnabled(value)
            if button then
                button.Active = value == true
                button.Selectable = value == true
            end
            return self
        end
        function section:SetLocked(value, reason)
            if value then
                self.Window:Notify({Title = self.Name, Content = tostring(reason or "This section is locked"), Type = "Red"})
            end
            return self
        end
        function section:SetTooltip(value)
            if button then
                self.Window:AttachTooltip(button, value)
            end
            return self
        end
        function section:Destroy()
            self.AnimationToken += 1
            for _, entry in ipairs(self.Entries) do
                if entry.Row and entry.Row.Parent then
                    entry.Row:Destroy()
                end
            end
            if row.Parent then
                row:Destroy()
            end
            removeRowEntry(self.Window, row)
        end
        function section:_add(methodName, ...)
            local oldSection = self.Window._ForcedSection
            local oldSubTab = self.Window._MountSubTab
            self.Window._ForcedSection = self
            self.Window._MountSubTab = self.SubTab
            local result = self.Window:_withTab(self.Tab, methodName, ...)
            self.Window._ForcedSection = oldSection
            self.Window._MountSubTab = oldSubTab
            local entry = self.Entries[#self.Entries]
            if entry and entry.Row and entry.Row.Parent then
                self.EntryVisualStates[entry] = captureVisualState(entry.Row)
            end
            return result
        end
        for _, methodName in ipairs({"AddButton", "AddToggle", "AddSelector", "AddDropdown", "AddSlider", "AddKeybind", "AddProgress", "AddColorPicker"}) do
            section[methodName] = function(selfSection, ...)
                return selfSection:_add(methodName, ...)
            end
        end
        if button then
            button.Activated:Connect(function()
                if not section.Animating then
                    section:Toggle()
                end
            end)
        end
        if settings.Tooltip then
            section:SetTooltip(settings.Tooltip)
        end
        if settings.DefaultCollapsed then
            section:SetCollapsed(true, true)
        end
        return section
    end

    function Library:AddKeybind(keybindSettings, legacyKey, legacyCallback)
        local settings = type(keybindSettings) == "table" and keybindSettings or {
            Name = tostring(keybindSettings),
            CurrentKey = legacyKey,
            Callback = legacyCallback,
        }
        settings.Name = tostring(settings.Name or "Keybind")
        settings.Callback = settings.Callback or function() end
        settings.HoldToInteract = settings.HoldToInteract == true
        settings.IgnoreProcessed = settings.IgnoreProcessed == true
        local row = self.Templates.Selector:Clone()
        row.SettingName.Text = settings.Name
        local button = row.Toggle.Button
        local label = button.TextLabel
        local currentKey = settings.CurrentKey or settings.Default or Enum.KeyCode.Unknown
        local listening = false
        local holding = false
        local holdToken = 0
        self:_mount(row, settings.Name, settings.Name .. " keybind")
        GUIFX.ButtonFX(button)
        local function normalizeKey(value)
            if typeof(value) == "EnumItem" then
                return value
            end
            local keyName = tostring(value or "Unknown"):gsub("Enum.KeyCode.", ""):gsub("Enum.UserInputType.", "")
            return Enum.KeyCode[keyName] or Enum.UserInputType[keyName] or Enum.KeyCode.Unknown
        end
        local function render()
            label.Text = listening and "Press a key..." or currentKey.Name
        end
        local beganConnection
        local endedConnection
        button.Activated:Connect(function()
            listening = true
            render()
        end)
        beganConnection = UserInputService.InputBegan:Connect(function(inputObject, processed)
            if listening then
                local candidate = inputObject.KeyCode ~= Enum.KeyCode.Unknown and inputObject.KeyCode or inputObject.UserInputType
                if candidate == Enum.KeyCode.Escape then
                    listening = false
                    render()
                    return
                end
                currentKey = candidate
                listening = false
                render()
                safeCall(settings.ChangedCallback, currentKey)
                return
            end
            if processed and not settings.IgnoreProcessed then
                return
            end
            local candidate = inputObject.KeyCode ~= Enum.KeyCode.Unknown and inputObject.KeyCode or inputObject.UserInputType
            if candidate ~= currentKey then
                return
            end
            if settings.HoldToInteract then
                if holding then
                    return
                end
                holding = true
                holdToken += 1
                local token = holdToken
                task.spawn(function()
                    while holding and token == holdToken do
                        safeCall(settings.Callback, true)
                        RunService.Heartbeat:Wait()
                    end
                end)
            else
                safeCall(settings.Callback, currentKey)
            end
        end)
        endedConnection = UserInputService.InputEnded:Connect(function(inputObject)
            local candidate = inputObject.KeyCode ~= Enum.KeyCode.Unknown and inputObject.KeyCode or inputObject.UserInputType
            if candidate == currentKey and settings.HoldToInteract then
                holding = false
                holdToken += 1
                safeCall(settings.Callback, false)
            end
        end)
        local control = {
            Get = function()
                return currentKey.Name
            end,
            Set = function(_, value, silent)
                currentKey = normalizeKey(value)
                render()
                if not silent then
                    safeCall(settings.ChangedCallback, currentKey)
                end
            end,
            Destroy = function()
                beganConnection:Disconnect()
                endedConnection:Disconnect()
                row:Destroy()
            end,
        }
        render()
        return self:_decorateControl(control, row, settings, "Keybind")
    end

    function Library:AddProgress(progressSettings, legacyMaximum, legacyValue)
        local settings = type(progressSettings) == "table" and progressSettings or {
            Name = tostring(progressSettings),
            Maximum = legacyMaximum,
            CurrentValue = legacyValue,
        }
        settings.Name = tostring(settings.Name or "Progress")
        settings.Minimum = tonumber(settings.Minimum) or 0
        settings.Maximum = tonumber(settings.Maximum or settings.MaxValue) or 100
        settings.CurrentValue = tonumber(settings.CurrentValue or settings.Default) or settings.Minimum
        settings.Suffix = tostring(settings.Suffix or "")
        settings.Callback = settings.Callback or function() end
        local row = self.Templates.Slider:Clone()
        row.SettingName.Text = settings.Name
        local slider = row.Slider
        local knob = slider:FindFirstChild("Button")
        if knob then
            knob:Destroy()
        end
        local bar = slider:FindFirstChild("Bar") or slider
        bar.ClipsDescendants = true
        local fill = Instance.new("Frame")
        fill.Name = "Progress"
        fill.AnchorPoint = Vector2.zero
        fill.BackgroundColor3 = Color3.new(1, 1, 1)
        fill.BorderSizePixel = 0
        fill.Position = UDim2.fromScale(0, 0)
        fill.Size = UDim2.fromScale(0, 1)
        fill.ZIndex = bar.ZIndex + 1
        fill.Parent = bar
        local corner = bar:FindFirstChildOfClass("UICorner")
        if corner then
            corner:Clone().Parent = fill
        end
        local gradientName = SECTION_GRADIENT_ALIASES[string.lower(tostring(settings.Color or settings.Gradient or "Green")):gsub("[%s_%-]", "")] or "GreenGradient"
        local gradient = Gradients:FindFirstChild(gradientName)
        if gradient then
            gradient:Clone().Parent = fill
        end
        local value = math.clamp(settings.CurrentValue, settings.Minimum, settings.Maximum)
        self:_mount(row, settings.Name, settings.Name .. " progress")
        local function render(fire)
            local alpha = settings.Maximum == settings.Minimum and 0 or (value - settings.Minimum) / (settings.Maximum - settings.Minimum)
            TweenService:Create(fill, TweenInfo.new(0.28, Enum.EasingStyle.Quint), {Size = UDim2.fromScale(alpha, 1)}):Play()
            row.SettingName.Text = string.format("%s: %s%s", settings.Name, tostring(math.floor(value * 100 + 0.5) / 100), settings.Suffix)
            if fire then
                safeCall(settings.Callback, value, alpha)
            end
        end
        local control = {
            Get = function()
                return value
            end,
            Set = function(_, newValue, silent)
                value = math.clamp(tonumber(newValue) or value, settings.Minimum, settings.Maximum)
                render(not silent)
                return value
            end,
            SetMaximum = function(_, newMaximum)
                settings.Maximum = tonumber(newMaximum) or settings.Maximum
                value = math.clamp(value, settings.Minimum, settings.Maximum)
                render(false)
            end,
        }
        render(false)
        return self:_decorateControl(control, row, settings, "Progress")
    end

    function Library:AddColorPicker(colorSettings, legacyColor, legacyCallback)
        local settings = type(colorSettings) == "table" and colorSettings or {
            Name = tostring(colorSettings),
            Color = legacyColor,
            Callback = legacyCallback,
        }
        settings.Name = tostring(settings.Name or "Color Picker")
        settings.Callback = settings.Callback or function() end

        local currentColor = tableToColor(settings.Color or settings.Default or settings.CurrentColor, Color3.new(1, 0, 0))
        local h, s, v = currentColor:ToHSV()

        local row = self.Templates.Selector:Clone()
        row.SettingName.Text = settings.Name

        local button = row.Toggle.Button
        local label = button.TextLabel
        label.Text = colorToHex(currentColor)

        self:_mount(row, settings.Name, settings.Name .. " color")
        GUIFX.ButtonFX(button)

        local popup = Instance.new("Frame")
        popup.Name = "ColorPickerSidePanel"
        popup.Active = true
        popup.AnchorPoint = Vector2.zero
        popup.BackgroundColor3 = Color3.new(1, 1, 1)
        popup.BackgroundTransparency = 0
        popup.BorderSizePixel = 0
        popup.ClipsDescendants = false
        popup.Position = UDim2.fromOffset(8, 8)
        popup.Size = UDim2.fromOffset(148, 310)
        popup.Visible = false
        popup.ZIndex = 80
        popup.Parent = self.Screen

        local popupCorner = Instance.new("UICorner")
        popupCorner.CornerRadius = UDim.new(0.08, 0)
        popupCorner.Parent = popup

        local popupStroke = Instance.new("UIStroke")
        popupStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        popupStroke.Color = Color3.new(0, 0, 0)
        popupStroke.LineJoinMode = Enum.LineJoinMode.Round
        popupStroke.Thickness = 2.90138888
        popupStroke.Transparency = 0
        popupStroke.Parent = popup

        local shadow = Instance.new("ImageLabel")
        shadow.Name = "shadow"
        shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        shadow.BackgroundTransparency = 1
        shadow.Image = "rbxassetid://14001321443"
        shadow.ImageColor3 = Color3.new(0, 0, 0)
        shadow.ImageTransparency = 0.75
        shadow.Position = UDim2.fromScale(0.5, 0.5)
        shadow.ScaleType = Enum.ScaleType.Slice
        shadow.Size = UDim2.new(1, 35, 1, 35)
        shadow.SliceCenter = Rect.new(50, 50, 150, 150)
        shadow.SliceScale = 1
        shadow.ZIndex = 79
        shadow.Parent = popup

        local background = Instance.new("ImageLabel")
        background.Name = "background"
        background.AnchorPoint = Vector2.new(0, 1)
        background.BackgroundTransparency = 1
        background.Image = "rbxassetid://13581793331"
        background.ImageColor3 = Color3.new(0.0784313753, 0.227450997, 0.262745112)
        background.ImageTransparency = 0.949999988
        background.Position = UDim2.new(0, 0, 1, 0)
        background.ScaleType = Enum.ScaleType.Tile
        background.Size = UDim2.fromScale(1, 1)
        background.TileSize = UDim2.fromOffset(171, 135)
        background.ZIndex = 81
        background.Parent = popup

        local backgroundCorner = Instance.new("UICorner")
        backgroundCorner.CornerRadius = UDim.new(0.08, 0)
        backgroundCorner.Parent = background

        local backgroundGradient = Instance.new("UIGradient")
        backgroundGradient.Rotation = -90
        backgroundGradient.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1))
        backgroundGradient.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 0),
            NumberSequenceKeypoint.new(0.310086995, 0.393750012),
            NumberSequenceKeypoint.new(0.495640993, 0.59375),
            NumberSequenceKeypoint.new(0.738480985, 0.824999988),
            NumberSequenceKeypoint.new(1, 1),
        })
        backgroundGradient.Parent = background

        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundTransparency = 1
        title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        title.Position = UDim2.fromOffset(10, 8)
        title.Size = UDim2.new(1, -50, 0, 28)
        title.Text = "Colors"
        title.TextColor3 = Color3.fromRGB(42, 43, 49)
        title.TextScaled = true
        title.TextStrokeTransparency = 1
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.ZIndex = 83
        title.Parent = popup

        local titleConstraint = Instance.new("UITextSizeConstraint")
        titleConstraint.MinTextSize = 12
        titleConstraint.MaxTextSize = 20
        titleConstraint.Parent = title

        local close = Instance.new("ImageButton")
        close.Name = "Close"
        close.Active = true
        close.AnchorPoint = Vector2.new(0.5, 0.5)
        close.AutoButtonColor = true
        close.BackgroundTransparency = 1
        close.Image = "rbxassetid://14423621163"
        close.PressedImage = "rbxassetid://14423621349"
        close.Position = UDim2.new(1, -2, 0, 0)
        close.ScaleType = Enum.ScaleType.Slice
        close.Size = UDim2.fromOffset(38, 38)
        close.SliceCenter = Rect.new(20, 20, 80, 80)
        close.SliceScale = 0.967129648
        close.ZIndex = 88
        close.Parent = popup

        local closeGradient = Instance.new("UIGradient")
        closeGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(1, 0.00784313958, 0.239216)),
            ColorSequenceKeypoint.new(1, Color3.new(1, 0.152941003, 0.49019599)),
        })
        closeGradient.Rotation = -90
        closeGradient.Parent = close

        local closeShadow = Instance.new("ImageLabel")
        closeShadow.Name = "shadow"
        closeShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        closeShadow.BackgroundTransparency = 1
        closeShadow.Image = "rbxassetid://14001321443"
        closeShadow.ImageColor3 = Color3.new(0, 0, 0)
        closeShadow.ImageTransparency = 0.75
        closeShadow.Position = UDim2.fromScale(0.5, 0.6)
        closeShadow.ScaleType = Enum.ScaleType.Slice
        closeShadow.Size = UDim2.new(1, 0, 1.1, 0)
        closeShadow.SliceCenter = Rect.new(50, 50, 150, 150)
        closeShadow.SliceScale = 0.75
        closeShadow.ZIndex = 87
        closeShadow.Parent = close

        local closeText = Instance.new("TextLabel")
        closeText.Name = "TextLabel"
        closeText.AnchorPoint = Vector2.new(0.5, 0.5)
        closeText.BackgroundTransparency = 1
        closeText.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        closeText.Position = UDim2.fromScale(0.5, 0.5)
        closeText.Size = UDim2.fromScale(0.9, 0.6)
        closeText.Text = "X"
        closeText.TextColor3 = Color3.new(1, 1, 1)
        closeText.TextScaled = true
        closeText.ZIndex = 89
        closeText.Parent = close

        local closeTextStroke = Instance.new("UIStroke")
        closeTextStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        closeTextStroke.Color = Color3.new(0, 0, 0)
        closeTextStroke.LineJoinMode = Enum.LineJoinMode.Bevel
        closeTextStroke.Thickness = 2.90138888
        closeTextStroke.Parent = closeText

        local sv = Instance.new("TextButton")
        sv.Name = "SaturationValue"
        sv.Active = true
        sv.AutoButtonColor = false
        sv.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
        sv.BorderSizePixel = 0
        sv.Position = UDim2.fromOffset(10, 48)
        sv.Size = UDim2.fromOffset(106, 154)
        sv.Text = ""
        sv.ZIndex = 83
        sv.Parent = popup

        local svCorner = Instance.new("UICorner")
        svCorner.CornerRadius = UDim.new(0, 12)
        svCorner.Parent = sv

        local svStroke = Instance.new("UIStroke")
        svStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        svStroke.Color = Color3.new(0, 0, 0)
        svStroke.LineJoinMode = Enum.LineJoinMode.Round
        svStroke.Thickness = 2
        svStroke.Parent = sv

        local whiteGradient = Instance.new("UIGradient")
        whiteGradient.Color = ColorSequence.new(Color3.new(1, 1, 1), Color3.new(1, 1, 1))
        whiteGradient.Transparency = NumberSequence.new(0, 1)
        whiteGradient.Parent = sv

        local dark = Instance.new("Frame")
        dark.BackgroundColor3 = Color3.new(0, 0, 0)
        dark.BorderSizePixel = 0
        dark.Size = UDim2.fromScale(1, 1)
        dark.ZIndex = 84
        dark.Parent = sv

        local darkCorner = svCorner:Clone()
        darkCorner.Parent = dark

        local darkGradient = Instance.new("UIGradient")
        darkGradient.Rotation = 90
        darkGradient.Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0))
        darkGradient.Transparency = NumberSequence.new(1, 0)
        darkGradient.Parent = dark

        local cursor = Instance.new("ImageLabel")
        cursor.Name = "Cursor"
        cursor.AnchorPoint = Vector2.new(0.5, 0.5)
        cursor.BackgroundTransparency = 1
        cursor.Image = "rbxassetid://15055735376"
        cursor.ImageColor3 = Color3.new(1, 1, 1)
        cursor.Size = UDim2.fromOffset(16, 16)
        cursor.ZIndex = 86
        cursor.Parent = sv

        local hue = Instance.new("TextButton")
        hue.Name = "Hue"
        hue.Active = true
        hue.AutoButtonColor = false
        hue.BackgroundColor3 = Color3.new(1, 1, 1)
        hue.BorderSizePixel = 0
        hue.Position = UDim2.fromOffset(123, 48)
        hue.Size = UDim2.fromOffset(15, 154)
        hue.Text = ""
        hue.ZIndex = 83
        hue.Parent = popup

        local hueCorner = Instance.new("UICorner")
        hueCorner.CornerRadius = UDim.new(0, 7)
        hueCorner.Parent = hue

        local hueStroke = Instance.new("UIStroke")
        hueStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        hueStroke.Color = Color3.new(0, 0, 0)
        hueStroke.LineJoinMode = Enum.LineJoinMode.Round
        hueStroke.Thickness = 2
        hueStroke.Parent = hue

        local hueGradient = Instance.new("UIGradient")
        hueGradient.Rotation = 90
        hueGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromHSV(0, 1, 1)),
            ColorSequenceKeypoint.new(0.17, Color3.fromHSV(0.17, 1, 1)),
            ColorSequenceKeypoint.new(0.33, Color3.fromHSV(0.33, 1, 1)),
            ColorSequenceKeypoint.new(0.5, Color3.fromHSV(0.5, 1, 1)),
            ColorSequenceKeypoint.new(0.67, Color3.fromHSV(0.67, 1, 1)),
            ColorSequenceKeypoint.new(0.83, Color3.fromHSV(0.83, 1, 1)),
            ColorSequenceKeypoint.new(1, Color3.fromHSV(1, 1, 1)),
        })
        hueGradient.Parent = hue

        local hueCursor = Instance.new("ImageLabel")
        hueCursor.Name = "HueCursor"
        hueCursor.AnchorPoint = Vector2.new(0.5, 0.5)
        hueCursor.BackgroundTransparency = 1
        hueCursor.Image = "rbxassetid://14423621163"
        hueCursor.ImageColor3 = Color3.new(1, 1, 1)
        hueCursor.ScaleType = Enum.ScaleType.Slice
        hueCursor.Size = UDim2.fromOffset(23, 10)
        hueCursor.SliceCenter = Rect.new(20, 20, 80, 80)
        hueCursor.SliceScale = 0.45
        hueCursor.ZIndex = 86
        hueCursor.Parent = hue

        local preview = Instance.new("ImageLabel")
        preview.Name = "Preview"
        preview.BackgroundTransparency = 1
        preview.Image = "rbxassetid://14423621163"
        preview.ImageColor3 = currentColor
        preview.Position = UDim2.fromOffset(10, 213)
        preview.ScaleType = Enum.ScaleType.Slice
        preview.Size = UDim2.fromOffset(128, 38)
        preview.SliceCenter = Rect.new(20, 20, 80, 80)
        preview.SliceScale = 0.967129648
        preview.ZIndex = 83
        preview.Parent = popup

        local hexInput = Instance.new("TextBox")
        hexInput.Name = "Hex"
        hexInput.BackgroundTransparency = 1
        hexInput.ClearTextOnFocus = false
        hexInput.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        hexInput.PlaceholderText = "#FFFFFF"
        hexInput.Position = UDim2.fromOffset(6, 4)
        hexInput.Size = UDim2.new(1, -12, 1, -8)
        hexInput.Text = colorToHex(currentColor)
        hexInput.TextColor3 = Color3.new(1, 1, 1)
        hexInput.TextScaled = true
        hexInput.TextStrokeColor3 = Color3.new(0, 0, 0)
        hexInput.TextStrokeTransparency = 0
        hexInput.ZIndex = 84
        hexInput.Parent = preview

        local hexConstraint = Instance.new("UITextSizeConstraint")
        hexConstraint.MinTextSize = 12
        hexConstraint.MaxTextSize = 18
        hexConstraint.Parent = hexInput

        local confirm = Instance.new("ImageButton")
        confirm.Name = "Confirm"
        confirm.Active = true
        confirm.AutoButtonColor = true
        confirm.BackgroundTransparency = 1
        confirm.Image = "rbxassetid://14423621163"
        confirm.PressedImage = "rbxassetid://14423621349"
        confirm.Position = UDim2.fromOffset(10, 261)
        confirm.ScaleType = Enum.ScaleType.Slice
        confirm.Size = UDim2.fromOffset(128, 38)
        confirm.SliceCenter = Rect.new(20, 20, 80, 80)
        confirm.SliceScale = 0.967129648
        confirm.ZIndex = 83
        confirm.Parent = popup

        local confirmGradientSource = Gradients:FindFirstChild("GreenGradient")
        if confirmGradientSource then
            confirmGradientSource:Clone().Parent = confirm
        else
            local confirmGradient = Instance.new("UIGradient")
            confirmGradient.Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(0.360783994, 0.937255025, 0)),
                ColorSequenceKeypoint.new(1, Color3.new(0.639216006, 0.992156982, 0.109803997)),
            })
            confirmGradient.Rotation = -90
            confirmGradient.Parent = confirm
        end

        local confirmShadow = Instance.new("ImageLabel")
        confirmShadow.Name = "shadow"
        confirmShadow.AnchorPoint = Vector2.new(0.5, 0.5)
        confirmShadow.BackgroundTransparency = 1
        confirmShadow.Image = "rbxassetid://14001321443"
        confirmShadow.ImageColor3 = Color3.new(0, 0, 0)
        confirmShadow.ImageTransparency = 0.75
        confirmShadow.Position = UDim2.fromScale(0.5, 0.6)
        confirmShadow.ScaleType = Enum.ScaleType.Slice
        confirmShadow.Size = UDim2.new(1, 0, 1.1, 0)
        confirmShadow.SliceCenter = Rect.new(50, 50, 150, 150)
        confirmShadow.SliceScale = 0.75
        confirmShadow.ZIndex = 82
        confirmShadow.Parent = confirm

        local confirmText = Instance.new("TextLabel")
        confirmText.Name = "TextLabel"
        confirmText.AnchorPoint = Vector2.new(0.5, 0.5)
        confirmText.BackgroundTransparency = 1
        confirmText.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        confirmText.Position = UDim2.fromScale(0.5, 0.5)
        confirmText.Size = UDim2.new(1, -12, 0.72, 0)
        confirmText.Text = "Confirm"
        confirmText.TextColor3 = Color3.new(1, 1, 1)
        confirmText.TextScaled = true
        confirmText.ZIndex = 85
        confirmText.Parent = confirm

        local confirmTextConstraint = Instance.new("UITextSizeConstraint")
        confirmTextConstraint.MinTextSize = 13
        confirmTextConstraint.MaxTextSize = 20
        confirmTextConstraint.Parent = confirmText

        local confirmTextStroke = Instance.new("UIStroke")
        confirmTextStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
        confirmTextStroke.Color = Color3.new(0, 0, 0)
        confirmTextStroke.LineJoinMode = Enum.LineJoinMode.Bevel
        confirmTextStroke.Thickness = 2.2
        confirmTextStroke.Parent = confirmText

        local svInput = Instance.new("TextButton")
        svInput.Name = "Input"
        svInput.Active = true
        svInput.AutoButtonColor = false
        svInput.BackgroundTransparency = 1
        svInput.Size = UDim2.fromScale(1, 1)
        svInput.Text = ""
        svInput.ZIndex = 87
        svInput.Parent = sv

        local hueInput = Instance.new("TextButton")
        hueInput.Name = "Input"
        hueInput.Active = true
        hueInput.AutoButtonColor = false
        hueInput.BackgroundTransparency = 1
        hueInput.Size = UDim2.fromScale(1, 1)
        hueInput.Text = ""
        hueInput.ZIndex = 87
        hueInput.Parent = hue

        local open = false
        local destroyed = false
        local draggingSV = false
        local draggingHue = false
        local activeSVInput
        local activeHueInput
        local popupTargetPosition = popup.Position
        local colorBeforeOpen = currentColor

        local function toVector2(position)
            if typeof(position) == "Vector2" then
                return position
            end
            return Vector2.new(position.X, position.Y)
        end

        local function getViewportSize()
            local camera = workspace.CurrentCamera
            if camera then
                return camera.ViewportSize
            end
            return Vector2.new(1920, 1080)
        end

        local function positionPopup(applyPosition)
            local viewport = getViewportSize()
            local framePosition = self.Frame.AbsolutePosition
            local frameSize = self.Frame.AbsoluteSize
            local popupSize = popup.AbsoluteSize
            if popupSize.X <= 0 or popupSize.Y <= 0 then
                popupSize = Vector2.new(148, 310)
            end

            local x = framePosition.X + frameSize.X + 12
            x = math.clamp(x, 8, math.max(8, viewport.X - popupSize.X - 8))
            local y = framePosition.Y + 128
            y = math.clamp(y, 8, math.max(8, viewport.Y - popupSize.Y - 8))
            popupTargetPosition = UDim2.fromOffset(math.round(x), math.round(y))

            if applyPosition ~= false then
                popup.Position = popupTargetPosition
            end
        end

        local function render(fire)
            currentColor = Color3.fromHSV(h, s, v)
            clearGradient(button)
            button.BackgroundColor3 = currentColor
            if button:IsA("ImageButton") or button:IsA("ImageLabel") then
                button.ImageColor3 = currentColor
                button.ImageTransparency = 0
            end
            label.Text = colorToHex(currentColor)
            hexInput.Text = colorToHex(currentColor)
            sv.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
            cursor.Position = UDim2.fromScale(s, 1 - v)
            hueCursor.Position = UDim2.fromScale(0.5, h)
            preview.ImageColor3 = currentColor
            if fire then
                safeCall(settings.Callback, currentColor)
            end
        end

        local function restoreColor(color)
            currentColor = tableToColor(color, currentColor)
            h, s, v = currentColor:ToHSV()
            render(false)
        end

        local function updateSV(position)
            local point = toVector2(position)
            local relative = point - sv.AbsolutePosition
            s = math.clamp(relative.X / math.max(1, sv.AbsoluteSize.X), 0, 1)
            v = 1 - math.clamp(relative.Y / math.max(1, sv.AbsoluteSize.Y), 0, 1)
            render(false)
        end

        local function updateHue(position)
            local point = toVector2(position)
            local relative = point - hue.AbsolutePosition
            h = math.clamp(relative.Y / math.max(1, hue.AbsoluteSize.Y), 0, 1)
            render(false)
        end

        local closePicker

        closePicker = function(immediate, keepCurrent)
            if destroyed then
                return
            end
            if not open and not popup.Visible then
                return
            end

            if not keepCurrent then
                restoreColor(colorBeforeOpen)
            end

            open = false
            draggingSV = false
            draggingHue = false
            activeSVInput = nil
            activeHueInput = nil

            if self.ActiveDropdownClose == closePicker then
                self.ActiveDropdownClose = nil
            end
            if self.ActiveDropdownRoot == popup then
                self.ActiveDropdownRoot = nil
            end

            if immediate then
                popup.Visible = false
                popup.Position = popupTargetPosition
                return
            end

            local closedPosition = UDim2.fromOffset(popupTargetPosition.X.Offset + 12, popupTargetPosition.Y.Offset)
            TweenService:Create(popup, TweenInfo.new(0.2, Enum.EasingStyle.Quint), {
                Position = closedPosition,
            }):Play()

            task.delay(0.21, function()
                if not destroyed and not open then
                    popup.Visible = false
                    popup.Position = popupTargetPosition
                end
            end)
        end

        local function openPicker()
            if destroyed then
                return
            end
            if open then
                closePicker(false, false)
                return
            end

            if self.ActiveDropdownClose and self.ActiveDropdownClose ~= closePicker then
                self.ActiveDropdownClose(false)
            end

            colorBeforeOpen = currentColor
            open = true
            self.ActiveDropdownClose = closePicker
            self.ActiveDropdownRoot = popup
            positionPopup(false)
            popup.Position = UDim2.fromOffset(popupTargetPosition.X.Offset + 12, popupTargetPosition.Y.Offset)
            popup.Visible = true
            TweenService:Create(popup, TweenInfo.new(0.25, Enum.EasingStyle.Quint), {
                Position = popupTargetPosition,
            }):Play()
        end

        button.Activated:Connect(openPicker)
        close.Activated:Connect(function()
            closePicker(false, false)
        end)
        confirm.Activated:Connect(function()
            if not open or destroyed then
                return
            end
            colorBeforeOpen = currentColor
            safeCall(settings.Callback, currentColor)
            closePicker(false, true)
        end)
        GUIFX.ButtonFX(close)
        GUIFX.ButtonFX(confirm)

        svInput.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
                draggingSV = true
                activeSVInput = inputObject.UserInputType == Enum.UserInputType.Touch and inputObject or nil
                updateSV(inputObject.Position)
            end
        end)

        hueInput.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
                draggingHue = true
                activeHueInput = inputObject.UserInputType == Enum.UserInputType.Touch and inputObject or nil
                updateHue(inputObject.Position)
            end
        end)

        UserInputService.InputChanged:Connect(function(inputObject)
            if draggingSV then
                if inputObject.UserInputType == Enum.UserInputType.MouseMovement or inputObject == activeSVInput then
                    updateSV(inputObject.Position)
                end
            elseif draggingHue then
                if inputObject.UserInputType == Enum.UserInputType.MouseMovement or inputObject == activeHueInput then
                    updateHue(inputObject.Position)
                end
            end
        end)

        UserInputService.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject == activeSVInput then
                draggingSV = false
                activeSVInput = nil
            end
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject == activeHueInput then
                draggingHue = false
                activeHueInput = nil
            end
        end)

        hexInput.FocusLost:Connect(function()
            local parsed = tableToColor(hexInput.Text, currentColor)
            h, s, v = parsed:ToHSV()
            render(false)
        end)

        row:GetPropertyChangedSignal("Visible"):Connect(function()
            if not row.Visible then
                closePicker(true, false)
            end
        end)

        row.Destroying:Connect(function()
            if self.ActiveDropdownClose == closePicker then
                self.ActiveDropdownClose = nil
            end
            if self.ActiveDropdownRoot == popup then
                self.ActiveDropdownRoot = nil
            end
            destroyed = true
            if popup then
                popup:Destroy()
                popup = nil
            end
        end)

        self.Frame:GetPropertyChangedSignal("AbsolutePosition"):Connect(function()
            if open and not destroyed then
                positionPopup(true)
            end
        end)

        self.Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
            if open and not destroyed then
                positionPopup(true)
            end
        end)

        local control = {
            Get = function()
                return currentColor
            end,
            Set = function(_, value, silent)
                currentColor = tableToColor(value, currentColor)
                h, s, v = currentColor:ToHSV()
                colorBeforeOpen = currentColor
                render(not silent)
                return currentColor
            end,
            Serialize = function()
                return colorToTable(currentColor)
            end,
            Open = function()
                openPicker()
            end,
            Close = function()
                closePicker(false, false)
            end,
            Destroy = function()
                if destroyed then
                    return
                end
                closePicker(true, true)
                destroyed = true
                if popup then
                    popup:Destroy()
                    popup = nil
                end
                if row then
                    row:Destroy()
                end
            end,
        }

        render(false)
        return self:_decorateControl(control, row, settings, "ColorPicker")
    end


    function Library:_ensureSubTabBar()
        if self.SubTabBar then
            return self.SubTabBar
        end
        local bar = Instance.new("Frame")
        bar.Name = "SideTabs"
        bar.AnchorPoint = Vector2.new(0.5, 0)
        bar.BackgroundTransparency = 1
        bar.Position = UDim2.new(0.5, 0, 0, 0)
        bar.Size = UDim2.new(1, -14, 0, 54)
        bar.Visible = false
        bar.ZIndex = 70
        bar.Parent = self.ItemsFrame.Parent

        local padding = Instance.new("UIPadding")
        padding.PaddingLeft = UDim.new(0, 8)
        padding.PaddingRight = UDim.new(0, 8)
        padding.Parent = bar

        local layout = Instance.new("UIListLayout")
        layout.FillDirection = Enum.FillDirection.Horizontal
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.VerticalAlignment = Enum.VerticalAlignment.Center
        layout.Parent = bar

        self.SubTabBar = bar
        return bar
    end

    function Library:_renderSubTabs()
        local bar = self:_ensureSubTabBar()
        for _, child in ipairs(bar:GetChildren()) do
            if child:IsA("GuiButton") then
                child:Destroy()
            end
        end
        local subTabs = self.SubTabsByTab[self.ActiveTab]
        if not subTabs or #subTabs.Order == 0 then
            bar.Visible = false
            self:_applyContentInsets()
            return
        end
        bar.Visible = true
        local activeName = self.ActiveSubTabByTab[self.ActiveTab] or subTabs.Order[1]
        self.ActiveSubTabByTab[self.ActiveTab] = activeName
        for index, name in ipairs(subTabs.Order) do
            local data = subTabs.Map[name]
            local isActive = name == activeName
            local iconImage = data.Icon or INVENTORY_TAB_ICONS[((index - 1) % #INVENTORY_TAB_ICONS) + 1]

            local button = Instance.new("TextButton")
            button.Name = name
            button.Active = true
            button.AutoButtonColor = false
            button.BackgroundTransparency = 1
            button.BorderSizePixel = 0
            button.LayoutOrder = index
            button.Size = UDim2.fromOffset(48, 48)
            button.Text = ""
            button.ZIndex = 71
            button.Parent = bar

            local scale = Instance.new("UIScale")
            scale.Name = "ButtonUIScale"
            scale.Parent = button

            local selectImage = Instance.new("ImageLabel")
            selectImage.Name = "Select"
            selectImage.BackgroundTransparency = 1
            selectImage.Image = INVENTORY_SELECT_IMAGE
            selectImage.ImageColor3 = Color3.fromRGB(0, 0, 0)
            selectImage.Size = UDim2.fromScale(1, 1)
            selectImage.Visible = isActive
            selectImage.ZIndex = 71
            selectImage.Parent = button

            local icon = Instance.new("ImageLabel")
            icon.Name = "Icon"
            icon.AnchorPoint = Vector2.new(0.5, 0.5)
            icon.BackgroundTransparency = 1
            icon.Image = iconImage
            icon.ImageTransparency = isActive and 0 or 0.08
            icon.Position = UDim2.fromScale(0.5, 0.5)
            icon.ScaleType = Enum.ScaleType.Fit
            icon.Size = UDim2.fromScale(1, 1)
            icon.ZIndex = 72
            icon.Parent = button

            local aspect = Instance.new("UIAspectRatioConstraint")
            aspect.AspectRatio = 1
            aspect.Parent = icon

            scale.Scale = isActive and 1.08 or 1

            button.Activated:Connect(function()
                self:SelectSubTab(self.ActiveTab, name)
                safeCall(data.Callback, name)
            end)
            GUIFX.ButtonFX(button, 1.06)

            data.Button = button
            data.Select = selectImage
            data.IconObject = icon
            data.Scale = scale
        end
        self:_applyContentInsets()
    end

    function Library:SelectSubTab(tabName, subTabName)
        local collection = self.SubTabsByTab[tabName]
        assert(collection and collection.Map[subTabName], "Unknown subtab: " .. tostring(subTabName))
        if self.ActiveDropdownClose then
            self.ActiveDropdownClose(true)
        end
        self.ActiveSubTabByTab[tabName] = subTabName
        self.PageByTab[tabName] = 1
        if self.SearchInput then
            self.SearchInput.Text = ""
        end
        if self.ActiveTab == tabName then
            self:_renderSubTabs()
            self:_refreshPagination()
        end
    end

    function Library:AddSubTab(tabName, subTabSettings, legacyIcon)
        local settings = type(subTabSettings) == "table" and subTabSettings or {
            Name = tostring(subTabSettings),
            Icon = legacyIcon,
        }
        settings.Name = tostring(settings.Name or "SubTab")
        local collection = self.SubTabsByTab[tabName]
        if not collection then
            collection = {Order = {}, Map = {}}
            self.SubTabsByTab[tabName] = collection
        end
        assert(not collection.Map[settings.Name], "A subtab named '" .. settings.Name .. "' already exists")
        local data = {
            Name = settings.Name,
            Icon = settings.Icon,
            Callback = settings.Callback,
        }
        collection.Map[settings.Name] = data
        table.insert(collection.Order, settings.Name)
        if not self.ActiveSubTabByTab[tabName] then
            self.ActiveSubTabByTab[tabName] = settings.Name
        end
        local subTab = {
            Name = settings.Name,
            Tab = tabName,
            Window = self,
        }
        function subTab:Select()
            self.Window:SelectSubTab(self.Tab, self.Name)
        end
        function subTab:_add(methodName, ...)
            local oldSubTab = self.Window._MountSubTab
            self.Window._MountSubTab = self.Name
            local result = self.Window:_withTab(self.Tab, methodName, ...)
            self.Window._MountSubTab = oldSubTab
            return result
        end
        for _, methodName in ipairs({"AddSection", "AddButton", "AddToggle", "AddSelector", "AddDropdown", "AddSlider", "AddKeybind", "AddProgress", "AddColorPicker"}) do
            subTab[methodName] = function(selfSubTab, ...)
                return selfSubTab:_add(methodName, ...)
            end
        end
        if self.ActiveTab == tabName then
            self:_renderSubTabs()
            self:_refreshPagination()
        end
        return subTab
    end

    local OriginalSelectTabV8 = Library.SelectTab
    function Library:SelectTab(tabName)
        OriginalSelectTabV8(self, tabName)
        self:_renderSubTabs()
        self:_refreshPagination()
    end

    local OriginalCreateTabV8 = Library.CreateTab
    function Library:CreateTab(tabSettings, legacyIcon)
        local tab = OriginalCreateTabV8(self, tabSettings, legacyIcon)
        function tab:AddSubTab(settings, icon)
            return self.Window:AddSubTab(self.Name, settings, icon)
        end
        for _, methodName in ipairs({"AddKeybind", "AddProgress", "AddColorPicker"}) do
            tab[methodName] = function(_, ...)
                return self:_withTab(tab.Name, methodName, ...)
            end
        end
        return tab
    end

    local OriginalGetConfigDataV8 = Library.GetConfigData
    function Library:GetConfigData()
        local data = {}
        for flag, binding in pairs(self.ConfigBindings) do
            local control = binding.Control
            local ok, value
            if type(control.Serialize) == "function" then
                ok, value = pcall(control.Serialize, control)
            else
                ok, value = pcall(control.Get, control)
            end
            if ok then
                data[flag] = copyValue(value)
            end
        end
        return data
    end

    function Library:_applyConfigData(data, useDefaults)
        for flag, binding in pairs(self.ConfigBindings) do
            local value = data and data[flag]
            if value == nil and useDefaults then
                value = binding.Default
            end
            if value ~= nil then
                local control = binding.Control
                local setter = type(control.Deserialize) == "function" and control.Deserialize or control.Set
                local ok = pcall(setter, control, copyValue(value), false)
                if not ok and not valuesEqual(value, binding.Default) then
                    pcall(setter, control, copyValue(binding.Default), false)
                end
            end
        end
    end

    function Library:_profilePath(profileName)
        local settings = self.ConfigSettings
        assert(settings, "Call EnableConfig before using config profiles")
        local profile = sanitizeProfileName(profileName or settings.Profile or "Default")
        local base = settings.BaseFileName or settings.FileName or "Settings.json"
        base = base:gsub("%.json$", "")
        return settings.FolderName .. "/" .. base .. "_" .. profile .. ".json", profile
    end

    function Library:SetConfigProfile(profileName)
        local path, profile = self:_profilePath(profileName)
        self.ConfigSettings.Profile = profile
        self.ConfigSettings.Path = path
        self.ConfigSettings.FileName = path:match("([^/]+)$") or self.ConfigSettings.FileName
        self.ConfigLastJSON = nil
        self.KnownProfiles[profile] = true
        return profile
    end

    local OriginalEnableConfigV8 = Library.EnableConfig
    function Library:EnableConfig(configSettings)
        configSettings = configSettings or {}
        OriginalEnableConfigV8(self, configSettings)
        self.ConfigSettings.BaseFileName = self.ConfigSettings.FileName
        self.ConfigSettings.Profile = sanitizeProfileName(configSettings.Profile or "Default")
        self.KnownProfiles = self.KnownProfiles or {}
        self:SetConfigProfile(self.ConfigSettings.Profile)
        return self
    end

    local OriginalLoadConfigV8 = Library.LoadConfig
    function Library:LoadConfig(profileName)
        if profileName ~= nil then
            self:SetConfigProfile(profileName)
        end
        return OriginalLoadConfigV8(self)
    end

    local OriginalSaveConfigV8 = Library.SaveConfig
    function Library:SaveConfig(profileName)
        if profileName ~= nil then
            self:SetConfigProfile(profileName)
        end
        return OriginalSaveConfigV8(self)
    end

    local OriginalDeleteConfigV8 = Library.DeleteConfig
    function Library:DeleteConfig(profileName)
        if profileName ~= nil then
            self:SetConfigProfile(profileName)
        end
        local profile = self.ConfigSettings and self.ConfigSettings.Profile
        local ok, message = OriginalDeleteConfigV8(self)
        if ok and profile then
            self.KnownProfiles[profile] = nil
        end
        return ok, message
    end

    function Library:CreateConfig(profileName, loadAfterCreate)
        local profile = self:SetConfigProfile(profileName)
        local ok, message = self:SaveConfig()
        if ok and loadAfterCreate == true then
            self:LoadConfig(profile)
        end
        return ok, message
    end

    function Library:GetConfigList()
        local result = {}
        for profile in pairs(self.KnownProfiles or {}) do
            table.insert(result, profile)
        end
        if type(listfiles) == "function" and self.ConfigSettings then
            local ok, files = pcall(listfiles, self.ConfigSettings.FolderName)
            if ok and type(files) == "table" then
                local base = (self.ConfigSettings.BaseFileName or "Settings.json"):gsub("%.json$", "")
                for _, path in ipairs(files) do
                    local file = tostring(path):match("([^/\\]+)$") or tostring(path)
                    local profile = file:match("^" .. base:gsub("([^%w])", "%%%1") .. "_(.+)%.json$")
                    if profile and not table.find(result, profile) then
                        table.insert(result, profile)
                    end
                end
            end
        end
        table.sort(result)
        return result
    end

    function Library:_configureResponsive(settings)
        self.ResponsiveSettings = settings
        local scale = self.Frame:FindFirstChild("ResponsiveScale")
        if not scale then
            scale = Instance.new("UIScale")
            scale.Name = "ResponsiveScale"
            scale.Parent = self.Frame
        end
        self.ResponsiveScale = scale
        local function update()
            if settings.Enabled == false then
                scale.Scale = 1
                return
            end
            local camera = workspace.CurrentCamera
            local viewport = camera and camera.ViewportSize or Vector2.new(1920, 1080)
            local design = settings.DesignResolution or Vector2.new(1280, 720)
            local factor = math.min(viewport.X / design.X, viewport.Y / design.Y)
            scale.Scale = math.clamp(factor, tonumber(settings.MinimumScale) or 0.68, tonumber(settings.MaximumScale) or 1.15)
        end
        if workspace.CurrentCamera then
            table.insert(self._V8Connections, workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(update))
        end
        update()
    end

    function Library:_configureLauncherDrag(settings)
        local button = self.LauncherButton
        if not button or settings.Draggable == false then
            return
        end
        local dragging = false
        local dragInput
        local startPosition
        local startPointer
        table.insert(self._V8Connections, button.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragInput = inputObject
                startPointer = inputObject.Position
                startPosition = button.Position
            end
        end))
        table.insert(self._V8Connections, UserInputService.InputChanged:Connect(function(inputObject)
            if not dragging then
                return
            end
            if inputObject.UserInputType == Enum.UserInputType.MouseMovement or inputObject == dragInput then
                local delta = inputObject.Position - startPointer
                button.Position = UDim2.new(startPosition.X.Scale, startPosition.X.Offset + delta.X, startPosition.Y.Scale, startPosition.Y.Offset + delta.Y)
            end
        end))
        table.insert(self._V8Connections, UserInputService.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject == dragInput then
                dragging = false
                dragInput = nil
            end
        end))
    end

    function Library:_configureGamepad(settings)
        if settings.Enabled == false then
            return
        end
        local actionName = "PlantVsCoinsUI_Gamepad_" .. HttpService:GenerateGUID(false)
        self.GamepadActionName = actionName
        ContextActionService:BindAction(actionName, function(_, state, inputObject)
            if state ~= Enum.UserInputState.Begin or not self:IsVisible() then
                return Enum.ContextActionResult.Pass
            end
            if #self.TabOrder == 0 then
                return Enum.ContextActionResult.Pass
            end
            if inputObject.KeyCode == Enum.KeyCode.ButtonL1 then
                local index = table.find(self.TabOrder, self.ActiveTab) or 1
                index = ((index - 2) % #self.TabOrder) + 1
                self:SelectTab(self.TabOrder[index])
                return Enum.ContextActionResult.Sink
            elseif inputObject.KeyCode == Enum.KeyCode.ButtonR1 then
                local index = table.find(self.TabOrder, self.ActiveTab) or 1
                index = (index % #self.TabOrder) + 1
                self:SelectTab(self.TabOrder[index])
                return Enum.ContextActionResult.Sink
            elseif inputObject.KeyCode == Enum.KeyCode.DPadLeft then
                self:PreviousPage()
                return Enum.ContextActionResult.Sink
            elseif inputObject.KeyCode == Enum.KeyCode.DPadRight then
                self:NextPage()
                return Enum.ContextActionResult.Sink
            elseif inputObject.KeyCode == Enum.KeyCode.ButtonB and self.ActivePrompt then
                self.ActivePrompt:Cancel()
                return Enum.ContextActionResult.Sink
            end
            return Enum.ContextActionResult.Pass
        end, false, Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1, Enum.KeyCode.DPadLeft, Enum.KeyCode.DPadRight, Enum.KeyCode.ButtonB)
    end

    function Library:_configureOutsideClose()
        table.insert(self._V8Connections, UserInputService.InputBegan:Connect(function(inputObject)
            if not self.ActiveDropdownClose then
                return
            end
            if inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 and inputObject.UserInputType ~= Enum.UserInputType.Touch then
                return
            end
            local position = inputObject.Position
            local point = Vector2.new(position.X, position.Y)
            local framePosition = self.Frame.AbsolutePosition
            local frameSize = self.Frame.AbsoluteSize
            local insideFrame = point.X >= framePosition.X
                and point.X <= framePosition.X + frameSize.X
                and point.Y >= framePosition.Y
                and point.Y <= framePosition.Y + frameSize.Y

            local insideActiveRoot = false
            local activeRoot = self.ActiveDropdownRoot
            if activeRoot and activeRoot.Parent and activeRoot.Visible then
                local rootPosition = activeRoot.AbsolutePosition
                local rootSize = activeRoot.AbsoluteSize
                insideActiveRoot = point.X >= rootPosition.X
                    and point.X <= rootPosition.X + rootSize.X
                    and point.Y >= rootPosition.Y
                    and point.Y <= rootPosition.Y + rootSize.Y
            end

            if not insideFrame and not insideActiveRoot then
                self.ActiveDropdownClose(false)
            end
        end))
    end

    local function resolveGargantuanInstance(value)
        if typeof(value) == "Instance" then
            return value
        end
        if type(value) ~= "string" or value == "" then
            return nil
        end

        local normalized = value
            :gsub("%[%\"([^%\"]+)%\"%]", ".%1")
            :gsub("%['([^']+)'%]", ".%1")
            :gsub("/", ".")
            :gsub("^game%.", "")

        local parts = {}
        for part in normalized:gmatch("[^%.]+") do
            table.insert(parts, part)
        end

        local current
        local startIndex = 1
        local first = parts[1]
        if first == "workspace" or first == "Workspace" then
            current = workspace
            startIndex = 2
        elseif first == "ReplicatedStorage" then
            current = game:GetService("ReplicatedStorage")
            startIndex = 2
        elseif first == "Players" then
            current = game:GetService("Players")
            startIndex = 2
        elseif first == "Lighting" then
            current = game:GetService("Lighting")
            startIndex = 2
        elseif first == "StarterGui" then
            current = game:GetService("StarterGui")
            startIndex = 2
        elseif first == "CoreGui" then
            current = game:GetService("CoreGui")
            startIndex = 2
        else
            current = game
        end

        for index = startIndex, #parts do
            if not current then
                return nil
            end
            current = current:FindFirstChild(parts[index])
        end

        if current then
            return current
        end

        local searchName = parts[#parts]
        if searchName and searchName ~= "" then
            return workspace:FindFirstChild(searchName, true)
                or game:GetService("ReplicatedStorage"):FindFirstChild(searchName, true)
        end
        return nil
    end

    local function findGargantuanPrimaryPart(model)
        if not model then
            return nil
        end
        if model:IsA("BasePart") then
            return model
        end
        if model:IsA("Model") then
            if model.PrimaryPart then
                return model.PrimaryPart
            end
            local preferred = model:FindFirstChild("HumanoidRootPart", true)
                or model:FindFirstChild("Root", true)
                or model:FindFirstChild("Main", true)
                or model:FindFirstChild("center", true)
            if preferred and preferred:IsA("BasePart") then
                model.PrimaryPart = preferred
                return preferred
            end
            for _, descendant in ipairs(model:GetDescendants()) do
                if descendant:IsA("BasePart") then
                    model.PrimaryPart = descendant
                    return descendant
                end
            end
        end
        return nil
    end

    local function sanitizeGargantuanModel(model)
        for _, descendant in ipairs(model:GetDescendants()) do
            if descendant:IsA("BaseScript") then
                descendant.Disabled = true
            elseif descendant:IsA("BasePart") then
                descendant.Anchored = true
                descendant.CanCollide = false
                descendant.CanQuery = false
                descendant.CanTouch = false
            end
        end
    end

    local function cloneGargantuanModel(source)
        if not source then
            return nil
        end
        local oldArchivable = source.Archivable
        if not oldArchivable then
            source.Archivable = true
        end
        local ok, clone = pcall(function()
            return source:Clone()
        end)
        source.Archivable = oldArchivable
        if not ok or not clone then
            return nil
        end
        if clone:IsA("BasePart") then
            local wrapper = Instance.new("Model")
            wrapper.Name = clone.Name
            clone.Parent = wrapper
            wrapper.PrimaryPart = clone
            clone = wrapper
        end
        if not clone:IsA("Model") then
            clone:Destroy()
            return nil
        end
        local primary = findGargantuanPrimaryPart(clone)
        if not primary then
            clone:Destroy()
            return nil
        end
        sanitizeGargantuanModel(clone)
        return clone
    end

    local function resolveGargantuanOrigin(value, player, pet)
        if typeof(value) == "CFrame" then
            return value
        elseif typeof(value) == "Vector3" then
            return CFrame.new(value)
        elseif typeof(value) == "Instance" then
            if value:IsA("Model") then
                return value:GetPivot()
            elseif value:IsA("BasePart") then
                return value.CFrame
            end
        end

        if player and player.Character then
            local root = player.Character:FindFirstChild("HumanoidRootPart")
            if root then
                return root.CFrame
            end
            if player.Character:IsA("Model") then
                return player.Character:GetPivot()
            end
        end

        if pet then
            if pet:IsA("Model") then
                return pet:GetPivot()
            elseif pet:IsA("BasePart") then
                return pet.CFrame
            end
        end

        local localPlayer = Players.LocalPlayer
        if localPlayer and localPlayer.Character then
            local root = localPlayer.Character:FindFirstChild("HumanoidRootPart")
            if root then
                return root.CFrame
            end
        end
        return CFrame.new(0, 5, 0)
    end

    local function createGargantuanEggProxy(settings, origin)
        local configuredEgg = resolveGargantuanInstance(settings.Egg)
        local sourcePart
        if configuredEgg then
            if configuredEgg:IsA("Model") then
                sourcePart = configuredEgg:FindFirstChildWhichIsA("BasePart", true)
            elseif configuredEgg:IsA("BasePart") then
                sourcePart = configuredEgg
            end
        end

        if not sourcePart then
            local replicatedStorage = game:GetService("ReplicatedStorage")
            local directory = replicatedStorage:FindFirstChild("Library")
            directory = directory and directory:FindFirstChild("Directory")
            local eggs = directory and directory:FindFirstChild("Eggs")
            if eggs then
                for _, descendant in ipairs(eggs:GetDescendants()) do
                    if descendant:IsA("BasePart") and descendant.Name == "Egg" then
                        sourcePart = descendant
                        break
                    end
                end
            end
        end

        local model = Instance.new("Model")
        model.Name = "GargantuanEgg"
        local part
        if sourcePart then
            local oldArchivable = sourcePart.Archivable
            sourcePart.Archivable = true
            local ok, clone = pcall(function()
                return sourcePart:Clone()
            end)
            sourcePart.Archivable = oldArchivable
            if ok then
                part = clone
            end
        end

        if not part then
            part = Instance.new("Part")
            part.Name = "Egg"
            part.Shape = Enum.PartType.Ball
            part.Size = Vector3.new(8, 10, 8)
            part.Material = Enum.Material.SmoothPlastic
            part.Color = Color3.fromRGB(34, 25, 56)
            part.Reflectance = 0.08
        end

        part.Anchored = true
        part.CanCollide = false
        part.CanQuery = false
        part.CanTouch = false
        part.Parent = model
        model.PrimaryPart = part
        model:PivotTo(origin)
        return model
    end

    local function createGargantuanOverlay(parent)
        local screen = Instance.new("ScreenGui")
        screen.Name = "PlantVsCoinsGargantuanAnimation"
        screen.IgnoreGuiInset = true
        screen.ResetOnSpawn = false
        screen.DisplayOrder = 2147483647
        screen.ZIndexBehavior = Enum.ZIndexBehavior.Global

        local frame = Instance.new("Frame")
        frame.Name = "Frame"
        frame.BackgroundColor3 = Color3.new(1, 1, 1)
        frame.BackgroundTransparency = 0
        frame.BorderSizePixel = 0
        frame.Size = UDim2.fromScale(1, 1)
        frame.ZIndex = 2147483647
        frame.Parent = screen

        screen.Parent = parent
        return screen, frame
    end

    local function createGargantuanAvatar(userId, player, origin)
        local description
        if player and player.Character then
            local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                pcall(function()
                    description = humanoid:GetAppliedDescription()
                end)
            end
        end
        if not description and userId then
            pcall(function()
                description = Players:GetHumanoidDescriptionFromUserId(userId)
            end)
        end
        if not description then
            local localPlayer = Players.LocalPlayer
            local humanoid = localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                pcall(function()
                    description = humanoid:GetAppliedDescription()
                end)
            end
        end

        local avatar
        if description then
            pcall(function()
                avatar = Players:CreateHumanoidModelFromDescription(
                    description,
                    Enum.HumanoidRigType.R15,
                    Enum.AssetTypeVerification.ClientOnly
                )
            end)
        end
        if not avatar then
            local localPlayer = Players.LocalPlayer
            local character = localPlayer and localPlayer.Character
            if character then
                local oldArchivable = character.Archivable
                character.Archivable = true
                pcall(function()
                    avatar = character:Clone()
                end)
                character.Archivable = oldArchivable
            end
        end
        if not avatar then
            return nil
        end

        avatar.Name = "GargantuanAnimationPlayer"
        local root = avatar:FindFirstChild("HumanoidRootPart") or avatar.PrimaryPart
        if root and root:IsA("BasePart") then
            avatar.PrimaryPart = root
        end
        for _, descendant in ipairs(avatar:GetDescendants()) do
            if descendant:IsA("BaseScript") then
                descendant.Disabled = true
            elseif descendant:IsA("BasePart") then
                descendant.CanCollide = false
                descendant.CanQuery = false
                descendant.CanTouch = false
                descendant.Anchored = descendant == root
            end
        end
        avatar:PivotTo(origin)
        return avatar
    end

    local function playGargantuanHumanoidAnimation(avatar, animationId, looped)
        if not avatar then
            return nil
        end
        local humanoid = avatar:FindFirstChildOfClass("Humanoid")
        if not humanoid then
            return nil
        end
        local animator = humanoid:FindFirstChildOfClass("Animator")
        if not animator then
            animator = Instance.new("Animator")
            animator.Parent = humanoid
        end
        local animation = Instance.new("Animation")
        animation.AnimationId = tostring(animationId):find("rbxassetid://", 1, true)
            and tostring(animationId)
            or "rbxassetid://" .. tostring(animationId)
        local track
        pcall(function()
            track = animator:LoadAnimation(animation)
            track.Looped = looped == true
            track:Play(0.1)
        end)
        animation:Destroy()
        return track
    end

    local GARGANTUAN_SOUND_DATA = {
        {"rbxassetid://103142314399286", 2, false},
        {"rbxassetid://132890725631565", 2, false},
        {"rbxassetid://75109993331758", 2, false},
        {"rbxassetid://136660441341294", 2.5, false},
        {"rbxassetid://72907996701257", 2.5, false},
        {"rbxassetid://110392170052468", 3, false},
        {"rbxassetid://133290131260832", 1, true},
        {"rbxassetid://84998174688050", 1.25, false},
        {"rbxassetid://121402032110151", 2, false},
        {"rbxassetid://92748852841796", 2, false},
        {"rbxassetid://127591765433602", 2, false},
        {"rbxassetid://130290538463214", 2, false},
        {"rbxassetid://135940719095629", 1.5, false},
        {"rbxassetid://121904522137191", 3, false},
    }

    local GARGANTUAN_SKYBOX = {
        SkyboxBk = "rbxassetid://138540021614807",
        SkyboxDn = "rbxassetid://90482335790307",
        SkyboxFt = "rbxassetid://99233289310782",
        SkyboxLf = "rbxassetid://111253388832579",
        SkyboxRt = "rbxassetid://80274178837189",
        SkyboxUp = "rbxassetid://90584530006628",
    }

    local GARGANTUAN_SKY_STAGES = {
        "rbxassetid://91951324406560",
        "rbxassetid://82040892409095",
        "rbxassetid://72044795462699",
    }

    function Library:PlayGargantuanAnimation(settings)
        if settings == nil and type(self) == "table" and self.Pet ~= nil then
            settings = self
            self = Library
        end
        settings = type(settings) == "table" and settings or {}

        local petSource = resolveGargantuanInstance(settings.Pet)
        assert(petSource and (petSource:IsA("Model") or petSource:IsA("BasePart")), "PlayGargantuanAnimation: Pet must be a Model, BasePart, or valid instance path")

        local playerValue = settings.Player
        local player
        local userId
        if typeof(playerValue) == "Instance" and playerValue:IsA("Player") then
            player = playerValue
            userId = player.UserId
        else
            userId = tonumber(playerValue)
            assert(userId, "PlayGargantuanAnimation: Player must be a Player or user id")
            player = Players:GetPlayerByUserId(userId)
        end

        if self._ActiveGargantuanAnimation and self._ActiveGargantuanAnimation.IsPlaying then
            self._ActiveGargantuanAnimation:Stop()
        end

        local completedBindable = Instance.new("BindableEvent")
        local state = {
            stopped = false,
            cleaned = false,
            tweens = {},
            connections = {},
            instances = {},
            screenStates = {},
            coreStates = {},
        }
        local controller = {
            IsPlaying = true,
            Completed = completedBindable.Event,
        }

        function controller:Stop()
            state.stopped = true
        end

        function controller:Wait()
            if not self.IsPlaying then
                return self.Success, self.Error
            end
            return completedBindable.Event:Wait()
        end

        function controller:Destroy()
            self:Stop()
            if not self.IsPlaying then
                completedBindable:Destroy()
            end
        end

        self._ActiveGargantuanAnimation = controller

        local speed = tonumber(settings.Speed) or 1
        speed = math.clamp(speed, 0.1, 5)
        local soundMultiplier = math.max(0, tonumber(settings.SoundVolume) or 1)
        local useSounds = settings.Sounds ~= false
        local useParticles = settings.Particles ~= false
        local hideUI = settings.HideUI ~= false
        local camera = workspace.CurrentCamera
        local lighting = game:GetService("Lighting")
        local starterGui = game:GetService("StarterGui")
        local replicatedStorage = game:GetService("ReplicatedStorage")
        local localPlayer = Players.LocalPlayer or Players.PlayerAdded:Wait()
        local playerGui = localPlayer:WaitForChild("PlayerGui")
        local origin = resolveGargantuanOrigin(settings.Origin or settings.Position, player, petSource)
        local originalCameraType = camera.CameraType
        local originalCameraSubject = camera.CameraSubject
        local originalCameraCFrame = camera.CFrame
        local originalFOV = camera.FieldOfView
        local baseCameraCFrame = originalCameraCFrame
        local shakeMagnitude = 0
        local shakeRotation = 0
        local shakeEnd = 0
        local sustainedShake = 0
        local createdSky = false
        local sky = lighting:FindFirstChildOfClass("Sky")
        local oldSky = {}
        local atmosphere
        local overlay
        local overlayFrame
        local eggModel
        local petModel
        local avatar
        local sounds = {}
        local tempFolder

        local function rememberInstance(instance)
            if instance then
                table.insert(state.instances, instance)
            end
            return instance
        end

        local function addConnection(connection)
            table.insert(state.connections, connection)
            return connection
        end

        local function scaledTime(seconds)
            return math.max(0, seconds / speed)
        end

        local function waitFor(seconds)
            local finish = os.clock() + scaledTime(seconds)
            while os.clock() < finish do
                if state.stopped then
                    return false
                end
                RunService.Heartbeat:Wait()
            end
            return not state.stopped
        end

        local function tweenObject(instance, goals, duration, style, direction)
            if not instance or not instance.Parent then
                return nil
            end
            local tween = TweenService:Create(
                instance,
                TweenInfo.new(
                    scaledTime(duration),
                    style or Enum.EasingStyle.Sine,
                    direction or Enum.EasingDirection.Out
                ),
                goals
            )
            table.insert(state.tweens, tween)
            tween:Play()
            return tween
        end

        local function tweenPivot(model, target, duration, style, direction)
            if not model or not model.Parent then
                return false
            end
            local start = model:GetPivot()
            local total = scaledTime(duration)
            if total <= 0 then
                model:PivotTo(target)
                return true
            end
            local began = os.clock()
            while true do
                if state.stopped or not model.Parent then
                    return false
                end
                local alpha = math.clamp((os.clock() - began) / total, 0, 1)
                local eased = TweenService:GetValue(
                    alpha,
                    style or Enum.EasingStyle.Sine,
                    direction or Enum.EasingDirection.Out
                )
                model:PivotTo(start:Lerp(target, eased))
                if alpha >= 1 then
                    break
                end
                RunService.RenderStepped:Wait()
            end
            model:PivotTo(target)
            return true
        end

        local function setCamera(value)
            baseCameraCFrame = value
        end

        local function shakeOnce(magnitude, rotation, duration)
            shakeMagnitude = math.max(shakeMagnitude, magnitude or 0)
            shakeRotation = math.max(shakeRotation, rotation or 0)
            shakeEnd = math.max(shakeEnd, os.clock() + scaledTime(duration or 1))
        end

        local function setSustainedShake(value)
            sustainedShake = math.max(0, value or 0)
        end

        local function playSound(index, playbackSpeed, volumeOverride)
            if not useSounds then
                return nil
            end
            local sound = sounds[index]
            if not sound then
                return nil
            end
            if playbackSpeed then
                sound.PlaybackSpeed = playbackSpeed
            end
            if volumeOverride then
                sound.Volume = volumeOverride * soundMultiplier
            end
            sound.TimePosition = 0
            sound:Play()
            return sound
        end

        local function emitDescendants(root, onlyName)
            if not root then
                return
            end
            for _, descendant in ipairs(root:GetDescendants()) do
                if descendant:IsA("ParticleEmitter") and (not onlyName or descendant.Name == onlyName) then
                    local count = descendant:GetAttribute("EmitCount") or 1
                    descendant:Emit(math.max(1, tonumber(count) or 1))
                elseif descendant:IsA("Beam") or descendant:IsA("Trail") then
                    descendant.Enabled = true
                end
            end
        end

        local function cloneParticle(name, pivot, scale)
            if not useParticles then
                return nil
            end
            local assets = replicatedStorage:FindFirstChild("Assets")
            local particles = assets and assets:FindFirstChild("Particles")
            local gargantuan = particles and particles:FindFirstChild("Gargantuan")
            local source = gargantuan and gargantuan:FindFirstChild(name)
            if not source then
                return nil
            end
            local clone = source:Clone()
            rememberInstance(clone)
            clone.Parent = tempFolder
            if clone:IsA("Model") then
                clone:PivotTo(pivot)
                if scale and scale ~= 1 then
                    pcall(function()
                        clone:ScaleTo(scale)
                    end)
                end
            elseif clone:IsA("BasePart") then
                clone.CFrame = pivot
                if scale and scale ~= 1 then
                    clone.Size *= scale
                end
            end
            return clone
        end

        local function cleanup()
            if state.cleaned then
                return
            end
            state.cleaned = true
            state.stopped = true

            for _, tween in ipairs(state.tweens) do
                pcall(function()
                    tween:Cancel()
                end)
            end
            for _, connection in ipairs(state.connections) do
                pcall(function()
                    connection:Disconnect()
                end)
            end

            camera.CameraType = originalCameraType
            camera.CameraSubject = originalCameraSubject
            camera.CFrame = originalCameraCFrame
            camera.FieldOfView = originalFOV

            for property, value in pairs(oldSky) do
                if sky and sky.Parent then
                    pcall(function()
                        sky[property] = value
                    end)
                end
            end
            if createdSky and sky then
                sky:Destroy()
            end
            if atmosphere then
                atmosphere:Destroy()
            end

            for screenGui, enabled in pairs(state.screenStates) do
                if screenGui.Parent then
                    screenGui.Enabled = enabled
                end
            end
            for coreType, enabled in pairs(state.coreStates) do
                pcall(function()
                    starterGui:SetCoreGuiEnabled(coreType, enabled)
                end)
            end

            for _, instance in ipairs(state.instances) do
                if instance and instance.Parent then
                    pcall(function()
                        instance:Destroy()
                    end)
                end
            end
            for _, sound in ipairs(sounds) do
                if sound and sound.Parent then
                    sound:Destroy()
                end
            end

            controller.IsPlaying = false
            if self._ActiveGargantuanAnimation == controller then
                self._ActiveGargantuanAnimation = nil
            end
        end

        task.spawn(function()
            local success, failure = xpcall(function()
                tempFolder = Instance.new("Folder")
                tempFolder.Name = "PlantVsCoinsGargantuanAnimation"
                tempFolder.Parent = workspace
                rememberInstance(tempFolder)

                overlay, overlayFrame = createGargantuanOverlay(playerGui)
                rememberInstance(overlay)

                if hideUI then
                    for _, child in ipairs(playerGui:GetChildren()) do
                        if child:IsA("ScreenGui") and child ~= overlay then
                            state.screenStates[child] = child.Enabled
                            child.Enabled = false
                        end
                    end
                    if self.Screen and self.Screen:IsA("ScreenGui") and self.Screen ~= overlay then
                        state.screenStates[self.Screen] = self.Screen.Enabled
                        self.Screen.Enabled = false
                    end
                    for _, coreType in ipairs({Enum.CoreGuiType.Chat, Enum.CoreGuiType.PlayerList}) do
                        local ok, enabled = pcall(function()
                            return starterGui:GetCoreGuiEnabled(coreType)
                        end)
                        if ok then
                            state.coreStates[coreType] = enabled
                        end
                        pcall(function()
                            starterGui:SetCoreGuiEnabled(coreType, false)
                        end)
                    end
                end

                if not sky then
                    sky = Instance.new("Sky")
                    sky.Parent = lighting
                    createdSky = true
                end
                for property, value in pairs(GARGANTUAN_SKYBOX) do
                    oldSky[property] = sky[property]
                    sky[property] = value
                end

                local hatchModule = replicatedStorage:FindFirstChild("GargantuanHatch", true)
                local atmosphereSource = hatchModule and hatchModule:FindFirstChild("Atmosphere")
                if atmosphereSource and atmosphereSource:IsA("Atmosphere") then
                    atmosphere = atmosphereSource:Clone()
                else
                    atmosphere = Instance.new("Atmosphere")
                    atmosphere.Color = Color3.fromRGB(199, 199, 199)
                    atmosphere.Decay = Color3.fromRGB(106, 112, 125)
                    atmosphere.Density = 0.25
                    atmosphere.Offset = 0.25
                    atmosphere.Glare = 0
                    atmosphere.Haze = 0
                end
                atmosphere.Parent = lighting
                rememberInstance(atmosphere)

                if useSounds then
                    for _, data in ipairs(GARGANTUAN_SOUND_DATA) do
                        local sound = Instance.new("Sound")
                        sound.SoundId = data[1]
                        sound.Volume = data[2] * soundMultiplier
                        sound.Looped = data[3]
                        sound.Parent = workspace
                        table.insert(sounds, sound)
                    end
                    pcall(function()
                        game:GetService("ContentProvider"):PreloadAsync(sounds)
                    end)
                end

                eggModel = createGargantuanEggProxy(settings, origin)
                eggModel.Parent = tempFolder
                rememberInstance(eggModel)

                petModel = cloneGargantuanModel(petSource)
                assert(petModel, "PlayGargantuanAnimation: Pet model could not be cloned")
                if tonumber(settings.Scale) and tonumber(settings.Scale) ~= 1 then
                    pcall(function()
                        petModel:ScaleTo(math.max(0.01, tonumber(settings.Scale)))
                    end)
                end
                petModel.Parent = tempFolder
                rememberInstance(petModel)

                avatar = createGargantuanAvatar(userId, player, origin)
                assert(avatar, "PlayGargantuanAnimation: Player avatar could not be created")
                avatar.Parent = tempFolder
                rememberInstance(avatar)

                camera.CameraType = Enum.CameraType.Scriptable
                setCamera(eggModel:GetPivot() + Vector3.new(8, 20, -30))
                camera.CFrame = baseCameraCFrame

                addConnection(RunService.RenderStepped:Connect(function()
                    local now = os.clock()
                    local activeShake = sustainedShake
                    if now < shakeEnd then
                        activeShake = math.max(activeShake, shakeMagnitude)
                    else
                        shakeMagnitude = 0
                        shakeRotation = 0
                    end
                    local shake = CFrame.new()
                    if activeShake > 0 then
                        local t = now * 18
                        local positional = activeShake * 0.08
                        local rotational = math.rad((shakeRotation > 0 and shakeRotation or activeShake * 2) * 0.08)
                        shake = CFrame.new(
                            math.noise(t, 0, 0) * positional,
                            math.noise(0, t, 0) * positional,
                            math.noise(0, 0, t) * positional
                        ) * CFrame.Angles(
                            math.noise(t, 10, 0) * rotational,
                            math.noise(0, t, 10) * rotational,
                            math.noise(10, 0, t) * rotational
                        )
                    end
                    camera.CFrame = baseCameraCFrame * shake
                end))

                playSound(1)
                if not waitFor(1) then
                    return
                end
                tweenObject(overlayFrame, {BackgroundTransparency = 1}, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

                local followEgg = addConnection(RunService.RenderStepped:Connect(function()
                    if eggModel and eggModel.Parent then
                        setCamera(CFrame.lookAt(baseCameraCFrame.Position, eggModel:GetPivot().Position))
                    end
                end))

                playSound(3)
                task.spawn(function()
                    tweenPivot(eggModel, eggModel:GetPivot() + Vector3.new(0, 400, 0), 2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                end)
                if not waitFor(1.9) then
                    return
                end
                shakeOnce(2, 3, 1)
                local pulse = cloneParticle("Pulse", eggModel:GetPivot(), 5)
                emitDescendants(pulse)
                playSound(2)
                if not tweenPivot(eggModel, eggModel:GetPivot() + Vector3.new(0, 600, 0), 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.Out) then
                    return
                end
                followEgg:Disconnect()

                task.delay(scaledTime(0.4), function()
                    if sky and sky.Parent and not state.stopped then
                        sky.SkyboxUp = GARGANTUAN_SKY_STAGES[1]
                    end
                end)
                if not waitFor(0.5) then
                    return
                end

                playSound(4, 1.2)
                playSound(8)
                if sounds[7] then
                    sounds[7].Volume = 0
                    sounds[7]:Play()
                    tweenObject(sounds[7], {Volume = 0.5 * soundMultiplier}, 0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
                end
                camera.FieldOfView -= 5
                shakeOnce(3.125, 7.5, 1)
                local rift = cloneParticle("Rift", eggModel:GetPivot(), 4)
                emitDescendants(rift, "Small")

                task.delay(scaledTime(1.15), function()
                    if sky and sky.Parent and not state.stopped then
                        sky.SkyboxUp = GARGANTUAN_SKY_STAGES[2]
                    end
                end)
                if not waitFor(1.25) then
                    return
                end

                playSound(4, 1.1)
                playSound(5)
                if sounds[7] then
                    tweenObject(sounds[7], {Volume = 1 * soundMultiplier}, 0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
                end
                camera.FieldOfView -= 5
                shakeOnce(5, 12, 1.3)
                if rift and rift:IsA("Model") then
                    pcall(function()
                        rift:ScaleTo(7)
                    end)
                end
                emitDescendants(rift)

                task.delay(scaledTime(1.4), function()
                    if sky and sky.Parent and not state.stopped then
                        sky.SkyboxUp = GARGANTUAN_SKY_STAGES[3]
                    end
                end)
                if not waitFor(1.5) then
                    return
                end

                playSound(4, 1)
                playSound(5)
                playSound(6)
                if sounds[7] then
                    tweenObject(sounds[7], {Volume = 1.5 * soundMultiplier}, 0.4, Enum.EasingStyle.Linear, Enum.EasingDirection.In)
                end
                camera.FieldOfView -= 10
                shakeOnce(7.8125, 18.75, 2.25)
                if rift and rift:IsA("Model") then
                    pcall(function()
                        rift:ScaleTo(12)
                    end)
                end
                emitDescendants(rift)
                if not waitFor(2) then
                    return
                end
                setSustainedShake(2.5)

                avatar:PivotTo(origin)
                playGargantuanHumanoidAnimation(avatar, 14944748626, false)
                task.delay(scaledTime(1), function()
                    if avatar and avatar.Parent and not state.stopped then
                        playGargantuanHumanoidAnimation(avatar, 14958064526, true)
                    end
                end)

                overlayFrame.BackgroundTransparency = 0
                if not waitFor(0.1) then
                    return
                end
                tweenObject(overlayFrame, {BackgroundTransparency = 1}, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In)

                local humanoid = avatar:FindFirstChildOfClass("Humanoid")
                local root = avatar:FindFirstChild("HumanoidRootPart") or avatar.PrimaryPart
                local feet = root and root.CFrame or avatar:GetPivot()
                if humanoid and root then
                    feet = root.CFrame - Vector3.new(0, humanoid.HipHeight, 0)
                end
                local frontPoint = feet.Position + feet.LookVector * 10
                local cameraPosition = Vector3.new(frontPoint.X, feet.Position.Y + (humanoid and humanoid.HipHeight or 2), frontPoint.Z)
                setCamera(CFrame.lookAt(cameraPosition, avatar:GetPivot().Position))
                playSound(10)
                task.delay(scaledTime(0.8), function()
                    if not state.stopped then
                        playSound(11)
                    end
                end)
                if not waitFor(1) then
                    return
                end
                shakeOnce(3, 5, 1)

                local followAvatar = addConnection(RunService.RenderStepped:Connect(function()
                    if avatar and avatar.Parent then
                        setCamera(CFrame.lookAt(baseCameraCFrame.Position, avatar:GetPivot().Position))
                    end
                end))
                if not tweenPivot(avatar, avatar:GetPivot() + Vector3.new(0, 350, 0), 1.9, Enum.EasingStyle.Linear, Enum.EasingDirection.Out) then
                    return
                end
                if not waitFor(0.1) then
                    return
                end
                overlayFrame.BackgroundTransparency = 0
                followAvatar:Disconnect()

                local oldDensity = atmosphere.Density
                atmosphere.Density = 0.35
                setCamera(CFrame.new(camera.CFrame.Position + Vector3.new(0, 3000, 0)))
                local centerRay = camera:ViewportPointToRay(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2, 100)
                local bottomLeftRay = camera:ViewportPointToRay(0, camera.ViewportSize.Y, 100)
                local topRightRay = camera:ViewportPointToRay(camera.ViewportSize.X, 0, 400)
                local centerPosition = centerRay.Origin
                local avatarStart = CFrame.lookAt(bottomLeftRay.Origin, centerPosition)
                avatarStart += avatarStart.LookVector * -10
                local petStart = CFrame.lookAt(topRightRay.Origin, centerPosition)
                petStart += petStart.LookVector * -100

                avatar:PivotTo(avatarStart)
                playGargantuanHumanoidAnimation(avatar, 17526382412, true)
                petModel:PivotTo(petStart)

                local primary = findGargantuanPrimaryPart(petModel)
                local front = primary:FindFirstChild("front")
                if not front or not front:IsA("Attachment") then
                    front = Instance.new("Attachment")
                    front.Name = "front"
                    front.Position = Vector3.new(0, 0, -primary.Size.Z * 0.5)
                    front.Parent = primary
                end
                local mount = primary:FindFirstChild("mount")
                if not mount or not mount:IsA("Attachment") then
                    mount = Instance.new("Attachment")
                    mount.Name = "mount"
                    mount.Position = Vector3.new(0, primary.Size.Y * 0.5 + 2, 0)
                    mount.Parent = primary
                end
                local center = primary:FindFirstChild("center")
                if not center or not center:IsA("Attachment") then
                    center = Instance.new("Attachment")
                    center.Name = "center"
                    center.Parent = primary
                end

                if useParticles then
                    local assets = replicatedStorage:FindFirstChild("Assets")
                    local particles = assets and assets:FindFirstChild("Particles")
                    local gargantuan = particles and particles:FindFirstChild("Gargantuan")
                    local meteor = gargantuan and gargantuan:FindFirstChild("MeteorParticles")
                    if meteor then
                        for _, child in ipairs(meteor:GetChildren()) do
                            child:Clone().Parent = front
                        end
                    end
                end

                task.spawn(function()
                    tweenPivot(avatar, CFrame.new(centerPosition), 2.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.In)
                end)
                task.spawn(function()
                    tweenPivot(petModel, CFrame.new(centerPosition + petStart.LookVector * -20), 2.4, Enum.EasingStyle.Cubic, Enum.EasingDirection.In)
                end)

                if not waitFor(0.1) then
                    return
                end
                tweenObject(overlayFrame, {BackgroundTransparency = 1}, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
                if not waitFor(0.3) then
                    return
                end
                shakeOnce(2, 4, 3)
                playSound(12)
                playSound(9)
                if not waitFor(1.8) then
                    return
                end
                tweenObject(camera, {FieldOfView = 20}, 0.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.In)
                tweenObject(overlayFrame, {BackgroundTransparency = 0}, 0.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.In)
                if not waitFor(0.2) then
                    return
                end
                if sounds[2] then
                    sounds[2].Volume = 4 * soundMultiplier
                end
                playSound(2)
                setSustainedShake(0)
                if not waitFor(0.2) then
                    return
                end

                local landing = origin + Vector3.new(0, 10, 0)
                local highPosition = landing.Position + Vector3.new(0, 300, 500)
                petModel:PivotTo(CFrame.lookAt(highPosition, landing.Position))
                camera.FieldOfView = 70
                playGargantuanHumanoidAnimation(avatar, 11897877992, true)
                avatar.Parent = petModel
                avatar:PivotTo(mount.WorldCFrame + Vector3.new(0, 2, 0))

                local orbitStart = os.clock()
                local orbitDuration = scaledTime(5)
                local orbitConnection = addConnection(RunService.RenderStepped:Connect(function()
                    if not petModel.Parent or not center.Parent then
                        return
                    end
                    local alpha = math.clamp((os.clock() - orbitStart) / orbitDuration, 0, 1)
                    local horizontal = -50 + 100 * alpha
                    local vertical = 25 - 50 * alpha
                    local centerWorld = center.WorldPosition
                    local side = (center.WorldCFrame * CFrame.Angles(0, math.pi / 2, 0)).LookVector
                    local position = centerWorld + side * horizontal + Vector3.new(-25, vertical, 0)
                    setCamera(CFrame.lookAt(position, centerWorld))
                end))

                playSound(14)
                setSustainedShake(3.5)
                task.spawn(function()
                    tweenPivot(petModel, CFrame.new(landing.Position) * (petModel:GetPivot() - petModel:GetPivot().Position), 5, Enum.EasingStyle.Circular, Enum.EasingDirection.In)
                end)
                if not waitFor(0.1) then
                    return
                end
                playSound(13)
                tweenObject(overlayFrame, {BackgroundTransparency = 1}, 0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In)
                if not waitFor(4.6) then
                    return
                end
                playSound(11)
                if not waitFor(0.3) then
                    return
                end
                orbitConnection:Disconnect()
                atmosphere.Density = oldDensity
            end, debug.traceback)

            local interrupted = state.stopped
            cleanup()
            controller.Success = success and not interrupted
            controller.Error = success and nil or failure
            completedBindable:Fire(controller.Success, controller.Error)
            safeCall(settings.Callback, controller.Success, controller.Error)
            if not success and settings.SuppressErrors ~= true then
                warn("PlayGargantuanAnimation | " .. tostring(failure))
            end
        end)

        return controller
    end

    function Library:StopGargantuanAnimation()
        if self._ActiveGargantuanAnimation then
            self._ActiveGargantuanAnimation:Stop()
            return true
        end
        return false
    end

    function Library:IsGargantuanAnimationPlaying()
        return self._ActiveGargantuanAnimation ~= nil and self._ActiveGargantuanAnimation.IsPlaying == true
    end

    Library.PlayGargantuan = Library.PlayGargantuanAnimation

    local OriginalCreateWindowV8 = Library.CreateWindow
    function Library:CreateWindow(settings)
        settings = settings or {}
        local window = OriginalCreateWindowV8(self, settings)
        window._V8Connections = {}
        window._ActiveSectionByTab = {}
        window.SubTabsByTab = {}
        window.ActiveSubTabByTab = {}
        window.KnownProfiles = window.KnownProfiles or {}
        window.TooltipsEnabled = settings.Tooltips ~= false
        window.TooltipSoundEnabled = settings.TooltipSound ~= false
        window.ItemsFrameOriginalPosition = window.ItemsFrame.Position
        window:_applyContentInsets()
        if window.LauncherButton and window.LauncherSettings and window.LauncherSettings.Tooltip then
            window:AttachTooltip(window.LauncherButton, window.LauncherSettings.Tooltip)
        end
        local responsive = type(settings.Responsive) == "table" and settings.Responsive or {Enabled = settings.Responsive ~= false}
        window:_configureResponsive(responsive)
        local mobile = type(settings.Mobile) == "table" and settings.Mobile or {}
        window:_configureLauncherDrag({Draggable = mobile.LauncherDraggable ~= false})
        local gamepad = type(settings.Gamepad) == "table" and settings.Gamepad or {Enabled = settings.GamepadNavigation ~= false}
        window:_configureGamepad(gamepad)
        window:_configureOutsideClose()
        table.insert(window._V8Connections, UserInputService.InputChanged:Connect(function(inputObject)
            if window.TooltipPanel and window.TooltipPanel.Visible and inputObject.UserInputType == Enum.UserInputType.MouseMovement then
                window:_positionTooltip(window.TooltipTarget)
            end
        end))
        if window.ConfigSettings then
            local saving = settings.ConfigurationSaving or {}
            window.ConfigSettings.BaseFileName = window.ConfigSettings.BaseFileName or window.ConfigSettings.FileName
            window.ConfigSettings.Profile = sanitizeProfileName(saving.Profile or window.ConfigSettings.Profile or "Default")
            window.KnownProfiles[window.ConfigSettings.Profile] = true
            window:SetConfigProfile(window.ConfigSettings.Profile)
        end
        return window
    end

    local OriginalDestroyV8 = Library.Destroy
    function Library:Destroy()
        if self.GamepadActionName then
            ContextActionService:UnbindAction(self.GamepadActionName)
        end
        for _, connection in ipairs(self._V8Connections or {}) do
            pcall(function()
                connection:Disconnect()
            end)
        end
        if self.ActivePrompt and self.ActivePrompt.Close then
            self.ActivePrompt:Close(false)
        end
        if self.ActiveGoal and self.ActiveGoal.Destroy then
            self.ActiveGoal:Destroy()
            self.ActiveGoal = nil
        end
        if self._NativeNotificationHost and self._NativeNotificationHost.Screen then
            self._NativeNotificationHost.Screen:Destroy()
            self._NativeNotificationHost = nil
        end
        return OriginalDestroyV8(self)
    end

    return Library
end)(UIFactory, GUIFX)

return Library

end

]================================================])()

local Library = CreateLibrary(UIFactory, GUIFX)

loadstring([================================================[
return function(Library)
    local UserInputService = game:GetService("UserInputService")
    local RunService = game:GetService("RunService")
    local TweenService = game:GetService("TweenService")

    local ControlKeys = {
        [Enum.KeyCode.LeftShift] = true,
        [Enum.KeyCode.RightShift] = true,
        [Enum.KeyCode.LeftControl] = true,
        [Enum.KeyCode.RightControl] = true,
        [Enum.KeyCode.LeftAlt] = true,
        [Enum.KeyCode.RightAlt] = true,
    }
    local AllKeys = {}
    for _, key in ipairs(Enum.KeyCode:GetEnumItems()) do
        if key ~= Enum.KeyCode.Unknown then
            AllKeys[key] = true
        end
    end
    local AssignedKeys = {}

    local NameOverrides = {
        [Enum.KeyCode.LeftShift] = "Shift",
        [Enum.KeyCode.RightShift] = "Shift",
        [Enum.KeyCode.LeftControl] = "Ctrl",
        [Enum.KeyCode.RightControl] = "Ctrl",
        [Enum.KeyCode.LeftAlt] = "Alt",
        [Enum.KeyCode.RightAlt] = "Alt",
        [Enum.KeyCode.Zero] = "0",
        [Enum.KeyCode.One] = "1",
        [Enum.KeyCode.Two] = "2",
        [Enum.KeyCode.Three] = "3",
        [Enum.KeyCode.Four] = "4",
        [Enum.KeyCode.Five] = "5",
        [Enum.KeyCode.Six] = "6",
        [Enum.KeyCode.Seven] = "7",
        [Enum.KeyCode.Eight] = "8",
        [Enum.KeyCode.Nine] = "9",
    }
    local NameAliases = {
        Shift = Enum.KeyCode.LeftShift,
        Ctrl = Enum.KeyCode.LeftControl,
        Alt = Enum.KeyCode.LeftAlt,
        ["0"] = Enum.KeyCode.Zero,
        ["1"] = Enum.KeyCode.One,
        ["2"] = Enum.KeyCode.Two,
        ["3"] = Enum.KeyCode.Three,
        ["4"] = Enum.KeyCode.Four,
        ["5"] = Enum.KeyCode.Five,
        ["6"] = Enum.KeyCode.Six,
        ["7"] = Enum.KeyCode.Seven,
        ["8"] = Enum.KeyCode.Eight,
        ["9"] = Enum.KeyCode.Nine,
    }

    local function safeCall(callback, ...)
        if type(callback) == "function" then
            local ok, err = pcall(callback, ...)
            if not ok then warn(err) end
        end
    end

    local function sortKeys(keys)
        local result = table.clone(keys)
        table.sort(result, function(a, b)
            local ac = ControlKeys[a] and 1 or 0
            local bc = ControlKeys[b] and 1 or 0
            if ac == bc then return a.Name < b.Name end
            return bc < ac
        end)
        return result
    end

    local function makeName(keys)
        local sorted = sortKeys(keys)
        if #sorted == 0 then return "<UNBOUND>" end
        local names = {}
        for i, key in ipairs(sorted) do
            names[i] = NameOverrides[key] or key.Name
        end
        return table.concat(names, "+")
    end

    local function serializeKeys(keys)
        local sorted = sortKeys(keys)
        local names = {}
        for i, key in ipairs(sorted) do
            names[i] = ControlKeys[key] and (NameOverrides[key] or key.Name) or key.Name
        end
        return table.concat(names, "+")
    end

    local function normalizeKeys(value)
        local values = {}
        if typeof(value) == "EnumItem" then
            values[1] = value
        elseif type(value) == "table" then
            values = value
        elseif type(value) == "string" then
            for name in value:gmatch("[^%+]+") do
                local clean = name:gsub("^%s+", ""):gsub("%s+$", "")
                values[#values + 1] = NameAliases[clean] or Enum.KeyCode[clean:gsub("^Enum%.KeyCode%.", "")]
            end
        end

        local result, seen = {}, {}
        local controls, standard = 0, 0
        for _, value2 in ipairs(values) do
            local key = typeof(value2) == "EnumItem" and value2 or Enum.KeyCode[tostring(value2):gsub("^Enum%.KeyCode%.", "")]
            if key and AllKeys[key] and not seen[key] then
                if ControlKeys[key] and controls < 2 then
                    controls += 1
                    seen[key] = true
                    result[#result + 1] = key
                elseif not ControlKeys[key] and standard < 1 then
                    standard += 1
                    seen[key] = true
                    result[#result + 1] = key
                end
            end
        end
        return result
    end

    local function setGradient(button, blue)
        for _, child in ipairs(button:GetChildren()) do
            if child:IsA("UIGradient") then child:Destroy() end
        end
        local gradient = Instance.new("UIGradient")
        gradient.Name = blue and "BlueGradient" or "GreyGradient"
        gradient.Color = blue and ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(0.34117648, 0.847058833, 1)),
            ColorSequenceKeypoint.new(1, Color3.new(0.529411793, 1, 0.97647059)),
        }) or ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.new(0.576470613, 0.58431375, 0.65882355)),
            ColorSequenceKeypoint.new(1, Color3.new(0.815686285, 0.831372559, 0.933333337)),
        })
        gradient.Rotation = -90
        gradient.Parent = button
    end

    local function shimmer(button)
        local screen = button:FindFirstAncestorOfClass("ScreenGui")
        if not screen then return function() end end

        local frame = Instance.new("Frame")
        frame.Name = "Shimmer"
        frame.Active = false
        frame.AnchorPoint = Vector2.new(0.5, 1)
        frame.BackgroundColor3 = Color3.new(1, 1, 1)
        frame.BackgroundTransparency = 0.5
        frame.BorderSizePixel = 0
        frame.ClipsDescendants = true
        frame.Position = UDim2.new(0.5, 0, 0.99, 0)
        frame.Size = UDim2.new(0.96, 0, 0.93, 0)
        frame.ZIndex = 11
        frame.Parent = button

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0.18, 0)
        corner.Parent = frame

        local gradient = Instance.new("UIGradient")
        gradient.Color = ColorSequence.new(Color3.new(1, 1, 1))
        gradient.Offset = Vector2.new(-1, 0)
        gradient.Rotation = 25
        gradient.Transparency = NumberSequence.new({
            NumberSequenceKeypoint.new(0, 1),
            NumberSequenceKeypoint.new(0.375311732, 0.181249976),
            NumberSequenceKeypoint.new(0.5, 0),
            NumberSequenceKeypoint.new(0.639650881, 0.1875),
            NumberSequenceKeypoint.new(1, 1),
        })
        gradient.Parent = frame

        local stopped = false
        task.spawn(function()
            while not stopped and button.Parent do
                if screen.Enabled then
                    gradient.Offset = Vector2.new(-1, 0)
                    TweenService:Create(gradient, TweenInfo.new(0.45, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        Offset = Vector2.new(1, 0),
                    }):Play()
                end
                task.wait(0.55)
            end
        end)

        return function()
            stopped = true
            if frame.Parent then frame:Destroy() end
        end
    end

    local function buttonFX(button, connections)
        local scale = button:FindFirstChildOfClass("UIScale") or Instance.new("UIScale")
        scale.Scale = 1
        scale.Parent = button
        local pressed = false

        connections[#connections + 1] = button.MouseEnter:Connect(function()
            if not pressed then
                TweenService:Create(scale, TweenInfo.new(0.05, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {Scale = 1.05}):Play()
            end
        end)
        connections[#connections + 1] = button.MouseLeave:Connect(function()
            if not pressed then
                TweenService:Create(scale, TweenInfo.new(0.035, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Scale = 1}):Play()
            end
        end)
        connections[#connections + 1] = button.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1
                or inputObject.UserInputType == Enum.UserInputType.Touch
                or inputObject.KeyCode == Enum.KeyCode.ButtonA then
                pressed = true
                TweenService:Create(scale, TweenInfo.new(0.065, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Scale = 0.9}):Play()
            end
        end)
        connections[#connections + 1] = button.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1
                or inputObject.UserInputType == Enum.UserInputType.Touch
                or inputObject.KeyCode == Enum.KeyCode.ButtonA then
                pressed = false
                TweenService:Create(scale, TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out), {Scale = 1}):Play()
            end
        end)
    end

    function Library:AddKeybind(keybindSettings, legacyKey, legacyCallback)
        local settings = type(keybindSettings) == "table" and keybindSettings or {
            Name = tostring(keybindSettings),
            CurrentKey = legacyKey,
            Callback = legacyCallback,
        }
        settings.Name = tostring(settings.Name or "Keybind")
        settings.Callback = settings.Callback or function() end
        settings.HoldToInteract = settings.HoldToInteract == true
        settings.IgnoreProcessed = settings.IgnoreProcessed == true

        local row = self.Templates.Selector:Clone()
        row.SettingName.Text = settings.Name .. " ="
        row.SettingName.Size = UDim2.new(0.4, 0, 0.5, 0)
        row.SettingName.Position = UDim2.new(0.0625, 0, 0.5, 0)
        local holder = row.Toggle
        local button = holder.Button
        local label = button.TextLabel
        button.Parent = row
        holder:Destroy()
        local currentKeys = normalizeKeys(settings.CurrentKey or settings.Default)
        local owner = {}
        local registeredSignature = ""
        local listening = false
        local holding = false
        local holdToken = 0
        local editRender
        local shimmerCleanup
        local bindingStartValue
        local bindingStartKeys
        local skipActivated = false
        local connections = {}

        button.Active = true
        button.AnchorPoint = Vector2.new(0, 0.5)
        button.AutoButtonColor = true
        button.BackgroundColor3 = Color3.new(1, 1, 1)
        button.BackgroundTransparency = 1
        button.BorderSizePixel = 0
        button.Image = "rbxassetid://14423621163"
        button.PressedImage = "rbxassetid://14423621349"
        button.ImageColor3 = Color3.new(1, 1, 1)
        button.ImageTransparency = 0
        button.Position = UDim2.new(0.49010735, 0, 0.479999989, 0)
        button.Size = UDim2.new(0.449999988, 0, 1, 0)
        button.ScaleType = Enum.ScaleType.Slice
        button.SliceCenter = Rect.new(20, 20, 80, 80)
        button.SliceScale = 1
        button.ZIndex = 2
        label.AnchorPoint = Vector2.new(0.5, 0.5)
        label.Position = UDim2.fromScale(0.5, 0.5)
        label.BackgroundTransparency = 1
        label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        label.Size = UDim2.new(0.850000024, 0, 0.600000024, 0)
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextScaled = true
        label.TextSize = 18
        label.TextStrokeTransparency = 1
        label.TextWrapped = true
        label.TextXAlignment = Enum.TextXAlignment.Center
        label.TextYAlignment = Enum.TextYAlignment.Center
        label.ZIndex = 6
        local stroke = label:FindFirstChildOfClass("UIStroke") or Instance.new("UIStroke")
        stroke.Color = Color3.new(0, 0, 0)
        stroke.Thickness = 3
        stroke.Transparency = 0
        stroke.Parent = label
        setGradient(button, false)

        self:_mount(row, settings.Name, settings.Name .. " keybind")
        buttonFX(button, connections)

        local function render(keys)
            label.Text = makeName(keys or currentKeys)
        end

        local function setRegistered(keys)
            local signature = serializeKeys(keys)
            if signature ~= "" and AssignedKeys[signature] and AssignedKeys[signature] ~= owner then
                return false
            end
            if registeredSignature ~= "" and AssignedKeys[registeredSignature] == owner then
                AssignedKeys[registeredSignature] = nil
            end
            registeredSignature = signature
            if signature ~= "" then AssignedKeys[signature] = owner end
            return true
        end

        local function fireChanged(oldValue)
            if serializeKeys(currentKeys) ~= oldValue then
                safeCall(settings.ChangedCallback, #currentKeys == 1 and currentKeys[1] or table.clone(currentKeys))
            end
        end

        local function stopListening()
            if not listening then return end
            listening = false
            if editRender then editRender:Disconnect() editRender = nil end
            if shimmerCleanup then shimmerCleanup() shimmerCleanup = nil end
            if not setRegistered(currentKeys) then
                currentKeys = bindingStartKeys or {}
            end
            setGradient(button, false)
            render()
            fireChanged(bindingStartValue or "")
            bindingStartValue = nil
            bindingStartKeys = nil
        end

        local function startListening()
            if listening then return end
            bindingStartValue = serializeKeys(currentKeys)
            bindingStartKeys = table.clone(currentKeys)
            currentKeys = {}
            listening = true
            render()
            setGradient(button, true)
            shimmerCleanup = shimmer(button)

            local captured = {}
            local capturedTimes = {}
            local rendered = false
            editRender = RunService.RenderStepped:Connect(function()
                local now = tick()
                local newest
                local added = false
                for _, info in pairs(capturedTimes) do
                    if not newest or newest < info.t then newest = info.t end
                end
                for _, inputObject in ipairs(UserInputService:GetKeysPressed()) do
                    local key = inputObject.KeyCode
                    if key ~= Enum.KeyCode.Unknown then
                        if not newest or now - newest > 0.5 then
                            table.clear(capturedTimes)
                            newest = nil
                        end
                        if not capturedTimes[key] then
                            capturedTimes[key] = {t = now}
                            newest = now
                            added = true
                        end
                    end
                end

                local list = {}
                for key, info in pairs(capturedTimes) do
                    list[#list + 1] = {key = key, t = info.t}
                end
                table.sort(list, function(a, b) return a.t > b.t end)

                local controls, standard = 0, 0
                table.clear(captured)
                for _, info in ipairs(list) do
                    if ControlKeys[info.key] and controls < 2 then
                        controls += 1
                        captured[#captured + 1] = info.key
                    elseif not ControlKeys[info.key] and standard < 1 then
                        standard += 1
                        captured[#captured + 1] = info.key
                    end
                end
                if added or not rendered then render(captured) end
                currentKeys = table.clone(captured)
                rendered = true
            end)
        end

        connections[#connections + 1] = button.Activated:Connect(function()
            if skipActivated then
                skipActivated = false
                return
            end
            if listening then stopListening() else startListening() end
        end)

        connections[#connections + 1] = UserInputService.InputBegan:Connect(function(inputObject, processed)
            if listening then
                if inputObject.KeyCode == Enum.KeyCode.Return and not processed then
                    stopListening()
                elseif inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
                    skipActivated = true
                    stopListening()
                end
                return
            end
            if processed and not settings.IgnoreProcessed then return end
            if #currentKeys == 0 then return end

            local down = {}
            for _, inputObject2 in ipairs(UserInputService:GetKeysPressed()) do
                if inputObject2.KeyCode ~= Enum.KeyCode.Unknown then
                    down[inputObject2.KeyCode] = true
                end
            end
            local count = 0
            for _ in pairs(down) do count += 1 end
            if count ~= #currentKeys then return end
            for _, key in ipairs(currentKeys) do
                if not down[key] then return end
            end

            if settings.HoldToInteract then
                if holding then return end
                holding = true
                holdToken += 1
                local token = holdToken
                task.spawn(function()
                    while holding and token == holdToken do
                        safeCall(settings.Callback, true)
                        RunService.Heartbeat:Wait()
                    end
                end)
            else
                safeCall(settings.Callback, #currentKeys == 1 and currentKeys[1] or table.clone(currentKeys))
            end
        end)

        connections[#connections + 1] = UserInputService.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 and skipActivated then
                task.spawn(function()
                    RunService.RenderStepped:Wait()
                    skipActivated = false
                end)
            end
            if not settings.HoldToInteract or not holding then return end
            for _, key in ipairs(currentKeys) do
                if inputObject.KeyCode == key then
                    holding = false
                    holdToken += 1
                    safeCall(settings.Callback, false)
                    return
                end
            end
        end)

        local control = {
            Get = function()
                return makeName(currentKeys)
            end,
            Set = function(_, value, silent)
                if listening then stopListening() end
                local keys = normalizeKeys(value)
                if not setRegistered(keys) then return makeName(currentKeys) end
                currentKeys = keys
                render()
                if not silent then
                    safeCall(settings.ChangedCallback, #currentKeys == 1 and currentKeys[1] or table.clone(currentKeys))
                end
                return makeName(currentKeys)
            end,
            Destroy = function()
                if editRender then editRender:Disconnect() editRender = nil end
                if shimmerCleanup then shimmerCleanup() shimmerCleanup = nil end
                if registeredSignature ~= "" and AssignedKeys[registeredSignature] == owner then
                    AssignedKeys[registeredSignature] = nil
                end
                registeredSignature = ""
                holding = false
                holdToken += 1
                for _, connection in ipairs(connections) do connection:Disconnect() end
                row:Destroy()
            end,
        }

        if not setRegistered(currentKeys) then currentKeys = {} end
        render()
        return self:_decorateControl(control, row, settings, "Keybind")
    end
end

]================================================])()(Library)
loadstring([================================================[
return function(Library)
    if type(Library) ~= "table" then
        error("features.lua expected the necker Library table", 2)
    end
    if Library.__NeckerLinoriaFeaturePackInstalled then
        return Library
    end
    Library.__NeckerLinoriaFeaturePackInstalled = true

    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local GuiService = game:GetService("GuiService")

    local BUTTON_DOWN = TweenInfo.new(0.065, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
    local BUTTON_UP = TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
    local BUTTON_HOVER = TweenInfo.new(0.05, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
    local BUTTON_LEAVE = TweenInfo.new(0.035, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

    local function safeCall(callback, ...)
        if type(callback) ~= "function" then
            return true
        end
        local ok, result = pcall(callback, ...)
        if not ok then
            warn("Necker feature pack: " .. tostring(result))
        end
        return ok, result
    end

    local function cloneTable(source)
        local result = {}
        if type(source) == "table" then
            for key, value in pairs(source) do
                result[key] = value
            end
        end
        return result
    end

    local function copyColor(color)
        return Color3.new(color.R, color.G, color.B)
    end

    local function colorToHex(color)
        return string.format(
            "#%02X%02X%02X",
            math.clamp(math.floor(color.R * 255 + 0.5), 0, 255),
            math.clamp(math.floor(color.G * 255 + 0.5), 0, 255),
            math.clamp(math.floor(color.B * 255 + 0.5), 0, 255)
        )
    end

    local function colorToRGBText(color)
        return string.format(
            "%d, %d, %d",
            math.clamp(math.floor(color.R * 255 + 0.5), 0, 255),
            math.clamp(math.floor(color.G * 255 + 0.5), 0, 255),
            math.clamp(math.floor(color.B * 255 + 0.5), 0, 255)
        )
    end

    local function colorToTable(color)
        return {
            R = math.clamp(math.floor(color.R * 255 + 0.5), 0, 255),
            G = math.clamp(math.floor(color.G * 255 + 0.5), 0, 255),
            B = math.clamp(math.floor(color.B * 255 + 0.5), 0, 255),
        }
    end

    local function parseColor(value, fallback)
        if typeof(value) == "Color3" then
            return value
        end
        if type(value) == "table" then
            local r = tonumber(value.R or value.r or value[1])
            local g = tonumber(value.G or value.g or value[2])
            local b = tonumber(value.B or value.b or value[3])
            if r and g and b then
                if r > 1 or g > 1 or b > 1 then
                    return Color3.fromRGB(
                        math.clamp(math.floor(r + 0.5), 0, 255),
                        math.clamp(math.floor(g + 0.5), 0, 255),
                        math.clamp(math.floor(b + 0.5), 0, 255)
                    )
                end
                return Color3.new(math.clamp(r, 0, 1), math.clamp(g, 0, 1), math.clamp(b, 0, 1))
            end
        end
        if type(value) == "string" then
            local text = value:gsub("^%s+", ""):gsub("%s+$", "")
            local hex = text:gsub("#", "")
            if #hex == 6 and hex:match("^[%da-fA-F]+$") then
                local number = tonumber(hex, 16)
                if number then
                    return Color3.fromRGB(
                        math.floor(number / 65536) % 256,
                        math.floor(number / 256) % 256,
                        number % 256
                    )
                end
            end
            local r, g, b = text:match("^(%d+)%s*,%s*(%d+)%s*,%s*(%d+)$")
            if r and g and b then
                return Color3.fromRGB(
                    math.clamp(tonumber(r), 0, 255),
                    math.clamp(tonumber(g), 0, 255),
                    math.clamp(tonumber(b), 0, 255)
                )
            end
        end
        return fallback or Color3.new(1, 1, 1)
    end

    local function addFeatureConnection(window, connection)
        if not connection then
            return connection
        end
        window._FeatureConnections = window._FeatureConnections or {}
        table.insert(window._FeatureConnections, connection)
        return connection
    end

    -- Lightweight Lua-side change signal used by event-driven DependencyBox.
    -- No Heartbeat/RenderStepped polling is involved.
    local function emitControlChanged(control)
        local listeners = type(control) == "table" and control._FeatureChangeListeners or nil
        if type(listeners) ~= "table" or #listeners == 0 then
            return
        end
        local value
        if type(control.Get) == "function" then
            local ok, result = pcall(control.Get, control)
            if ok then
                value = result
            end
        end
        local snapshot = {}
        for index = 1, #listeners do
            snapshot[index] = listeners[index]
        end
        for _, callback in ipairs(snapshot) do
            safeCall(callback, value, control)
        end
    end

    local function makeControlObservable(control)
        if type(control) ~= "table" then
            return control
        end
        if control._FeatureObservable then
            return control
        end
        control._FeatureObservable = true
        control._FeatureChangeListeners = control._FeatureChangeListeners or {}

        function control:OnChanged(callback)
            assert(type(callback) == "function", "OnChanged callback must be a function")
            local listeners = self._FeatureChangeListeners
            table.insert(listeners, callback)
            local connected = true
            return {
                Disconnect = function()
                    if not connected then
                        return
                    end
                    connected = false
                    for index = #listeners, 1, -1 do
                        if listeners[index] == callback then
                            table.remove(listeners, index)
                            break
                        end
                    end
                end,
            }
        end

        local mutatorNames = {
            "Set", "Deserialize", "SetState", "SetMode", "SetTransparency", "SetAlpha",
        }
        for _, methodName in ipairs(mutatorNames) do
            local baseMethod = control[methodName]
            if type(baseMethod) == "function" then
                control[methodName] = function(selfControl, ...)
                    selfControl._FeatureSetDepth = (selfControl._FeatureSetDepth or 0) + 1
                    local results = table.pack(pcall(baseMethod, selfControl, ...))
                    selfControl._FeatureSetDepth = math.max(0, (selfControl._FeatureSetDepth or 1) - 1)
                    if not results[1] then
                        error(results[2], 0)
                    end
                    if selfControl._FeatureSetDepth == 0 then
                        emitControlChanged(selfControl)
                    end
                    return table.unpack(results, 2, results.n)
                end
            end
        end
        return control
    end

    local function makeObservedCallback(holder, callback)
        return function(...)
            local control = holder.Control
            if control and (control._FeatureSetDepth or 0) == 0 then
                emitControlChanged(control)
            end
            if type(callback) == "function" then
                return callback(...)
            end
        end
    end

    local function attachButtonFX(button, hoverScale)
        if not button or not button:IsA("GuiButton") then
            return
        end
        hoverScale = tonumber(hoverScale) or 1.05
        local scale = button:FindFirstChildOfClass("UIScale")
        if not scale then
            scale = Instance.new("UIScale")
            scale.Name = "FeatureButtonScale"
            scale.Scale = 1
            scale.Parent = button
        end
        local normalGoal = {Scale = 1}
        local downGoal = {Scale = 0.9}
        local hoverGoal = {Scale = hoverScale}
        local hovering = false
        local pressed = false

        button.MouseEnter:Connect(function()
            hovering = true
            if not pressed then
                TweenService:Create(scale, BUTTON_HOVER, hoverGoal):Play()
            end
        end)
        button.MouseLeave:Connect(function()
            hovering = false
            if not pressed then
                TweenService:Create(scale, BUTTON_LEAVE, normalGoal):Play()
            end
        end)
        button.MouseButton1Down:Connect(function()
            pressed = true
            TweenService:Create(scale, BUTTON_DOWN, downGoal):Play()
        end)
        button.MouseButton1Up:Connect(function()
            pressed = false
            TweenService:Create(scale, BUTTON_UP, hovering and hoverGoal or normalGoal):Play()
        end)
    end

    local function findButton(row)
        local toggle = row and row:FindFirstChild("Toggle")
        local button = toggle and toggle:FindFirstChild("Button")
        if button and button:IsA("GuiButton") then
            return button
        end
        if row then
            for _, descendant in ipairs(row:GetDescendants()) do
                if descendant:IsA("GuiButton") then
                    return descendant
                end
            end
        end
        return nil
    end

    local function findRowEntry(window, row)
        for _, entry in ipairs(window.Rows or {}) do
            if entry.Row == row then
                return entry
            end
        end
        return nil
    end

    local function normalizeMode(value)
        local text = string.lower(tostring(value or "Toggle"))
        if text == "always" then
            return "Always"
        elseif text == "hold" then
            return "Hold"
        end
        return "Toggle"
    end

    local function getMousePosition()
        local point = UserInputService:GetMouseLocation()
        local ok, inset = pcall(GuiService.GetGuiInset, GuiService)
        if ok and inset then
            point = point - inset
        end
        return point
    end

    ---------------------------------------------------------------------------
    -- Live theme registry. No UI colors are changed until SetTheme is called.
    ---------------------------------------------------------------------------
    local DEFAULT_THEME = {
        FontColor = Color3.new(1, 1, 1),
        MainColor = Color3.new(1, 1, 1),
        BackgroundColor = Color3.fromRGB(42, 43, 49),
        AccentColor = Color3.fromRGB(92, 239, 0),
        OutlineColor = Color3.fromRGB(42, 43, 49),
        RiskColor = Color3.fromRGB(255, 39, 125),
    }

    Library.DefaultTheme = cloneTable(DEFAULT_THEME)
    Library._FeatureWindows = Library._FeatureWindows or setmetatable({}, {__mode = "k"})
    Library._GlobalFeatureTheme = Library._GlobalFeatureTheme or {}

    local function colorBrightness(color)
        return color.R * 0.299 + color.G * 0.587 + color.B * 0.114
    end

    function Library:RegisterThemeObject(object, property, key)
        if not self.Screen then
            return nil
        end
        if typeof(object) ~= "Instance" or type(property) ~= "string" or type(key) ~= "string" then
            return nil
        end
        local ok, original = pcall(function()
            return object[property]
        end)
        if not ok or typeof(original) ~= "Color3" then
            return nil
        end
        self._FeatureThemeBindings = self._FeatureThemeBindings or {}
        self._FeatureThemeBindingIndex = self._FeatureThemeBindingIndex or setmetatable({}, {__mode = "k"})
        local objectIndex = self._FeatureThemeBindingIndex[object]
        if not objectIndex then
            objectIndex = {}
            self._FeatureThemeBindingIndex[object] = objectIndex
        end
        if objectIndex[property] then
            return objectIndex[property]
        end
        local binding = {
            Object = object,
            Property = property,
            Key = key,
            Original = original,
        }
        objectIndex[property] = binding
        table.insert(self._FeatureThemeBindings, binding)
        local override = self._FeatureThemeOverrides and self._FeatureThemeOverrides[key]
        if override then
            pcall(function()
                object[property] = override
            end)
        end
        return binding
    end

    function Library:_featureScanTheme(root)
        if not self.Screen then
            return
        end
        root = root or self.Screen
        local objects = {root}
        for _, descendant in ipairs(root:GetDescendants()) do
            table.insert(objects, descendant)
        end
        for _, object in ipairs(objects) do
            if object:IsA("TextLabel") or object:IsA("TextButton") or object:IsA("TextBox") then
                local brightness = colorBrightness(object.TextColor3)
                if brightness >= 0.72 then
                    self:RegisterThemeObject(object, "TextColor3", "FontColor")
                end
            end
            if object:IsA("UIStroke") then
                self:RegisterThemeObject(object, "Color", "OutlineColor")
            end
            if object:IsA("GuiObject") and object.BackgroundTransparency < 0.95 then
                local name = string.lower(object.Name)
                local brightness = colorBrightness(object.BackgroundColor3)
                if name:find("close", 1, true) or name:find("danger", 1, true) or name:find("delete", 1, true) then
                    self:RegisterThemeObject(object, "BackgroundColor3", "RiskColor")
                elseif name:find("progress", 1, true) or name:find("statuson", 1, true) or name:find("accent", 1, true) then
                    self:RegisterThemeObject(object, "BackgroundColor3", "AccentColor")
                elseif brightness <= 0.45 then
                    self:RegisterThemeObject(object, "BackgroundColor3", "BackgroundColor")
                elseif brightness >= 0.82 then
                    self:RegisterThemeObject(object, "BackgroundColor3", "MainColor")
                end
            end
        end
    end

    function Library:ApplyTheme()
        if not self.Screen then
            return self
        end
        self:_featureScanTheme(self.Screen)
        for _, binding in ipairs(self._FeatureThemeBindings or {}) do
            local object = binding.Object
            if object and object.Parent then
                local color = self._FeatureThemeOverrides and self._FeatureThemeOverrides[binding.Key]
                if color then
                    pcall(function()
                        object[binding.Property] = color
                    end)
                end
            end
        end
        return self
    end

    function Library:SetTheme(theme)
        if not self.Screen then
            return self:SetGlobalTheme(theme)
        end
        if type(theme) ~= "table" then
            return self
        end
        self._FeatureThemeOverrides = self._FeatureThemeOverrides or {}
        self.Theme = self.Theme or cloneTable(DEFAULT_THEME)
        for key, value in pairs(theme) do
            if DEFAULT_THEME[key] and typeof(value) == "Color3" then
                self._FeatureThemeOverrides[key] = value
                self.Theme[key] = value
            end
        end
        self:ApplyTheme()
        for _, callback in ipairs(self._FeatureThemeCallbacks or {}) do
            safeCall(callback, self:GetTheme())
        end
        return self
    end

    function Library:SetThemeColor(key, color)
        if typeof(color) ~= "Color3" then
            return self
        end
        return self:SetTheme({[tostring(key)] = color})
    end

    function Library:ResetThemeColor(key)
        if not self.Screen then
            return self
        end
        key = tostring(key)
        if self._FeatureThemeOverrides then
            self._FeatureThemeOverrides[key] = nil
        end
        if self.Theme and DEFAULT_THEME[key] then
            self.Theme[key] = DEFAULT_THEME[key]
        end
        for _, binding in ipairs(self._FeatureThemeBindings or {}) do
            if binding.Key == key and binding.Object and binding.Object.Parent then
                pcall(function()
                    binding.Object[binding.Property] = binding.Original
                end)
            end
        end
        return self
    end

    function Library:ResetTheme()
        if not self.Screen then
            Library._GlobalFeatureTheme = {}
            return self
        end
        self._FeatureThemeOverrides = {}
        self.Theme = cloneTable(DEFAULT_THEME)
        for _, binding in ipairs(self._FeatureThemeBindings or {}) do
            if binding.Object and binding.Object.Parent then
                pcall(function()
                    binding.Object[binding.Property] = binding.Original
                end)
            end
        end
        return self
    end

    function Library:GetTheme()
        local result = cloneTable(DEFAULT_THEME)
        local source = self.Screen and self.Theme or Library._GlobalFeatureTheme
        if type(source) == "table" then
            for key, value in pairs(source) do
                if DEFAULT_THEME[key] and typeof(value) == "Color3" then
                    result[key] = copyColor(value)
                end
            end
        end
        return result
    end

    function Library:OnThemeChanged(callback)
        if not self.Screen or type(callback) ~= "function" then
            return function() end
        end
        self._FeatureThemeCallbacks = self._FeatureThemeCallbacks or {}
        table.insert(self._FeatureThemeCallbacks, callback)
        local alive = true
        return function()
            if not alive then
                return
            end
            alive = false
            for index = #self._FeatureThemeCallbacks, 1, -1 do
                if self._FeatureThemeCallbacks[index] == callback then
                    table.remove(self._FeatureThemeCallbacks, index)
                    break
                end
            end
        end
    end

    function Library:SetGlobalTheme(theme)
        if self.Screen then
            return self:SetTheme(theme)
        end
        if type(theme) ~= "table" then
            return self
        end
        for key, value in pairs(theme) do
            if DEFAULT_THEME[key] and typeof(value) == "Color3" then
                Library._GlobalFeatureTheme[key] = value
            end
        end
        for window in pairs(Library._FeatureWindows) do
            if window and window.Screen and window.Screen.Parent then
                window:SetTheme(Library._GlobalFeatureTheme)
            end
        end
        return self
    end

    local BaseDecorateControlFeature = Library._decorateControl
    if type(BaseDecorateControlFeature) == "function" then
        function Library:_decorateControl(control, row, settings, controlType)
            local result = BaseDecorateControlFeature(self, control, row, settings, controlType)
            if self._FeatureThemeOverrides and next(self._FeatureThemeOverrides) ~= nil and row then
                self:_featureScanTheme(row)
            end
            return result
        end
    end

    ---------------------------------------------------------------------------
    -- AddInput / TextBox control.
    ---------------------------------------------------------------------------
    local function normalizeNumericText(text)
        text = tostring(text or "")
        local negative = text:sub(1, 1) == "-"
        local body = text:gsub("[^%d%.]", "")
        local firstDot = body:find("%.")
        if firstDot then
            body = body:sub(1, firstDot) .. body:sub(firstDot + 1):gsub("%.", "")
        end
        if negative then
            body = "-" .. body
        end
        return body
    end

    function Library:AddInput(inputSettings, legacyDefault, legacyCallback)
        local settings = type(inputSettings) == "table" and cloneTable(inputSettings) or {
            Name = tostring(inputSettings),
            Default = legacyDefault,
            Callback = legacyCallback,
        }
        settings.Name = tostring(settings.Name or "Input")
        settings.Default = settings.Default ~= nil and settings.Default or settings.CurrentValue
        if settings.Default == nil then
            settings.Default = ""
        end
        settings.Callback = settings.Callback or function() end
        settings.ChangedCallback = settings.ChangedCallback or settings.OnChanged
        settings.Numeric = settings.Numeric == true
        settings.Finished = settings.Finished == true

        local template = self.Templates and self.Templates.Selector
        assert(template, "AddInput requires the Selector template")
        local row = template:Clone()
        row.SettingName.Text = settings.Name
        local button = findButton(row)
        assert(button, "AddInput could not find the Selector button")
        local oldLabel = button:FindFirstChild("TextLabel")
        local input = Instance.new("TextBox")
        input.Name = "Input"
        input.Active = true
        input.BackgroundTransparency = 1
        input.BorderSizePixel = 0
        input.ClearTextOnFocus = settings.ClearTextOnFocus == true
        input.MultiLine = settings.MultiLine == true
        input.PlaceholderText = tostring(settings.Placeholder or settings.PlaceholderText or "")
        input.Size = UDim2.new(1, -10, 1, -6)
        input.Position = UDim2.fromOffset(5, 3)
        input.Text = tostring(settings.Default)
        input.TextEditable = settings.ReadOnly ~= true
        input.TextWrapped = false
        input.ZIndex = button.ZIndex + 3
        if oldLabel and oldLabel:IsA("TextLabel") then
            input.FontFace = oldLabel.FontFace
            input.TextColor3 = oldLabel.TextColor3
            input.TextScaled = oldLabel.TextScaled
            input.TextSize = oldLabel.TextSize
            input.TextStrokeColor3 = oldLabel.TextStrokeColor3
            input.TextStrokeTransparency = oldLabel.TextStrokeTransparency
            input.TextTransparency = oldLabel.TextTransparency
            input.TextXAlignment = oldLabel.TextXAlignment
            input.TextYAlignment = oldLabel.TextYAlignment
            oldLabel.Visible = false
        else
            input.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            input.TextColor3 = Color3.new(1, 1, 1)
            input.TextScaled = true
            input.TextStrokeColor3 = Color3.new(0, 0, 0)
            input.TextStrokeTransparency = 0
        end
        input.Parent = button
        attachButtonFX(button)

        self:_mount(row, settings.Name, settings.Name .. " " .. tostring(settings.Placeholder or settings.PlaceholderText or ""))

        local changing = false
        local lastText = input.Text
        local function currentValue()
            if settings.Numeric then
                return tonumber(input.Text) or 0
            end
            return input.Text
        end
        local function emitChanged()
            safeCall(settings.ChangedCallback, currentValue())
            if not settings.Finished then
                safeCall(settings.Callback, currentValue())
            end
        end

        local textConnection = input:GetPropertyChangedSignal("Text"):Connect(function()
            if changing then
                return
            end
            if settings.Numeric then
                local normalized = normalizeNumericText(input.Text)
                if normalized ~= input.Text then
                    changing = true
                    input.Text = normalized
                    changing = false
                end
            end
            if input.Text ~= lastText then
                lastText = input.Text
                emitChanged()
            end
        end)
        local focusConnection = input.FocusLost:Connect(function(enterPressed)
            if settings.Finished then
                safeCall(settings.Callback, currentValue(), enterPressed)
            end
        end)

        local rawControl = {}
        function rawControl:Get()
            return currentValue()
        end
        function rawControl:Set(value, silent)
            local text = tostring(value == nil and "" or value)
            if settings.Numeric then
                text = normalizeNumericText(text)
            end
            changing = true
            input.Text = text
            lastText = text
            changing = false
            if not silent then
                emitChanged()
                if settings.Finished then
                    safeCall(settings.Callback, currentValue(), false)
                end
            end
            return currentValue()
        end
        function rawControl:Focus()
            input:CaptureFocus()
            return self
        end
        function rawControl:IsFocused()
            return input:IsFocused()
        end
        function rawControl:Destroy()
            textConnection:Disconnect()
            focusConnection:Disconnect()
            if row and row.Parent then
                row:Destroy()
            end
        end

        local control = self:_decorateControl(rawControl, row, settings, "Input")
        control.Input = input
        self:_featureScanTheme(row)
        return control
    end

    ---------------------------------------------------------------------------
    -- DependencyBox: logical group with Linoria-like SetupDependencies().
    ---------------------------------------------------------------------------
    local DEPENDENCY_METHODS = {
        "AddButton", "AddToggle", "AddSelector", "AddDropdown", "AddSlider",
        "AddKeybind", "AddProgress", "AddColorPicker", "AddInput", "AddCircularSelection",
    }

    local function dependencyMatches(control, expected)
        if type(control) ~= "table" or type(control.Get) ~= "function" then
            return false
        end
        local ok, value = pcall(control.Get, control)
        if not ok then
            return false
        end
        if type(expected) == "function" then
            local predicateOK, predicateResult = pcall(expected, value, control)
            return predicateOK and predicateResult == true
        end
        if type(expected) == "table" then
            for _, candidate in ipairs(expected) do
                if value == candidate then
                    return true
                end
            end
            return false
        end
        return value == expected
    end

    local function createDependencyBox(parent, window, settings)
        settings = type(settings) == "table" and cloneTable(settings) or {}
        local box = {
            Parent = parent,
            Window = window,
            Controls = {},
            Rows = {},
            Dependencies = {},
            Visible = true,
            _DependencyConnections = {},
            _PreviousManualVisible = setmetatable({}, {__mode = "k"}),
            _Destroyed = false,
        }
        if window then
            window._FeatureDependencyBoxes = window._FeatureDependencyBoxes or setmetatable({}, {__mode = "k"})
            window._FeatureDependencyBoxes[box] = true
        end

        function box:_call(methodName, ...)
            local method = self.Parent and self.Parent[methodName]
            assert(type(method) == "function", "DependencyBox parent does not support " .. tostring(methodName))
            local control = method(self.Parent, ...)
            if type(control) == "table" then
                table.insert(self.Controls, control)
                local row = control.Row
                if row then
                    table.insert(self.Rows, row)
                end
            end
            local dependencyVisible = self:_dependencyState()
            self:_setRowsVisible(dependencyVisible, true)
            return control
        end

        for _, methodName in ipairs(DEPENDENCY_METHODS) do
            box[methodName] = function(selfBox, ...)
                return selfBox:_call(methodName, ...)
            end
        end

        function box:AddDependencyBox(childSettings)
            return createDependencyBox(self, self.Window, childSettings)
        end

        function box:_dependencyState()
            if #self.Dependencies == 0 then
                return true
            end
            for _, dependency in ipairs(self.Dependencies) do
                local control = dependency[1] or dependency.Control
                local expected = dependency[2]
                if expected == nil then
                    expected = dependency.Value
                end
                if not dependencyMatches(control, expected) then
                    return false
                end
            end
            return true
        end

        function box:_setRowsVisible(visible, force)
            if self._Destroyed and not force then
                return
            end
            self.Visible = visible == true
            for _, row in ipairs(self.Rows) do
                if row and row.Parent then
                    local entry = findRowEntry(self.Window, row)
                    if entry then
                        if not self.Visible then
                            if self._PreviousManualVisible[row] == nil then
                                self._PreviousManualVisible[row] = entry.ManualVisible ~= false
                            end
                            entry.ManualVisible = false
                        else
                            local previous = self._PreviousManualVisible[row]
                            if previous ~= nil then
                                entry.ManualVisible = previous
                                self._PreviousManualVisible[row] = nil
                            else
                                entry.ManualVisible = true
                            end
                        end
                    else
                        row.Visible = self.Visible
                    end
                end
            end
            if self.Window and self.Window._refreshPagination then
                self.Window:_refreshPagination()
            end
        end

        function box:Refresh()
            local visible = self:_dependencyState()
            if visible ~= self.Visible then
                self:_setRowsVisible(visible)
            end
            return visible
        end

        function box:_disconnectDependencies()
            for _, connection in ipairs(self._DependencyConnections or {}) do
                pcall(function()
                    connection:Disconnect()
                end)
            end
            self._DependencyConnections = {}
        end

        function box:SetupDependencies(dependencies)
            self:_disconnectDependencies()
            self.Dependencies = type(dependencies) == "table" and dependencies or {}
            for _, dependency in ipairs(self.Dependencies) do
                local control = dependency[1] or dependency.Control
                if type(control) == "table" then
                    makeControlObservable(control)
                    if type(control.OnChanged) == "function" then
                        local connection = control:OnChanged(function()
                            if not self._Destroyed then
                                self:Refresh()
                            end
                        end)
                        table.insert(self._DependencyConnections, connection)
                    end
                end
            end
            self:Refresh()
            return self
        end

        function box:SetVisible(visible)
            self:_disconnectDependencies()
            self.Dependencies = {}
            self:_setRowsVisible(visible == true)
            return self
        end

        function box:Destroy(destroyControls)
            if self._Destroyed then
                return
            end
            if destroyControls ~= true then
                self:_setRowsVisible(true, true)
            end
            self._Destroyed = true
            self:_disconnectDependencies()
            if self.Window and self.Window._FeatureDependencyBoxes then
                self.Window._FeatureDependencyBoxes[self] = nil
            end
            if destroyControls == true then
                for _, control in ipairs(self.Controls) do
                    if type(control.Destroy) == "function" then
                        pcall(control.Destroy, control)
                    end
                end
            end
        end

        return box
    end

    function Library:AddDependencyBox(settings)
        return createDependencyBox(self, self, settings)
    end

    ---------------------------------------------------------------------------
    -- Active keybind HUD and Always / Toggle / Hold keybind modes.
    ---------------------------------------------------------------------------
    function Library:_ensureFeatureKeybindHUD()
        if self._FeatureKeybindHUD and self._FeatureKeybindHUD.Parent then
            return self._FeatureKeybindHUD
        end
        local panel = Instance.new("Frame")
        panel.Name = "KeybindHUD"
        panel.Active = true
        panel.AnchorPoint = Vector2.new(1, 0)
        panel.AutomaticSize = Enum.AutomaticSize.Y
        panel.BackgroundColor3 = Color3.fromRGB(42, 43, 49)
        panel.BackgroundTransparency = 0.08
        panel.BorderSizePixel = 0
        panel.Position = UDim2.new(1, -18, 0, 18)
        panel.Size = UDim2.fromOffset(220, 0)
        panel.Visible = false
        panel.ZIndex = 160
        panel.Parent = self.Screen

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 12)
        corner.Parent = panel
        local stroke = Instance.new("UIStroke")
        stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        stroke.Color = Color3.fromRGB(42, 43, 49)
        stroke.Thickness = 2
        stroke.Parent = panel
        local padding = Instance.new("UIPadding")
        padding.PaddingTop = UDim.new(0, 8)
        padding.PaddingBottom = UDim.new(0, 8)
        padding.PaddingLeft = UDim.new(0, 10)
        padding.PaddingRight = UDim.new(0, 10)
        padding.Parent = panel
        local layout = Instance.new("UIListLayout")
        layout.FillDirection = Enum.FillDirection.Vertical
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Left
        layout.Padding = UDim.new(0, 4)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = panel

        local title = Instance.new("TextLabel")
        title.Name = "Title"
        title.BackgroundTransparency = 1
        title.LayoutOrder = 0
        title.Size = UDim2.new(1, 0, 0, 24)
        title.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        title.Text = "Keybinds"
        title.TextColor3 = Color3.new(1, 1, 1)
        title.TextScaled = true
        title.TextStrokeColor3 = Color3.new(0, 0, 0)
        title.TextStrokeTransparency = 0.35
        title.TextXAlignment = Enum.TextXAlignment.Left
        title.ZIndex = 161
        title.Parent = panel
        local titleConstraint = Instance.new("UITextSizeConstraint")
        titleConstraint.MinTextSize = 12
        titleConstraint.MaxTextSize = 18
        titleConstraint.Parent = title

        self._FeatureKeybindHUD = panel
        self._FeatureKeybindEntries = self._FeatureKeybindEntries or setmetatable({}, {__mode = "k"})
        if self._FeatureKeybindHUDVisible == nil then
            self._FeatureKeybindHUDVisible = true
        end

        local dragging = false
        local dragInput
        local startPointer
        local startPosition
        addFeatureConnection(self, panel.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragInput = inputObject
                startPointer = inputObject.Position
                startPosition = panel.Position
            end
        end))
        addFeatureConnection(self, UserInputService.InputChanged:Connect(function(inputObject)
            if not dragging then
                return
            end
            if inputObject.UserInputType == Enum.UserInputType.MouseMovement or inputObject == dragInput then
                local delta = inputObject.Position - startPointer
                panel.Position = UDim2.new(
                    startPosition.X.Scale,
                    startPosition.X.Offset + delta.X,
                    startPosition.Y.Scale,
                    startPosition.Y.Offset + delta.Y
                )
            end
        end))
        addFeatureConnection(self, UserInputService.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject == dragInput then
                dragging = false
                dragInput = nil
            end
        end))

        self:_featureScanTheme(panel)
        return panel
    end

    function Library:_refreshFeatureKeybindHUD()
        local panel = self._FeatureKeybindHUD
        if not panel then
            return
        end
        local visibleCount = 0
        for control, data in pairs(self._FeatureKeybindEntries or {}) do
            local label = data.Label
            local active = data.Active == true
            if label and label.Parent then
                label.Visible = active and not data.NoUI
                if label.Visible then
                    visibleCount = visibleCount + 1
                    local key = type(control.Get) == "function" and tostring(control:Get()) or "Unknown"
                    label.Text = string.format("[%s] %s (%s)", key, data.Name, data.Mode)
                end
            end
        end
        panel.Visible = self._FeatureKeybindHUDVisible == true and visibleCount > 0
    end

    function Library:SetKeybindHUDVisible(visible)
        self._FeatureKeybindHUDVisible = visible == true
        self:_refreshFeatureKeybindHUD()
        return self
    end

    function Library:GetKeybindHUDVisible()
        return self._FeatureKeybindHUDVisible == true
    end

    local function registerKeybindHUD(window, control, settings, stateData)
        local panel = window:_ensureFeatureKeybindHUD()
        local label = Instance.new("TextLabel")
        label.Name = tostring(settings.Name or "Keybind")
        label.BackgroundTransparency = 1
        label.LayoutOrder = 10 + #(panel:GetChildren())
        label.Size = UDim2.new(1, 0, 0, 21)
        label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextScaled = true
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.TextStrokeTransparency = 0.4
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.ZIndex = 161
        label.Parent = panel
        local constraint = Instance.new("UITextSizeConstraint")
        constraint.MinTextSize = 10
        constraint.MaxTextSize = 15
        constraint.Parent = label
        window._FeatureKeybindEntries[control] = {
            Label = label,
            Name = tostring(settings.Name or "Keybind"),
            Mode = stateData.Mode,
            Active = stateData.Active,
            NoUI = settings.NoUI == true,
        }
        window:_featureScanTheme(label)
        window:_refreshFeatureKeybindHUD()
        return label
    end

    local function buildKeybindModeMenu(window, control, button, stateData)
        local menu = Instance.new("Frame")
        menu.Name = "KeybindModeMenu"
        menu.BackgroundColor3 = Color3.fromRGB(42, 43, 49)
        menu.BackgroundTransparency = 0.04
        menu.BorderSizePixel = 0
        menu.Size = UDim2.fromOffset(120, 105)
        menu.Visible = false
        menu.ZIndex = 180
        menu.Parent = window.Screen
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 10)
        corner.Parent = menu
        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(42, 43, 49)
        stroke.Thickness = 2
        stroke.Parent = menu
        local padding = Instance.new("UIPadding")
        padding.PaddingTop = UDim.new(0, 6)
        padding.PaddingBottom = UDim.new(0, 6)
        padding.PaddingLeft = UDim.new(0, 6)
        padding.PaddingRight = UDim.new(0, 6)
        padding.Parent = menu
        local layout = Instance.new("UIListLayout")
        layout.Padding = UDim.new(0, 4)
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = menu

        for index, mode in ipairs({"Always", "Toggle", "Hold"}) do
            local option = Instance.new("TextButton")
            option.Name = mode
            option.AutoButtonColor = false
            option.BackgroundColor3 = Color3.new(1, 1, 1)
            option.BackgroundTransparency = 0.08
            option.BorderSizePixel = 0
            option.LayoutOrder = index
            option.Size = UDim2.new(1, 0, 0, 27)
            option.Text = mode
            option.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            option.TextColor3 = Color3.new(1, 1, 1)
            option.TextScaled = true
            option.TextStrokeColor3 = Color3.new(0, 0, 0)
            option.TextStrokeTransparency = 0.35
            option.ZIndex = 181
            option.Parent = menu
            local optionCorner = Instance.new("UICorner")
            optionCorner.CornerRadius = UDim.new(0, 7)
            optionCorner.Parent = option
            attachButtonFX(option, 1.03)
            option.Activated:Connect(function()
                control:SetMode(mode, false)
                menu.Visible = false
            end)
        end

        button.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType ~= Enum.UserInputType.MouseButton2 then
                return
            end
            local point = getMousePosition()
            local viewport = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
            local x = math.clamp(point.X + 6, 8, math.max(8, viewport.X - menu.Size.X.Offset - 8))
            local y = math.clamp(point.Y + 6, 8, math.max(8, viewport.Y - menu.Size.Y.Offset - 8))
            menu.Position = UDim2.fromOffset(x, y)
            menu.Visible = not menu.Visible
        end)
        window:_featureScanTheme(menu)
        return menu
    end

    local BaseAddKeybind = Library.AddKeybind
    function Library:AddKeybind(keybindSettings, legacyKey, legacyCallback)
        if type(keybindSettings) ~= "table" then
            return BaseAddKeybind(self, keybindSettings, legacyKey, legacyCallback)
        end

        local advanced = keybindSettings.Mode ~= nil
            or keybindSettings.KeybindMode ~= nil
            or keybindSettings.ShowInKeybindHUD == true
            or keybindSettings.NoUI ~= nil
        if not advanced then
            return BaseAddKeybind(self, keybindSettings, legacyKey, legacyCallback)
        end

        local settings = cloneTable(keybindSettings)
        local userCallback = settings.Callback or function() end
        local userChangedCallback = settings.ChangedCallback
        local syncHUD = function() end
        local stateData = {
            Mode = normalizeMode(settings.Mode or settings.KeybindMode or (settings.HoldToInteract and "Hold" or "Toggle")),
            Active = false,
        }
        stateData.Active = stateData.Mode == "Always" or (stateData.Mode == "Toggle" and settings.DefaultState == true)
        settings.HoldToInteract = stateData.Mode == "Hold"

        settings.Callback = function(payload)
            local previous = stateData.Active
            if stateData.Mode == "Hold" then
                stateData.Active = payload == true
            elseif stateData.Mode == "Toggle" then
                stateData.Active = not stateData.Active
            else
                stateData.Active = true
            end
            if stateData.Active ~= previous then
                safeCall(userCallback, stateData.Active)
            end
            syncHUD()
        end
        settings.ChangedCallback = function(key)
            safeCall(userChangedCallback, key)
            syncHUD()
        end

        local control = BaseAddKeybind(self, settings)
        self._FeatureAdvancedKeybindControls = self._FeatureAdvancedKeybindControls or {}
        table.insert(self._FeatureAdvancedKeybindControls, control)
        local baseSet = control.Set
        local baseDestroy = control.Destroy
        local baseGet = control.Get
        local window = self

        registerKeybindHUD(window, control, keybindSettings, stateData)

        syncHUD = function()
            local data = window._FeatureKeybindEntries and window._FeatureKeybindEntries[control]
            if data then
                data.Mode = stateData.Mode
                data.Active = stateData.Active
                window:_refreshFeatureKeybindHUD()
            end
        end

        local baseSettings = control._Settings or settings
        function control:SetMode(mode, silent)
            mode = normalizeMode(mode)
            local oldState = stateData.Active
            stateData.Mode = mode
            baseSettings.HoldToInteract = mode == "Hold"
            if mode == "Always" then
                stateData.Active = true
            elseif mode == "Hold" then
                stateData.Active = false
            else
                stateData.Active = false
            end
            syncHUD()
            if not silent and oldState ~= stateData.Active then
                safeCall(userCallback, stateData.Active)
            end
            return stateData.Mode
        end
        function control:GetMode()
            return stateData.Mode
        end
        function control:SetState(value, silent)
            if stateData.Mode == "Always" then
                stateData.Active = true
            else
                stateData.Active = value == true
            end
            syncHUD()
            if not silent then
                safeCall(userCallback, stateData.Active)
            end
            return stateData.Active
        end
        function control:GetState()
            return stateData.Active
        end
        function control:IsActive()
            return stateData.Active
        end
        function control:Set(value, silent)
            local result = baseSet(control, value, silent)
            syncHUD()
            return result
        end
        function control:Serialize()
            return {
                Key = baseGet(control),
                Mode = stateData.Mode,
                State = stateData.Mode == "Toggle" and stateData.Active or nil,
            }
        end
        function control:Deserialize(value, silent)
            if type(value) == "table" then
                if value.Key ~= nil then
                    baseSet(control, value.Key, true)
                end
                if value.Mode ~= nil then
                    control:SetMode(value.Mode, true)
                end
                if stateData.Mode == "Toggle" and value.State ~= nil then
                    stateData.Active = value.State == true
                end
                syncHUD()
                if not silent then
                    safeCall(userChangedCallback, baseGet(control))
                end
                return baseGet(control)
            end
            return control:Set(value, silent)
        end

        local button = findButton(control.Row)
        local modeMenu = button and buildKeybindModeMenu(window, control, button, stateData) or nil
        function control:Destroy()
            for index = #(window._FeatureAdvancedKeybindControls or {}), 1, -1 do
                if window._FeatureAdvancedKeybindControls[index] == control then
                    table.remove(window._FeatureAdvancedKeybindControls, index)
                    break
                end
            end
            local entry = window._FeatureKeybindEntries and window._FeatureKeybindEntries[control]
            if entry and entry.Label then
                entry.Label:Destroy()
            end
            if window._FeatureKeybindEntries then
                window._FeatureKeybindEntries[control] = nil
            end
            if modeMenu and modeMenu.Parent then
                modeMenu:Destroy()
            end
            window:_refreshFeatureKeybindHUD()
            return baseDestroy(control)
        end
        syncHUD()
        return control
    end

    ---------------------------------------------------------------------------
    -- ColorPicker transparency/alpha and right-click copy/paste context menu.
    ---------------------------------------------------------------------------
    local function writeClipboard(text)
        local writer = setclipboard or toclipboard
        if type(writer) == "function" then
            pcall(writer, tostring(text))
            return true
        end
        return false
    end

    local function readClipboard()
        local reader = getclipboard
        if type(reader) == "function" then
            local ok, value = pcall(reader)
            if ok and type(value) == "string" then
                return value
            end
        end
        return nil
    end

    local function buildColorContextMenu(window, control, getTransparency, setTransparency)
        local button = findButton(control.Row)
        if not button then
            return nil
        end
        local menu = Instance.new("Frame")
        menu.Name = "ColorContextMenu"
        menu.BackgroundColor3 = Color3.fromRGB(42, 43, 49)
        menu.BackgroundTransparency = 0.04
        menu.BorderSizePixel = 0
        menu.Size = UDim2.fromOffset(142, 142)
        menu.Visible = false
        menu.ZIndex = 190
        menu.Parent = window.Screen
        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(0, 10)
        corner.Parent = menu
        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.fromRGB(42, 43, 49)
        stroke.Thickness = 2
        stroke.Parent = menu
        local padding = Instance.new("UIPadding")
        padding.PaddingTop = UDim.new(0, 6)
        padding.PaddingBottom = UDim.new(0, 6)
        padding.PaddingLeft = UDim.new(0, 6)
        padding.PaddingRight = UDim.new(0, 6)
        padding.Parent = menu
        local layout = Instance.new("UIListLayout")
        layout.Padding = UDim.new(0, 4)
        layout.Parent = menu

        local actions = {
            {"Copy Color", function()
                local color = control:Get()
                Library._FeatureColorClipboard = {
                    Color = colorToTable(color),
                    Transparency = getTransparency(),
                }
                writeClipboard(colorToHex(color))
            end},
            {"Paste Color", function()
                local clipboardText = readClipboard()
                local stored = Library._FeatureColorClipboard
                local fallbackColor = stored and parseColor(stored.Color, control:Get()) or control:Get()
                local color = clipboardText and parseColor(clipboardText, fallbackColor) or fallbackColor
                control:Set(color, false)
                if stored and stored.Transparency ~= nil then
                    setTransparency(stored.Transparency, false)
                end
            end},
            {"Copy HEX", function()
                local color = control:Get()
                Library._FeatureColorClipboard = {
                    Color = colorToTable(color),
                    Transparency = getTransparency(),
                }
                writeClipboard(colorToHex(color))
            end},
            {"Copy RGB", function()
                local color = control:Get()
                Library._FeatureColorClipboard = {
                    Color = colorToTable(color),
                    Transparency = getTransparency(),
                }
                writeClipboard(colorToRGBText(color))
            end},
        }

        for index, action in ipairs(actions) do
            local option = Instance.new("TextButton")
            option.Name = action[1]:gsub("%s+", "")
            option.AutoButtonColor = false
            option.BackgroundColor3 = Color3.new(1, 1, 1)
            option.BackgroundTransparency = 0.08
            option.BorderSizePixel = 0
            option.LayoutOrder = index
            option.Size = UDim2.new(1, 0, 0, 27)
            option.Text = action[1]
            option.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
            option.TextColor3 = Color3.new(1, 1, 1)
            option.TextScaled = true
            option.TextStrokeColor3 = Color3.new(0, 0, 0)
            option.TextStrokeTransparency = 0.35
            option.ZIndex = 191
            option.Parent = menu
            local optionCorner = Instance.new("UICorner")
            optionCorner.CornerRadius = UDim.new(0, 7)
            optionCorner.Parent = option
            attachButtonFX(option, 1.03)
            option.Activated:Connect(function()
                safeCall(action[2])
                menu.Visible = false
            end)
        end

        button.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType ~= Enum.UserInputType.MouseButton2 then
                return
            end
            local point = getMousePosition()
            local viewport = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920, 1080)
            local x = math.clamp(point.X + 6, 8, math.max(8, viewport.X - menu.Size.X.Offset - 8))
            local y = math.clamp(point.Y + 6, 8, math.max(8, viewport.Y - menu.Size.Y.Offset - 8))
            menu.Position = UDim2.fromOffset(x, y)
            menu.Visible = not menu.Visible
        end)
        window:_featureScanTheme(menu)
        return menu
    end

    local function addAlphaSlider(window, control, popup, transparency, callback)
        local connections = {}
        local alpha = 1 - transparency
        popup.Size = UDim2.fromOffset(math.max(148, popup.Size.X.Offset), math.max(354, popup.Size.Y.Offset + 44))
        local confirm = popup:FindFirstChild("Confirm")
        if confirm and confirm:IsA("GuiObject") then
            confirm.Position = UDim2.fromOffset(confirm.Position.X.Offset, confirm.Position.Y.Offset + 44)
        end

        local label = Instance.new("TextLabel")
        label.Name = "AlphaLabel"
        label.BackgroundTransparency = 1
        label.Position = UDim2.fromOffset(10, 256)
        label.Size = UDim2.fromOffset(128, 18)
        label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
        label.TextColor3 = Color3.new(1, 1, 1)
        label.TextScaled = true
        label.TextStrokeColor3 = Color3.new(0, 0, 0)
        label.TextStrokeTransparency = 0.25
        label.TextXAlignment = Enum.TextXAlignment.Left
        label.ZIndex = 84
        label.Parent = popup
        local labelConstraint = Instance.new("UITextSizeConstraint")
        labelConstraint.MinTextSize = 10
        labelConstraint.MaxTextSize = 14
        labelConstraint.Parent = label

        local bar = Instance.new("Frame")
        bar.Name = "AlphaBar"
        bar.Active = true
        bar.BackgroundColor3 = Color3.fromRGB(76, 76, 84)
        bar.BorderSizePixel = 0
        bar.Position = UDim2.fromOffset(10, 279)
        bar.Size = UDim2.fromOffset(128, 12)
        bar.ZIndex = 84
        bar.Parent = popup
        local barCorner = Instance.new("UICorner")
        barCorner.CornerRadius = UDim.new(1, 0)
        barCorner.Parent = bar
        local fill = Instance.new("Frame")
        fill.Name = "Fill"
        fill.BackgroundColor3 = Color3.new(1, 1, 1)
        fill.BorderSizePixel = 0
        fill.Size = UDim2.fromScale(alpha, 1)
        fill.ZIndex = 85
        fill.Parent = bar
        local fillCorner = barCorner:Clone()
        fillCorner.Parent = fill
        local knob = Instance.new("Frame")
        knob.Name = "Knob"
        knob.AnchorPoint = Vector2.new(0.5, 0.5)
        knob.BackgroundColor3 = Color3.new(1, 1, 1)
        knob.BorderSizePixel = 0
        knob.Position = UDim2.fromScale(alpha, 0.5)
        knob.Size = UDim2.fromOffset(16, 16)
        knob.ZIndex = 86
        knob.Parent = bar
        local knobCorner = Instance.new("UICorner")
        knobCorner.CornerRadius = UDim.new(1, 0)
        knobCorner.Parent = knob
        local knobStroke = Instance.new("UIStroke")
        knobStroke.Color = Color3.fromRGB(42, 43, 49)
        knobStroke.Thickness = 2
        knobStroke.Parent = knob
        local input = Instance.new("TextButton")
        input.Name = "Input"
        input.Active = true
        input.AutoButtonColor = false
        input.BackgroundTransparency = 1
        input.Size = UDim2.fromScale(1, 1)
        input.Text = ""
        input.ZIndex = 87
        input.Parent = bar

        local dragging = false
        local touchInput
        local function render()
            fill.Size = UDim2.fromScale(alpha, 1)
            knob.Position = UDim2.fromScale(alpha, 0.5)
            label.Text = string.format("Alpha: %d%%", math.floor(alpha * 100 + 0.5))
        end
        local function setAlphaFromX(x, fire)
            alpha = math.clamp((x - bar.AbsolutePosition.X) / math.max(1, bar.AbsoluteSize.X), 0, 1)
            render()
            if fire then
                safeCall(callback, 1 - alpha)
            end
        end
        table.insert(connections, addFeatureConnection(window, input.InputBegan:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                touchInput = inputObject.UserInputType == Enum.UserInputType.Touch and inputObject or nil
                setAlphaFromX(inputObject.Position.X, true)
            end
        end)))
        table.insert(connections, addFeatureConnection(window, UserInputService.InputChanged:Connect(function(inputObject)
            if not dragging then
                return
            end
            if inputObject.UserInputType == Enum.UserInputType.MouseMovement or inputObject == touchInput then
                setAlphaFromX(inputObject.Position.X, true)
            end
        end)))
        table.insert(connections, addFeatureConnection(window, UserInputService.InputEnded:Connect(function(inputObject)
            if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or inputObject == touchInput then
                dragging = false
                touchInput = nil
            end
        end)))

        render()
        window:_featureScanTheme(label)
        window:_featureScanTheme(bar)
        return {
            GetAlpha = function()
                return alpha
            end,
            SetAlpha = function(value, fire)
                alpha = math.clamp(tonumber(value) or alpha, 0, 1)
                render()
                if fire then
                    safeCall(callback, 1 - alpha)
                end
                return alpha
            end,
            Connections = connections,
        }
    end

    local BaseAddColorPicker = Library.AddColorPicker
    function Library:AddColorPicker(colorSettings, legacyColor, legacyCallback)
        if type(colorSettings) ~= "table" then
            return BaseAddColorPicker(self, colorSettings, legacyColor, legacyCallback)
        end
        local requested = cloneTable(colorSettings)
        local alphaEnabled = requested.EnableAlpha == true or requested.Transparency ~= nil or requested.Alpha ~= nil
        local contextEnabled = requested.ContextMenu ~= false
        if not alphaEnabled and not contextEnabled then
            return BaseAddColorPicker(self, colorSettings, legacyColor, legacyCallback)
        end

        local transparency
        if requested.Transparency ~= nil then
            transparency = math.clamp(tonumber(requested.Transparency) or 0, 0, 1)
        elseif requested.Alpha ~= nil then
            transparency = 1 - math.clamp(tonumber(requested.Alpha) or 1, 0, 1)
        else
            transparency = 0
        end
        local userCallback = requested.Callback or function() end
        local baseSettings = cloneTable(requested)
        baseSettings.Callback = function(color)
            safeCall(userCallback, color, transparency)
        end

        local existingPopups = setmetatable({}, {__mode = "k"})
        for _, child in ipairs(self.Screen:GetChildren()) do
            if child.Name == "ColorPickerSidePanel" then
                existingPopups[child] = true
            end
        end
        local control = BaseAddColorPicker(self, baseSettings)
        local popup
        for _, child in ipairs(self.Screen:GetChildren()) do
            if child.Name == "ColorPickerSidePanel" and not existingPopups[child] then
                popup = child
                break
            end
        end

        local baseSet = control.Set
        local baseDestroy = control.Destroy
        local alphaSlider
        local function getTransparency()
            return transparency
        end
        local function setTransparency(value, silent)
            transparency = math.clamp(tonumber(value) or transparency, 0, 1)
            if alphaSlider then
                alphaSlider.SetAlpha(1 - transparency, false)
            end
            if not silent then
                safeCall(userCallback, control:Get(), transparency)
            end
            return transparency
        end

        if alphaEnabled and popup then
            alphaSlider = addAlphaSlider(self, control, popup, transparency, function(newTransparency)
                transparency = newTransparency
                safeCall(userCallback, control:Get(), transparency)
            end)
        end

        function control:GetTransparency()
            return transparency
        end
        function control:SetTransparency(value, silent)
            return setTransparency(value, silent)
        end
        function control:GetAlpha()
            return 1 - transparency
        end
        function control:SetAlpha(value, silent)
            return setTransparency(1 - math.clamp(tonumber(value) or (1 - transparency), 0, 1), silent)
        end
        function control:Set(value, silent)
            local result = baseSet(control, value, silent)
            return result
        end
        function control:Serialize()
            local data = colorToTable(control:Get())
            if alphaEnabled then
                data.Transparency = transparency
                data.Alpha = 1 - transparency
            end
            return data
        end
        function control:Deserialize(value, silent)
            if type(value) == "table" then
                local parsed = parseColor(value, control:Get())
                baseSet(control, parsed, true)
                if alphaEnabled then
                    if value.Transparency ~= nil then
                        setTransparency(value.Transparency, true)
                    elseif value.Alpha ~= nil then
                        setTransparency(1 - math.clamp(tonumber(value.Alpha) or 1, 0, 1), true)
                    end
                end
                if not silent then
                    safeCall(userCallback, control:Get(), transparency)
                end
                return control:Get()
            end
            return baseSet(control, value, silent)
        end

        local contextMenu = contextEnabled and buildColorContextMenu(self, control, getTransparency, setTransparency) or nil
        function control:Destroy()
            if alphaSlider then
                for _, connection in ipairs(alphaSlider.Connections or {}) do
                    pcall(function()
                        connection:Disconnect()
                    end)
                end
            end
            if contextMenu and contextMenu.Parent then
                contextMenu:Destroy()
            end
            return baseDestroy(control)
        end
        return control
    end

    ---------------------------------------------------------------------------
    -- Observable controls: change callbacks feed event-driven DependencyBox.
    ---------------------------------------------------------------------------
    do
        local BaseObservedAddToggle = Library.AddToggle
        function Library:AddToggle(nameOrSettings, default, callback)
            local holder = {}
            local control
            if type(nameOrSettings) == "table" then
                local settings = cloneTable(nameOrSettings)
                local userCallback = settings.Callback
                settings.Callback = makeObservedCallback(holder, userCallback)
                control = BaseObservedAddToggle(self, settings)
            else
                control = BaseObservedAddToggle(self, nameOrSettings, default, makeObservedCallback(holder, callback))
            end
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        local BaseObservedAddSelector = Library.AddSelector
        function Library:AddSelector(nameOrSettings, values, default, callback)
            local holder = {}
            local control
            if type(nameOrSettings) == "table" then
                local settings = cloneTable(nameOrSettings)
                local userCallback = settings.Callback
                settings.Callback = makeObservedCallback(holder, userCallback)
                control = BaseObservedAddSelector(self, settings)
            else
                control = BaseObservedAddSelector(self, nameOrSettings, values, default, makeObservedCallback(holder, callback))
            end
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        local BaseObservedAddDropdown = Library.AddDropdown
        function Library:AddDropdown(settingsOrName, legacyValues, legacyDefault, legacyCallback, legacyMultiple)
            local holder = {}
            local control
            if type(settingsOrName) == "table" then
                local settings = cloneTable(settingsOrName)
                local userCallback = settings.Callback
                settings.Callback = makeObservedCallback(holder, userCallback)
                control = BaseObservedAddDropdown(self, settings)
            else
                control = BaseObservedAddDropdown(self, settingsOrName, legacyValues, legacyDefault, makeObservedCallback(holder, legacyCallback), legacyMultiple)
            end
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        local BaseObservedAddSlider = Library.AddSlider
        function Library:AddSlider(nameOrSettings, minimum, maximum, default, callback, step)
            local holder = {}
            local control
            if type(nameOrSettings) == "table" then
                local settings = cloneTable(nameOrSettings)
                local userCallback = settings.Callback
                settings.Callback = makeObservedCallback(holder, userCallback)
                control = BaseObservedAddSlider(self, settings)
            else
                control = BaseObservedAddSlider(self, nameOrSettings, minimum, maximum, default, makeObservedCallback(holder, callback), step)
            end
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        local BaseObservedAddInput = Library.AddInput
        function Library:AddInput(inputSettings, legacyDefault, legacyCallback)
            local holder = {}
            local settings
            if type(inputSettings) == "table" then
                settings = cloneTable(inputSettings)
                local userChangedCallback = settings.ChangedCallback or settings.OnChanged
                settings.ChangedCallback = makeObservedCallback(holder, userChangedCallback)
                settings.OnChanged = nil
            else
                settings = {
                    Name = tostring(inputSettings),
                    Default = legacyDefault,
                    Callback = legacyCallback,
                    ChangedCallback = makeObservedCallback(holder, nil),
                }
            end
            local control = BaseObservedAddInput(self, settings)
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        local BaseObservedAddKeybind = Library.AddKeybind
        function Library:AddKeybind(keybindSettings, legacyKey, legacyCallback)
            local holder = {}
            local settings
            if type(keybindSettings) == "table" then
                settings = cloneTable(keybindSettings)
                local userCallback = settings.Callback
                local userChangedCallback = settings.ChangedCallback
                settings.Callback = makeObservedCallback(holder, userCallback)
                settings.ChangedCallback = makeObservedCallback(holder, userChangedCallback)
            else
                settings = {
                    Name = tostring(keybindSettings),
                    CurrentKey = legacyKey,
                    Callback = makeObservedCallback(holder, legacyCallback),
                    ChangedCallback = makeObservedCallback(holder, nil),
                }
            end
            local control = BaseObservedAddKeybind(self, settings)
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        local BaseObservedAddColorPicker = Library.AddColorPicker
        function Library:AddColorPicker(colorSettings, legacyColor, legacyCallback)
            local holder = {}
            local control
            if type(colorSettings) == "table" then
                local settings = cloneTable(colorSettings)
                local userCallback = settings.Callback
                settings.Callback = makeObservedCallback(holder, userCallback)
                control = BaseObservedAddColorPicker(self, settings)
            else
                control = BaseObservedAddColorPicker(self, colorSettings, legacyColor, makeObservedCallback(holder, legacyCallback))
            end
            holder.Control = makeControlObservable(control)
            return holder.Control
        end

        if type(Library.AddProgress) == "function" then
            local BaseObservedAddProgress = Library.AddProgress
            function Library:AddProgress(...)
                return makeControlObservable(BaseObservedAddProgress(self, ...))
            end
        end
    end

    ---------------------------------------------------------------------------
    -- Add the new methods to Sections, SubTabs and Tabs returned by the base UI.
    ---------------------------------------------------------------------------
    local function augmentParent(parent, window)
        if type(parent) ~= "table" or parent.__FeatureParentAugmented then
            return parent
        end
        parent.__FeatureParentAugmented = true

        if type(parent._add) == "function" then
            function parent:AddInput(...)
                return self:_add("AddInput", ...)
            end
        elseif parent.Name and parent.Window == window then
            function parent:AddInput(...)
                return self.Window:_withTab(self.Name, "AddInput", ...)
            end
        end

        function parent:AddDependencyBox(settings)
            return createDependencyBox(self, window, settings)
        end
        return parent
    end

    local BaseAddSection = Library.AddSection
    function Library:AddSection(...)
        local section = BaseAddSection(self, ...)
        return augmentParent(section, self)
    end

    local BaseAddSubTab = Library.AddSubTab
    if type(BaseAddSubTab) == "function" then
        function Library:AddSubTab(...)
            local subTab = BaseAddSubTab(self, ...)
            return augmentParent(subTab, self)
        end
    end

    local BaseCreateTab = Library.CreateTab
    function Library:CreateTab(...)
        local tab = BaseCreateTab(self, ...)
        return augmentParent(tab, self)
    end

    ---------------------------------------------------------------------------
    -- Window lifecycle: feature state, optional theme, clean teardown.
    ---------------------------------------------------------------------------
    local BaseCreateWindow = Library.CreateWindow
    function Library:CreateWindow(settings)
        local window = BaseCreateWindow(self, settings)
        window._FeatureConnections = window._FeatureConnections or {}
        window._FeatureThemeBindings = {}
        window._FeatureThemeBindingIndex = setmetatable({}, {__mode = "k"})
        window._FeatureThemeOverrides = {}
        window._FeatureThemeCallbacks = {}
        window._FeatureDependencyBoxes = setmetatable({}, {__mode = "k"})
        window.Theme = cloneTable(DEFAULT_THEME)
        Library._FeatureWindows[window] = true

        local requestedTheme = type(settings) == "table" and settings.Theme or nil
        if next(Library._GlobalFeatureTheme) ~= nil then
            window:SetTheme(Library._GlobalFeatureTheme)
        end
        if type(requestedTheme) == "table" then
            window:SetTheme(requestedTheme)
        end
        return window
    end

    local BaseDestroy = Library.Destroy
    function Library:Destroy(...)
        if self.Screen then
            local dependencyBoxes = {}
            for box in pairs(self._FeatureDependencyBoxes or {}) do
                table.insert(dependencyBoxes, box)
            end
            for _, box in ipairs(dependencyBoxes) do
                if type(box.Destroy) == "function" then
                    pcall(box.Destroy, box, false)
                end
            end
            self._FeatureDependencyBoxes = setmetatable({}, {__mode = "k"})

            local advancedKeybinds = {}
            for _, control in ipairs(self._FeatureAdvancedKeybindControls or {}) do
                table.insert(advancedKeybinds, control)
            end
            for _, control in ipairs(advancedKeybinds) do
                if type(control.Destroy) == "function" then
                    pcall(control.Destroy, control)
                end
            end
            self._FeatureAdvancedKeybindControls = {}
            for _, connection in ipairs(self._FeatureConnections or {}) do
                pcall(function()
                    connection:Disconnect()
                end)
            end
            self._FeatureConnections = {}
            Library._FeatureWindows[self] = nil
            if self._FeatureKeybindHUD and self._FeatureKeybindHUD.Parent then
                self._FeatureKeybindHUD:Destroy()
            end
        end
        return BaseDestroy(self, ...)
    end

    Library.FeaturePack = {
        AddInput = true,
        DependencyBox = true,
        DependencyBoxEventDriven = true,
        AdvancedKeybinds = true,
        ColorPickerAlphaContext = true,
        LiveTheme = true,
        Version = "1.1.0",
    }

    return Library
end

]================================================])()(Library)
loadstring([================================================[
return function(Library)
    if type(Library) ~= "table" then
        error("circularselection.lua expected the necker Library table", 2)
    end
    if Library.__NeckerCircularSelectionInstalled then
        return Library
    end
    Library.__NeckerCircularSelectionInstalled = true

    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")

    local SELECT_IMAGES = {
        Normal = {"rbxassetid://13744994506", "rbxassetid://13745368416"},
        Huge = {"rbxassetid://15276476580", "rbxassetid://15276518483"},
    }
    local SELECT_TWEEN = TweenInfo.new(0.2, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
    local DIAL_OPEN_TWEEN = TweenInfo.new(0.15, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
    local DIAL_CLOSE_TWEEN = TweenInfo.new(0.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
    local DIAL_COLOR = Color3.fromRGB(113, 255, 62)
    local DIAL_WARNING = Color3.fromRGB(255, 233, 65)
    local DIAL_DISABLED = Color3.fromRGB(85, 85, 85)

    local function copyTable(source)
        local result = {}
        if type(source) == "table" then
            for key, value in pairs(source) do
                result[key] = value
            end
        end
        return result
    end

    local function safeCall(callback, ...)
        if type(callback) ~= "function" then
            return
        end
        local ok, message = pcall(callback, ...)
        if not ok then
            warn("CircularSelection: " .. tostring(message))
        end
    end

    local function roundIncrement(value, increment)
        local remainder = value % increment
        if increment / 2 <= remainder then
            return value + increment - remainder
        end
        return value - remainder
    end

    local function newSelectOverlay(parent, huge)
        local overlay = Instance.new("ImageLabel")
        overlay.Name = "Select"
        overlay.AnchorPoint = Vector2.new(0.5, 0.5)
        overlay.BackgroundTransparency = 1
        overlay.BorderSizePixel = 1
        overlay.Image = SELECT_IMAGES[huge and "Huge" or "Normal"][1]
        overlay.ImageColor3 = Color3.new(0, 0, 0)
        overlay.Position = UDim2.fromScale(0.5, 0.5)
        overlay.Size = UDim2.fromScale(1, 1)
        overlay.Visible = false
        overlay.ZIndex = 50
        overlay.Parent = parent
        return overlay
    end

    local function setCircularProgress(frame, progress)
        progress = math.clamp(progress, 0.0001, 1)
        local left = frame:FindFirstChild("Left")
        local right = frame:FindFirstChild("Right")
        local leftGradient = left and left:FindFirstChildOfClass("UIGradient")
        local rightGradient = right and right:FindFirstChildOfClass("UIGradient")
        if not leftGradient or not rightGradient then
            return
        end
        rightGradient.Rotation = math.clamp(progress * 2, 0, 1) * 180
        leftGradient.Rotation = math.clamp((progress - 0.5) * 2, 0, 1) * 180 + 180
        rightGradient.Enabled = progress < 0.5
        leftGradient.Enabled = progress < 1
    end

    local function newDial(parent)
        local dial = Instance.new("Frame")
        dial.Name = "Dial"
        dial.AnchorPoint = Vector2.new(0.5, 0.5)
        dial.BackgroundTransparency = 1
        dial.Position = UDim2.fromScale(0.5, 0.5)
        dial.Size = UDim2.new(0.8, 0, 0.35, 0)
        dial.ZIndex = 2000
        dial.Parent = parent

        for _, side in ipairs({
            {"Left", "rbxassetid://8897745728"},
            {"Right", "rbxassetid://8897746094"},
        }) do
            local image = Instance.new("ImageLabel")
            image.Name = side[1]
            image.AnchorPoint = Vector2.new(0.5, 0.5)
            image.BackgroundTransparency = 1
            image.Image = side[2]
            image.ImageColor3 = DIAL_COLOR
            image.Position = UDim2.fromScale(0.5, 0.5)
            image.ScaleType = Enum.ScaleType.Fit
            image.Size = UDim2.fromScale(1, 1)
            image.ZIndex = 2000
            image.Parent = dial

            local gradient = Instance.new("UIGradient")
            gradient.Rotation = 180
            gradient.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(0.499, 0),
                NumberSequenceKeypoint.new(0.5, 1),
                NumberSequenceKeypoint.new(1, 1),
            })
            gradient.Parent = image
        end

        local background = Instance.new("Frame")
        background.Name = "background"
        background.AnchorPoint = Vector2.new(0.5, 0.5)
        background.BackgroundColor3 = Color3.new(0, 0, 0)
        background.BorderSizePixel = 1
        background.Position = UDim2.fromScale(0.5, 0.5)
        background.Size = UDim2.new(1.1, 2, 1.1, 2)
        background.ZIndex = 1900
        background.Parent = dial

        local corner = Instance.new("UICorner")
        corner.CornerRadius = UDim.new(1, 0)
        corner.Parent = background

        local quantity = Instance.new("TextLabel")
        quantity.Name = "Quantity"
        quantity.AnchorPoint = Vector2.new(0.5, 0.5)
        quantity.BackgroundTransparency = 1
        quantity.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold)
        quantity.Position = UDim2.fromScale(0.5, 0.5)
        quantity.Size = UDim2.new(1, 0, 0.7, 0)
        quantity.Text = "0"
        quantity.TextColor3 = Color3.new(1, 1, 1)
        quantity.TextScaled = true
        quantity.TextWrapped = true
        quantity.ZIndex = 2000
        quantity.Parent = dial

        local stroke = Instance.new("UIStroke")
        stroke.Color = Color3.new(0, 0, 0)
        stroke.LineJoinMode = Enum.LineJoinMode.Round
        stroke.Thickness = 2.5
        stroke.Parent = quantity

        local aspect = Instance.new("UIAspectRatioConstraint")
        aspect.AspectRatio = 1
        aspect.Parent = dial

        local deadzone = Instance.new("Frame")
        deadzone.Name = "Deadzone"
        deadzone.AnchorPoint = Vector2.new(0.5, 0.5)
        deadzone.BackgroundColor3 = Color3.fromRGB(255, 66, 91)
        deadzone.BackgroundTransparency = 1
        deadzone.BorderSizePixel = 0
        deadzone.Position = UDim2.fromScale(0.5, 0.1)
        deadzone.Size = UDim2.fromScale(0.1, 0.2)
        deadzone.ZIndex = 2100
        deadzone.Parent = dial

        local zero = Instance.new("TextLabel")
        zero.Name = "zero"
        zero.AnchorPoint = Vector2.new(0.5, 1)
        zero.BackgroundTransparency = 1
        zero.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Heavy)
        zero.Position = UDim2.fromScale(0.5, -0.15)
        zero.Size = UDim2.fromScale(2, 1.3)
        zero.Text = "0"
        zero.TextColor3 = deadzone.BackgroundColor3
        zero.TextScaled = true
        zero.TextTransparency = 1
        zero.TextWrapped = true
        zero.ZIndex = 2100
        zero.Parent = deadzone

        setCircularProgress(dial, 1)
        return dial
    end

    local function attachDial(parent, maximum, increment, initial, changed)
        local dial = newDial(parent)
        local quantity = math.clamp(tonumber(initial) or maximum, 0, maximum)
        local tracking = false
        local connection

        local function update()
            local stepped = increment > 1
            local validStep = not stepped or quantity % increment == 0 or quantity > 100
            local enough = quantity >= increment
            dial.Quantity.Text = tostring(quantity)
            dial.Quantity.TextColor3 = quantity > 0 and (validStep and Color3.new(1, 1, 1) or Color3.fromRGB(181, 181, 181)) or Color3.fromRGB(255, 205, 205)
            local color = validStep and DIAL_COLOR or (enough and DIAL_WARNING or DIAL_DISABLED)
            dial.Left.ImageColor3 = color
            dial.Right.ImageColor3 = color
            setCircularProgress(dial, math.clamp(quantity / maximum, 0.001, 0.999))
            safeCall(changed, quantity)
        end

        local function stopTracking()
            if not tracking then
                return quantity
            end
            tracking = false
            if connection then
                connection:Disconnect()
                connection = nil
            end
            TweenService:Create(dial, DIAL_CLOSE_TWEEN, {Size = UDim2.new(0.35, 0, 1, 0)}):Play()
            TweenService:Create(dial.Deadzone, DIAL_CLOSE_TWEEN, {BackgroundTransparency = 1}):Play()
            TweenService:Create(dial.Deadzone.zero, DIAL_CLOSE_TWEEN, {TextTransparency = 1}):Play()
            return quantity
        end

        local function startTracking()
            if tracking then
                return
            end
            tracking = true
            TweenService:Create(dial, DIAL_OPEN_TWEEN, {Size = UDim2.new(0.75, 0, 1, 0)}):Play()
            TweenService:Create(dial.Deadzone, DIAL_OPEN_TWEEN, {BackgroundTransparency = 0}):Play()
            TweenService:Create(dial.Deadzone.zero, DIAL_OPEN_TWEEN, {TextTransparency = 0}):Play()
            local lastAlpha = quantity / maximum
            connection = RunService.RenderStepped:Connect(function()
                if not dial.Parent then
                    return
                end
                local mouse = UserInputService:GetMouseLocation()
                local center = dial.AbsolutePosition + dial.AbsoluteSize / 2
                local offset = mouse - center
                local angle = (math.deg(math.atan2(offset.Y, offset.X)) + 90) % 360
                local alpha = (angle <= 6 or angle >= 354) and 0 or (angle - 6) / 348

                if (alpha >= 1 or alpha <= 0.25) and lastAlpha > 0.75 then
                    alpha = 1
                elseif (alpha <= 0 or alpha >= 0.75) and lastAlpha < 0.25 then
                    alpha = 0
                else
                    lastAlpha = alpha
                end

                if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
                    alpha = 1
                    lastAlpha = 1
                end

                local nextQuantity
                if maximum >= 100000 then
                    nextQuantity = math.round(math.floor(maximum * alpha / 100 + 0.5) * 100)
                elseif maximum >= 10000 then
                    nextQuantity = math.round(math.floor(maximum * alpha / 25 + 0.5) * 25)
                elseif maximum >= 1000 then
                    nextQuantity = math.round(math.floor(maximum * alpha / 5 + 0.5) * 5)
                else
                    nextQuantity = math.round(maximum * alpha)
                end
                if increment * 5 <= maximum then
                    nextQuantity = roundIncrement(nextQuantity, increment)
                end
                if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then
                    nextQuantity = 1
                end
                nextQuantity = math.clamp(nextQuantity, 0, maximum)
                if nextQuantity ~= quantity then
                    quantity = nextQuantity
                    update()
                end
            end)
        end

        local function set(value)
            quantity = math.clamp(tonumber(value) or 0, 0, maximum)
            update()
        end

        local function destroy()
            stopTracking()
            if dial.Parent then
                dial:Destroy()
            end
        end

        update()
        return dial, startTracking, stopTracking, set, destroy
    end

    local function normalizeItem(value, index)
        if type(value) ~= "table" then
            return {
                Name = tostring(value),
                Value = value,
                Key = value,
                Max = 1,
                Increment = 1,
                Index = index,
            }
        end
        local item = copyTable(value)
        item.Name = tostring(item.Name or item.Text or item.Value or item.Key or index)
        item.Value = item.Value ~= nil and item.Value or item.Name
        item.Key = item.Key ~= nil and item.Key or item.Value
        item.Icon = item.Icon or item.Image
        item.Max = math.max(1, tonumber(item.Max or item.Amount or item.Quantity) or 1)
        item.Increment = math.max(1, tonumber(item.Increment or item.Step) or 1)
        item.Index = index
        return item
    end

    function Library:AddCircularSelection(selectionSettings)
        local settings = type(selectionSettings) == "table" and copyTable(selectionSettings) or {Name = tostring(selectionSettings)}
        settings.Name = tostring(settings.Name or "Circular Selection")
        settings.Items = settings.Items or settings.Options or {}
        settings.Callback = settings.Callback or function() end
        settings.ItemCallback = settings.ItemCallback or settings.OnItemChanged
        settings.Columns = math.max(1, math.floor(tonumber(settings.Columns) or 4))
        settings.ItemHeight = math.max(48, tonumber(settings.ItemHeight) or 68)
        settings.Multiple = settings.Multiple ~= false and settings.Multi ~= false
        settings.MaxSelected = tonumber(settings.MaxSelected)

        local items = {}
        for index, value in ipairs(settings.Items) do
            items[index] = normalizeItem(value, index)
        end

        local rows = math.max(1, math.ceil(#items / settings.Columns))
        local rowHeight = 34 + rows * settings.ItemHeight + math.max(0, rows - 1) * 6 + 8
        local row = self.Templates.Selector:Clone()
        local aspect = row:FindFirstChildOfClass("UIAspectRatioConstraint")
        if aspect then
            aspect:Destroy()
        end
        row.ClipsDescendants = false
        row.Size = UDim2.new(1, 0, 0, rowHeight)
        row.SettingName.AnchorPoint = Vector2.zero
        row.SettingName.Position = UDim2.fromOffset(4, 0)
        row.SettingName.Size = UDim2.new(1, -8, 0, 28)
        row.SettingName.Text = settings.Name
        row.Toggle.Visible = false

        local holder = Instance.new("Frame")
        holder.Name = "CircularSelection"
        holder.BackgroundTransparency = 1
        holder.Position = UDim2.fromOffset(4, 34)
        holder.Size = UDim2.new(1, -8, 1, -38)
        holder.Parent = row

        local grid = Instance.new("UIGridLayout")
        grid.CellPadding = UDim2.fromOffset(6, 6)
        grid.CellSize = UDim2.new(1 / settings.Columns, -6, 0, settings.ItemHeight)
        grid.FillDirectionMaxCells = settings.Columns
        grid.SortOrder = Enum.SortOrder.LayoutOrder
        grid.Parent = holder

        self:_mount(row, settings.Name, settings.Name)

        local selection = {}
        local controls = {}
        local tooltipDisconnects = {}
        local listeners = {}
        local destroyed = false

        local function selectedCount()
            local count = 0
            for _, quantity in pairs(selection) do
                if quantity > 0 then
                    count += 1
                end
            end
            return count
        end

        local function emit(item, oldQuantity)
            if destroyed then
                return
            end
            local snapshot = copyTable(selection)
            safeCall(settings.Callback, snapshot)
            if item then
                safeCall(settings.ItemCallback, item.Key, selection[item.Key] or 0, oldQuantity or 0, item)
            end
            for _, callback in ipairs(listeners) do
                safeCall(callback, snapshot)
            end
        end

        local function setAppearance(entry, selected)
            local wasSelected = entry.Selected
            entry.Selected = selected
            entry.Overlay.Visible = selected
            if not selected then
                entry.Overlay:SetAttribute("Showing", false)
                entry.FlashToken += 1
                entry.Overlay.Size = UDim2.fromScale(1, 1)
                return
            end
            if wasSelected and entry.Overlay:GetAttribute("Showing") then
                return
            end
            entry.Overlay:SetAttribute("Showing", true)
            entry.FlashToken += 1
            entry.Overlay.Size = UDim2.fromScale(1.2, 1.2)
            TweenService:Create(entry.Overlay, SELECT_TWEEN, {Size = UDim2.fromScale(1, 1)}):Play()
            local token = entry.FlashToken
            task.spawn(function()
                local images = SELECT_IMAGES[entry.Item.Huge and "Huge" or "Normal"]
                while entry.Selected and entry.Overlay.Parent and entry.FlashToken == token do
                    entry.Overlay.Image = os.clock() % 1 > 0.5 and images[1] or images[2]
                    task.wait(0.1)
                end
            end)
        end

        local function setQuantity(entry, quantity, silent)
            quantity = math.clamp(math.floor(tonumber(quantity) or 0), 0, entry.Item.Max)
            local oldQuantity = selection[entry.Item.Key] or 0
            if quantity > 0 and oldQuantity <= 0 then
                if not settings.Multiple then
                    for key, other in pairs(controls) do
                        if other ~= entry and (selection[key] or 0) > 0 then
                            selection[key] = nil
                            if other.DialDestroy then
                                other.DialDestroy()
                                other.DialDestroy = nil
                            end
                            setAppearance(other, false)
                            other.Quantity.Text = other.Item.Max > 1 and ("x" .. tostring(other.Item.Max)) or ""
                        end
                    end
                elseif settings.MaxSelected and selectedCount() >= settings.MaxSelected then
                    return false
                end
            end

            if quantity <= 0 then
                selection[entry.Item.Key] = nil
                if entry.DialDestroy and not entry.DialTracking then
                    entry.DialDestroy()
                    entry.DialDestroy = nil
                end
                setAppearance(entry, false)
            else
                selection[entry.Item.Key] = quantity
                setAppearance(entry, true)
            end
            entry.Quantity.Text = entry.Item.Max > 1 and ("x" .. tostring(quantity > 0 and quantity or entry.Item.Max)) or ""
            if not silent and oldQuantity ~= quantity then
                emit(entry.Item, oldQuantity)
            end
            return true
        end

        local function ensureDial(entry, startTracking)
            if entry.Item.Max <= 1 then
                return
            end
            if not entry.DialDestroy then
                local dial, start, stop, set, destroy = attachDial(entry.Button, entry.Item.Max, entry.Item.Increment, selection[entry.Item.Key] or entry.Item.Max, function(quantity)
                    setQuantity(entry, quantity, false)
                end)
                entry.Dial = dial
                entry.DialStart = function()
                    entry.DialTracking = true
                    start()
                end
                entry.DialStop = function()
                    local quantity = stop()
                    entry.DialTracking = false
                    return quantity
                end
                entry.DialSet = set
                entry.DialDestroy = function()
                    entry.DialTracking = false
                    destroy()
                end
            end
            if startTracking and entry.DialStart then
                entry.DialStart()
            end
        end

        for _, item in ipairs(items) do
            local button = self.Templates.Selector.Toggle.Button:Clone()
            button.Name = item.Name
            button.Active = item.Selectable ~= false and item.Disabled ~= true
            button.AutoButtonColor = false
            button.AnchorPoint = Vector2.zero
            button.LayoutOrder = item.Index
            button.Size = UDim2.fromScale(1, 1)
            local buttonAspect = button:FindFirstChildOfClass("UIAspectRatioConstraint")
            if buttonAspect then
                buttonAspect:Destroy()
            end
            button.Parent = holder

            local label = button:FindFirstChild("TextLabel")
            if label then
                label.AnchorPoint = Vector2.new(0.5, 1)
                label.Position = UDim2.fromScale(0.5, 0.97)
                label.Size = UDim2.new(0.92, 0, 0.28, 0)
                label.Text = item.Name
                label.ZIndex = 12
            end

            local icon = Instance.new("ImageLabel")
            icon.Name = "Icon"
            icon.AnchorPoint = Vector2.new(0.5, 0.5)
            icon.BackgroundTransparency = 1
            icon.Image = tostring(item.Icon or "")
            icon.Position = UDim2.fromScale(0.5, 0.42)
            icon.ScaleType = Enum.ScaleType.Fit
            icon.Size = item.Icon and UDim2.fromScale(0.64, 0.64) or UDim2.fromScale(0, 0)
            icon.ZIndex = 11
            icon.Parent = button

            local quantity = Instance.new("TextLabel")
            quantity.Name = "Quantity"
            quantity.AnchorPoint = Vector2.new(1, 0)
            quantity.BackgroundTransparency = 1
            quantity.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold)
            quantity.Position = UDim2.new(1, -5, 0, 3)
            quantity.Size = UDim2.fromScale(0.44, 0.28)
            quantity.Text = item.Max > 1 and ("x" .. tostring(item.Max)) or ""
            quantity.TextColor3 = Color3.new(1, 1, 1)
            quantity.TextScaled = true
            quantity.TextXAlignment = Enum.TextXAlignment.Right
            quantity.ZIndex = 12
            quantity.Parent = button

            local quantityStroke = Instance.new("UIStroke")
            quantityStroke.Color = Color3.new(0, 0, 0)
            quantityStroke.Thickness = 1.5
            quantityStroke.Parent = quantity

            local overlay = newSelectOverlay(button, item.Huge == true)
            local entry = {
                Item = item,
                Button = button,
                Overlay = overlay,
                Quantity = quantity,
                Selected = false,
                FlashToken = 0,
            }
            controls[item.Key] = entry

            if type(self.AttachItemTooltip) == "function" and item.Tooltip ~= false then
                table.insert(tooltipDisconnects, self:AttachItemTooltip(button, item.Tooltip or item.Name))
            end

            if item.Max > 1 then
                button.MouseButton1Down:Connect(function()
                    if not button.Active then
                        return
                    end
                    entry.PressedSelected = entry.Selected
                    entry.PressTime = os.clock()
                    if not entry.Selected and not setQuantity(entry, entry.Item.Max, false) then
                        return
                    end
                    ensureDial(entry, true)
                end)
                button.MouseButton1Up:Connect(function()
                    local quickDeselect = entry.PressedSelected and entry.Selected and entry.PressTime and os.clock() - entry.PressTime <= 0.15
                    local value = entry.DialStop and entry.DialStop() or (selection[entry.Item.Key] or 0)
                    if quickDeselect or value <= 0 then
                        setQuantity(entry, 0, false)
                    end
                    entry.PressedSelected = nil
                    entry.PressTime = nil
                end)
            else
                button.Activated:Connect(function()
                    if button.Active then
                        setQuantity(entry, entry.Selected and 0 or 1, false)
                    end
                end)
            end
        end

        local rawControl = {}
        function rawControl:Get()
            return copyTable(selection)
        end
        function rawControl:Set(value, silent)
            value = type(value) == "table" and value or {}
            for key, entry in pairs(controls) do
                local quantity = tonumber(value[key]) or 0
                setQuantity(entry, quantity, true)
                if quantity > 0 and entry.Item.Max > 1 then
                    ensureDial(entry, false)
                    if entry.DialSet then
                        entry.DialSet(quantity)
                    end
                end
            end
            if not silent then
                emit()
            end
            return self:Get()
        end
        function rawControl:SetItem(key, quantity, silent)
            local entry = controls[key]
            if not entry then
                return false
            end
            local ok = setQuantity(entry, quantity, silent)
            if ok and tonumber(quantity) and tonumber(quantity) > 0 and entry.Item.Max > 1 then
                ensureDial(entry, false)
                if entry.DialSet then
                    entry.DialSet(quantity)
                end
            end
            return ok
        end
        function rawControl:Clear(silent)
            return self:Set({}, silent)
        end
        function rawControl:OnChanged(callback)
            assert(type(callback) == "function", "CircularSelection OnChanged callback must be a function")
            table.insert(listeners, callback)
            local connected = true
            return {
                Disconnect = function()
                    if not connected then
                        return
                    end
                    connected = false
                    local index = table.find(listeners, callback)
                    if index then
                        table.remove(listeners, index)
                    end
                end,
            }
        end
        function rawControl:Destroy()
            destroyed = true
            for _, disconnect in ipairs(tooltipDisconnects) do
                pcall(disconnect)
            end
            for _, entry in pairs(controls) do
                entry.FlashToken += 1
                if entry.DialDestroy then
                    entry.DialDestroy()
                end
            end
            if row.Parent then
                row:Destroy()
            end
        end

        local control = type(self._decorateControl) == "function" and self:_decorateControl(rawControl, row, settings, "CircularSelection") or rawControl
        control.Items = controls
        control.Container = holder

        if settings.Default then
            control:Set(settings.Default, true)
        end
        if type(self._featureScanTheme) == "function" then
            self:_featureScanTheme(row)
        end
        return control
    end

    local function augmentParent(parent, window)
        if type(parent) ~= "table" or parent.__CircularSelectionParentAugmented then
            return parent
        end
        parent.__CircularSelectionParentAugmented = true
        if type(parent._add) == "function" then
            function parent:AddCircularSelection(...)
                return self:_add("AddCircularSelection", ...)
            end
        elseif parent.Name and parent.Window == window then
            function parent:AddCircularSelection(...)
                return self.Window:_withTab(self.Name, "AddCircularSelection", ...)
            end
        end
        return parent
    end

    local BaseAddSection = Library.AddSection
    function Library:AddSection(...)
        return augmentParent(BaseAddSection(self, ...), self)
    end

    local BaseAddSubTab = Library.AddSubTab
    if type(BaseAddSubTab) == "function" then
        function Library:AddSubTab(...)
            return augmentParent(BaseAddSubTab(self, ...), self)
        end
    end

    local BaseCreateTab = Library.CreateTab
    function Library:CreateTab(...)
        return augmentParent(BaseCreateTab(self, ...), self)
    end

    Library.FeaturePack = Library.FeaturePack or {}
    Library.FeaturePack.CircularSelection = true
    return Library
end

]================================================])()(Library)
loadstring([================================================[
return function(Library)
    if type(Library) ~= "table" then
        error("popup.lua expected the necker Library table", 2)
    end
    if Library.__NeckerPopupInstalled then
        return Library
    end
    Library.__NeckerPopupInstalled = true

    local TweenService = game:GetService("TweenService")
    local RunService = game:GetService("RunService")

    local BUTTON_IMAGE = "rbxassetid://14423621163"
    local SHADOW_IMAGE = "rbxassetid://14001321443"
    local PANEL_PATTERN = "rbxassetid://13581793331"
    local ERROR_ICON = "rbxassetid://14693511016"
    local WARN_ICON = "rbxassetid://12292293450"
    local WARN_SHADOW = "rbxassetid://13873482240"
    local CIRCLE_LEFT = "rbxassetid://8897745728"
    local CIRCLE_RIGHT = "rbxassetid://8897746094"

    local GREEN = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(92, 239, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(163, 253, 28)),
    })
    local RED = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 2, 61)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 39, 125)),
    })
    local BLUE = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(87, 216, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(135, 255, 249)),
    })
    local GREY = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(98, 98, 98)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(151, 151, 151)),
    })

    local BUTTON_DOWN = TweenInfo.new(0.065, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
    local BUTTON_UP = TweenInfo.new(0.25, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
    local BUTTON_HOVER = TweenInfo.new(0.05, Enum.EasingStyle.Circular, Enum.EasingDirection.Out)
    local BUTTON_LEAVE = TweenInfo.new(0.035, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
    local WARN_IN = TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

    local function cloneTable(source)
        local result = {}
        if type(source) == "table" then
            for key, value in pairs(source) do
                result[key] = value
            end
        end
        return result
    end

    local function safeCall(callback, ...)
        if type(callback) ~= "function" then
            return
        end
        local ok, message = pcall(callback, ...)
        if not ok then
            warn("Popup: " .. tostring(message))
        end
    end

    local function corner(parent, radius)
        local object = Instance.new("UICorner")
        object.CornerRadius = UDim.new(0, radius or 12)
        object.Parent = parent
        return object
    end

    local function stroke(parent, thickness, color, transparency)
        local object = Instance.new("UIStroke")
        object.Color = color or Color3.new(0, 0, 0)
        object.Thickness = thickness or 2
        object.Transparency = transparency or 0
        object.LineJoinMode = Enum.LineJoinMode.Round
        object.Parent = parent
        return object
    end

    local function textLabel(parent, name, text, zindex)
        local label = Instance.new("TextLabel")
        label.Name = name
        label.BackgroundTransparency = 1
        label.FontFace = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular)
        label.Text = tostring(text or "")
        label.TextColor3 = Color3.fromRGB(42, 43, 49)
        label.TextScaled = true
        label.TextWrapped = true
        label.ZIndex = zindex or 1003
        label.Parent = parent
        return label
    end

    local function attachButtonFX(button)
        local scale = button:FindFirstChildOfClass("UIScale") or Instance.new("UIScale")
        scale.Name = "ButtonUIScale"
        scale.Parent = button
        local pressed = false
        local hovering = false

        local function Down()
            if pressed then
                return
            end
            pressed = true
            hovering = false
            TweenService:Create(scale, BUTTON_DOWN, {Scale = 0.9}):Play()
        end

        local function Up()
            if not pressed then
                return
            end
            pressed = false
            TweenService:Create(scale, BUTTON_UP, {Scale = 1}):Play()
        end

        local function MouseEnter()
            if hovering then
                return
            end
            hovering = true
            if pressed then
                return
            end
            TweenService:Create(scale, BUTTON_HOVER, {Scale = 1.05}):Play()
        end

        local function MouseLeave()
            if not hovering then
                return
            end
            hovering = false
            if pressed then
                return
            end
            TweenService:Create(scale, BUTTON_LEAVE, {Scale = 1}):Play()
        end

        button.InputBegan:Connect(function(input)
            if not button.Active then
                return
            end
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch or input.KeyCode == Enum.KeyCode.ButtonA then
                Down()
            end
        end)
        button.InputEnded:Connect(function(input)
            if not button.Active then
                return
            end
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch or input.KeyCode == Enum.KeyCode.ButtonA then
                Up()
            end
        end)
        button.MouseEnter:Connect(MouseEnter)
        button.MouseLeave:Connect(MouseLeave)
    end

    local function makeButton(parent, name, caption, position, gradientColor, zindex)
        local button = Instance.new("ImageButton")
        button.Name = name
        button.AnchorPoint = Vector2.new(0.5, 0.5)
        button.AutoButtonColor = false
        button.BackgroundTransparency = 1
        button.Image = BUTTON_IMAGE
        button.Position = position
        button.Size = UDim2.new(0.4464, 0, 0.15, 25)
        button.ZIndex = zindex or 1006
        button.Parent = parent

        local gradient = Instance.new("UIGradient")
        gradient.Name = name .. " gradient"
        gradient.Color = gradientColor
        gradient.Parent = button

        local label = textLabel(button, "TextLabel", caption, button.ZIndex)
        label.AnchorPoint = Vector2.new(0.5, 0.5)
        label.Position = UDim2.fromScale(0.5, 0.5)
        label.Size = UDim2.fromScale(0.9, 0.6)
        label.TextColor3 = Color3.new(1, 1, 1)
        stroke(label, 2.2, Color3.new(0, 0, 0), 0)

        attachButtonFX(button)
        return button, gradient
    end

    local function setCircularProgress(frame, progress)
        progress = math.clamp(tonumber(progress) or 0, 0.0001, 1)
        local leftGradient = frame.Left:FindFirstChildOfClass("UIGradient")
        local rightGradient = frame.Right:FindFirstChildOfClass("UIGradient")
        rightGradient.Rotation = math.clamp(progress * 2, 0, 1) * 180
        leftGradient.Rotation = math.clamp((progress - 0.5) * 2, 0, 1) * 180 + 180
        rightGradient.Enabled = progress < 0.5
        leftGradient.Enabled = progress < 1
    end

    local function makeCircularBar(parent)
        local bar = Instance.new("Frame")
        bar.Name = "CircularBar"
        bar.AnchorPoint = Vector2.new(0.5, 0.5)
        bar.BackgroundTransparency = 1
        bar.Position = UDim2.fromScale(0.03, 0.12)
        bar.Size = UDim2.fromScale(0.35, 0.35)
        bar.Visible = false
        bar.ZIndex = 1110
        bar.Parent = parent

        local aspect = Instance.new("UIAspectRatioConstraint")
        aspect.AspectRatio = 1
        aspect.Parent = bar

        for _, data in ipairs({{"Left", CIRCLE_LEFT}, {"Right", CIRCLE_RIGHT}}) do
            local image = Instance.new("ImageLabel")
            image.Name = data[1]
            image.AnchorPoint = Vector2.new(0.5, 0.5)
            image.BackgroundTransparency = 1
            image.Image = data[2]
            image.ImageColor3 = Color3.new(0, 0, 0)
            image.Position = UDim2.fromScale(0.5, 0.5)
            image.Size = UDim2.fromScale(1, 1)
            image.ZIndex = 1110
            image.Parent = bar

            local gradient = Instance.new("UIGradient")
            gradient.Rotation = 180
            gradient.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0),
                NumberSequenceKeypoint.new(0.499, 0),
                NumberSequenceKeypoint.new(0.5, 1),
                NumberSequenceKeypoint.new(1, 1),
            })
            gradient.Parent = image
        end

        setCircularProgress(bar, 1)
        return bar
    end

    local function getWarnHost(window)
        if window._PopupWarnHost and window._PopupWarnHost.Parent then
            return window._PopupWarnHost
        end
        local host = Instance.new("Frame")
        host.Name = "PopupWarnings"
        host.AnchorPoint = Vector2.new(0.5, 1)
        host.BackgroundTransparency = 1
        host.Position = UDim2.new(0.5, 0, 0.8, -40)
        host.Size = UDim2.new(0.5, 25, 0, 180)
        host.ZIndex = 980
        host.Parent = window.Screen

        local list = Instance.new("UIListLayout")
        list.FillDirection = Enum.FillDirection.Vertical
        list.HorizontalAlignment = Enum.HorizontalAlignment.Center
        list.VerticalAlignment = Enum.VerticalAlignment.Bottom
        list.Padding = UDim.new(0, 4)
        list.SortOrder = Enum.SortOrder.LayoutOrder
        list.Parent = host

        window._PopupWarnHost = host
        return host
    end

    local function makeWarning(host, settings)
        local group = Instance.new("CanvasGroup")
        group.Name = "Warn"
        group.BackgroundTransparency = 1
        group.Size = UDim2.new(1, 0, 0, 42)
        group.ZIndex = 981

        local shadow = Instance.new("ImageLabel")
        shadow.Name = "Shadow"
        shadow.AnchorPoint = Vector2.new(0.5, 0)
        shadow.BackgroundTransparency = 1
        shadow.Image = WARN_SHADOW
        shadow.ImageColor3 = Color3.new(0, 0, 0)
        shadow.ImageTransparency = 0.65
        shadow.Position = UDim2.new(0.5, 0, 0.15, 0)
        shadow.Size = UDim2.new(0.4, 0, 1, 0)
        shadow.ZIndex = 981
        shadow.Parent = group

        local frame = Instance.new("Frame")
        frame.Name = "Frame"
        frame.AnchorPoint = Vector2.new(0.5, 0)
        frame.BackgroundTransparency = 1
        frame.Position = UDim2.fromScale(0.5, 0)
        frame.Size = UDim2.fromScale(1, 1)
        frame.ZIndex = 982
        frame.Parent = group

        local list = Instance.new("UIListLayout")
        list.FillDirection = Enum.FillDirection.Horizontal
        list.HorizontalAlignment = Enum.HorizontalAlignment.Center
        list.VerticalAlignment = Enum.VerticalAlignment.Center
        list.Padding = UDim.new(0, 4)
        list.SortOrder = Enum.SortOrder.LayoutOrder
        list.Parent = frame

        local icon = Instance.new("ImageLabel")
        icon.Name = "Icon"
        icon.BackgroundTransparency = 1
        icon.Image = tostring(settings.Icon or WARN_ICON)
        icon.ImageColor3 = settings.IconColor or Color3.fromRGB(23, 43, 57)
        icon.LayoutOrder = 1
        icon.Size = UDim2.fromOffset(38, 38)
        icon.ZIndex = 982
        icon.Parent = frame
        local iconAspect = Instance.new("UIAspectRatioConstraint")
        iconAspect.AspectRatio = 1
        iconAspect.Parent = icon

        local label = textLabel(frame, "TextLabel", settings.Desc or "Something not good! Uh oh!", 982)
        label.AutomaticSize = Enum.AutomaticSize.X
        label.LayoutOrder = 2
        label.RichText = true
        label.Size = UDim2.new(0, 0, 1, 0)
        label.TextColor3 = settings.Color or Color3.fromRGB(255, 101, 101)
        label.TextStrokeColor3 = Color3.fromRGB(23, 43, 57)
        label.TextStrokeTransparency = 0
        label.TextWrapped = false

        local scale = Instance.new("UIScale")
        scale.Scale = 1.35
        scale.Parent = group
        local fade = Instance.new("UIGradient")
        fade.Rotation = 45
        fade.Transparency = NumberSequence.new(0)
        fade.Parent = group

        group.Parent = host
        TweenService:Create(scale, WARN_IN, {Scale = 1}):Play()
        return group, fade
    end

    local function fadeWarning(entry)
        if entry.Fading or not entry.Frame or not entry.Frame.Parent then
            return
        end
        entry.Fading = true
        task.spawn(function()
            local started = os.clock()
            repeat
                if not entry.Frame or not entry.Frame.Parent then
                    break
                end
                local alpha = math.clamp((os.clock() - started) / 0.35, 0, 1)
                local sineInOut = TweenService:GetValue(alpha, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                local sineOut = TweenService:GetValue(alpha, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                entry.Gradient.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, sineInOut),
                    NumberSequenceKeypoint.new(math.clamp(1 - alpha * 0.99, 0, 1), sineOut),
                    NumberSequenceKeypoint.new(1, sineOut),
                })
                RunService.RenderStepped:Wait()
            until os.clock() - started >= 0.35
            if entry.Frame and entry.Frame.Parent then
                entry.Frame:Destroy()
            end
            entry.Dead = true
        end)
    end

    local function startWarningWorker(window)
        if window._PopupWarnWorker then
            return
        end
        window._PopupWarnWorker = true
        task.spawn(function()
            local lastPush = 0
            while window.Screen and window.Screen.Parent do
                local queue = window._PopupWarnQueue or {}
                local active = window._PopupWarnActive or {}
                window._PopupWarnQueue = queue
                window._PopupWarnActive = active
                local now = os.clock()

                for index = #active, 1, -1 do
                    local entry = active[index]
                    if entry.Dead or not entry.Frame or not entry.Frame.Parent then
                        table.remove(active, index)
                    elseif not entry.Fading and (now - entry.Created >= entry.Time or (#queue > 0 and now - entry.Created >= 1.25)) then
                        fadeWarning(entry)
                    end
                end

                if #active < 3 and #queue > 0 and now - lastPush >= 0.1 then
                    lastPush = now
                    local request = table.remove(queue, 1)
                    local frame, gradient = makeWarning(getWarnHost(window), request.Settings)
                    local entry = {
                        Frame = frame,
                        Gradient = gradient,
                        Created = os.clock(),
                        Time = math.max(0.1, tonumber(request.Settings.Time) or 4),
                    }
                    request.Entry = entry
                    table.insert(active, entry)
                end

                if #queue == 0 and #active == 0 then
                    window._PopupWarnWorker = nil
                    return
                end
                task.wait(0.05)
            end
            window._PopupWarnWorker = nil
        end)
    end

    function Library:ErrorPopup(settings)
        if not self.Screen then
            return
        end
        settings = type(settings) == "table" and cloneTable(settings) or {Desc = tostring(settings or "Something not good! Uh oh!")}
        settings.Desc = tostring(settings.Desc or settings.Message or "Something not good! Uh oh!")
        self._PopupWarnQueue = self._PopupWarnQueue or {}
        self._PopupWarnActive = self._PopupWarnActive or {}
        if #self._PopupWarnQueue >= 20 then
            return
        end
        local request = {Settings = settings}
        table.insert(self._PopupWarnQueue, request)
        startWarningWorker(self)

        local handle = {}
        function handle:Dismiss()
            local entry = request.Entry
            if entry then
                fadeWarning(entry)
                return true
            end
            local index = table.find(self._Queue or {}, request)
            if index then
                table.remove(self._Queue, index)
                return true
            end
            return false
        end
        handle._Queue = self._PopupWarnQueue
        return handle
    end

    local function makeModal(window, settings, mode)
        local overlay = Instance.new("Frame")
        overlay.Name = "PopupMessage"
        overlay.Active = true
        overlay.BackgroundTransparency = 1
        overlay.Size = UDim2.fromScale(1, 1)
        overlay.ZIndex = 1000
        overlay.Parent = window.Screen

        local panel = Instance.new("Frame")
        panel.Name = "Frame"
        panel.AnchorPoint = Vector2.new(0.5, 0.5)
        panel.BackgroundColor3 = Color3.new(1, 1, 1)
        panel.BorderSizePixel = 0
        panel.Position = UDim2.fromScale(0.5, 0.5)
        panel.Size = UDim2.fromOffset(520, 416)
        panel.ZIndex = 1001
        panel.Parent = overlay
        corner(panel, 16)
        stroke(panel, 6, Color3.fromRGB(42, 43, 49), 0)

        local shadow = Instance.new("ImageLabel")
        shadow.Name = "shadow"
        shadow.AnchorPoint = Vector2.new(0.5, 0.5)
        shadow.BackgroundTransparency = 1
        shadow.Image = SHADOW_IMAGE
        shadow.ImageColor3 = Color3.new(0, 0, 0)
        shadow.ImageTransparency = 0.75
        shadow.Position = UDim2.fromScale(0.5, 0.5)
        shadow.Size = UDim2.new(1, 35, 1, 35)
        shadow.ZIndex = 1000
        shadow.Parent = panel

        local background = Instance.new("ImageLabel")
        background.Name = "background"
        background.AnchorPoint = Vector2.new(0, 1)
        background.BackgroundTransparency = 1
        background.Image = PANEL_PATTERN
        background.ImageColor3 = Color3.fromRGB(20, 58, 67)
        background.ImageTransparency = 0.95
        background.Position = UDim2.fromScale(0, 1)
        background.Size = UDim2.fromScale(1, 1)
        background.ZIndex = 1002
        background.Parent = panel
        corner(background, 16)

        local contents = Instance.new("Frame")
        contents.Name = "Contents"
        contents.BackgroundColor3 = Color3.new(1, 1, 1)
        contents.BorderSizePixel = 0
        contents.Size = UDim2.fromScale(1, 1)
        contents.ZIndex = 1001
        contents.Parent = panel
        corner(contents, 16)

        local top = Instance.new("Frame")
        top.Name = "Top"
        top.BackgroundColor3 = Color3.new(1, 1, 1)
        top.BorderSizePixel = 0
        top.Size = UDim2.fromScale(1, 0.15)
        top.ZIndex = 1002
        top.Parent = panel
        corner(top, 16)
        local topGradient = Instance.new("UIGradient")
        topGradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(55, 195, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(94, 239, 255)),
        })
        topGradient.Parent = top

        local title = textLabel(top, "Title", settings.Title or (settings.Error and "Oops!" or "Hey!"), 1003)
        title.AnchorPoint = Vector2.new(0.5, 0.5)
        title.Position = UDim2.fromScale(0.5, 0.5)
        title.Size = UDim2.fromScale(0.9, 0.675)
        title.TextColor3 = Color3.new(1, 1, 1)
        stroke(title, 2.9, Color3.new(0, 0, 0), 0)

        local desc = textLabel(contents, "Desc", settings.Desc or settings.Message or "", 1007)
        desc.AnchorPoint = Vector2.new(0.5, 0)
        desc.Position = UDim2.fromScale(0.5, 0.165)
        desc.Size = UDim2.fromScale(0.9, 0.55)
        desc.TextColor3 = Color3.fromRGB(42, 43, 49)

        local iconSource = settings.Icon or (settings.Error and ERROR_ICON or nil)
        if iconSource then
            desc.Size = UDim2.fromScale(0.85, 0.25)
            local icon = Instance.new("ImageLabel")
            icon.Name = "CustomIcon"
            icon.AnchorPoint = Vector2.new(0.5, 0)
            icon.BackgroundTransparency = 1
            icon.Image = tostring(iconSource)
            icon.ImageColor3 = settings.IconColor or Color3.new(1, 1, 1)
            icon.Position = UDim2.fromScale(0.5, 0.44)
            icon.ScaleType = Enum.ScaleType.Fit
            icon.Size = UDim2.fromScale(0.8, 0.235)
            icon.ZIndex = 1008
            icon.Parent = contents
        end

        local close
        if mode ~= "choice" or settings.CloseButton == true then
            close = makeButton(panel, "Close", "X", UDim2.fromScale(0.991, 0), RED, 1050)
            close.Size = UDim2.new(0, 45, 0, 45)
        end

        local buttons = {}
        if mode == "message" then
            buttons.Ok = makeButton(contents, "Ok", settings.OkText or "Ok!", UDim2.fromScale(0.5, 0.8641), GREEN)
        elseif mode == "confirm" then
            buttons.Yes, buttons.YesGradient = makeButton(contents, "Yes", settings.YesText or "Yes!", UDim2.fromScale(0.25, 0.8641), GREEN)
            buttons.No = makeButton(contents, "No", settings.NoText or "No", UDim2.fromScale(0.75, 0.8641), RED)
            if settings.TimedLock and tonumber(settings.TimedLock) and tonumber(settings.TimedLock) > 0 then
                buttons.Bar = makeCircularBar(buttons.Yes)
            end
        else
            local options = type(settings.Options) == "table" and settings.Options or {"Option 1", "Option 2"}
            buttons.Option1 = makeButton(contents, "Option1", tostring(options[1] or "Option 1"), UDim2.fromScale(0.25, 0.8641), BLUE)
            buttons.Option2 = makeButton(contents, "Option2", tostring(options[2] or "Option 2"), UDim2.fromScale(0.75, 0.8641), BLUE)
        end

        return overlay, buttons, close
    end

    local function showModal(window, settings, mode)
        if not window.Screen or window._PopupModalOpen then
            return nil
        end
        window._PopupModalOpen = true
        settings = type(settings) == "table" and cloneTable(settings) or {Desc = tostring(settings or "")}
        settings.Desc = tostring(settings.Desc or settings.Message or "")

        local overlay, buttons, close = makeModal(window, settings, mode)
        local done = Instance.new("BindableEvent")
        local result
        local finished = false
        local connections = {}
        local started = os.clock()

        local function finish(value)
            if finished then
                return
            end
            finished = true
            result = value
            safeCall(settings.Callback, value)
            done:Fire()
        end

        if close then
            table.insert(connections, close.Activated:Connect(function()
                finish(mode == "confirm" and false or nil)
            end))
        end
        if buttons.Ok then
            table.insert(connections, buttons.Ok.Activated:Connect(function()
                finish(nil)
            end))
        end
        if buttons.No then
            table.insert(connections, buttons.No.Activated:Connect(function()
                finish(false)
            end))
        end
        if buttons.Yes then
            table.insert(connections, buttons.Yes.Activated:Connect(function()
                local lock = tonumber(settings.TimedLock) or 0
                if os.clock() - started >= lock then
                    finish(true)
                end
            end))
        end
        if buttons.Option1 then
            table.insert(connections, buttons.Option1.Activated:Connect(function()
                finish(1)
            end))
            table.insert(connections, buttons.Option2.Activated:Connect(function()
                finish(2)
            end))
        end
        table.insert(connections, overlay.AncestryChanged:Connect(function(_, parent)
            if parent == nil then
                finish(mode == "confirm" and false or nil)
            end
        end))

        if buttons.Bar then
            buttons.Bar.Visible = true
            buttons.YesGradient.Color = GREY
            task.spawn(function()
                local duration = tonumber(settings.TimedLock) or 0
                while not finished and overlay.Parent do
                    local elapsed = os.clock() - started
                    setCircularProgress(buttons.Bar, 1 - math.clamp(elapsed, 0, duration) / duration)
                    if elapsed >= duration then
                        break
                    end
                    RunService.RenderStepped:Wait()
                end
                if buttons.Bar and buttons.Bar.Parent then
                    buttons.Bar.Visible = false
                end
                if buttons.YesGradient and buttons.YesGradient.Parent then
                    buttons.YesGradient.Color = GREEN
                end
            end)
        end

        done.Event:Wait()
        for _, connection in ipairs(connections) do
            connection:Disconnect()
        end
        if overlay.Parent then
            overlay:Destroy()
        end
        done:Destroy()
        window._PopupModalOpen = nil
        return result
    end

    function Library:MessagePopup(settings)
        return showModal(self, settings, "message")
    end

    function Library:ConfirmPopup(settings)
        return showModal(self, settings, "confirm")
    end

    function Library:ChoicePopup(settings)
        return showModal(self, settings, "choice")
    end

    local function augmentParent(parent, window)
        if type(parent) ~= "table" or parent.__PopupParentAugmented then
            return parent
        end
        parent.__PopupParentAugmented = true
        function parent:ErrorPopup(...)
            return window:ErrorPopup(...)
        end
        function parent:MessagePopup(...)
            return window:MessagePopup(...)
        end
        function parent:ConfirmPopup(...)
            return window:ConfirmPopup(...)
        end
        function parent:ChoicePopup(...)
            return window:ChoicePopup(...)
        end
        return parent
    end

    local BaseAddSection = Library.AddSection
    function Library:AddSection(...)
        return augmentParent(BaseAddSection(self, ...), self)
    end

    local BaseAddSubTab = Library.AddSubTab
    if type(BaseAddSubTab) == "function" then
        function Library:AddSubTab(...)
            return augmentParent(BaseAddSubTab(self, ...), self)
        end
    end

    local BaseCreateTab = Library.CreateTab
    function Library:CreateTab(...)
        return augmentParent(BaseCreateTab(self, ...), self)
    end

    Library.FeaturePack = Library.FeaturePack or {}
    Library.FeaturePack.Popup = true
    return Library
end

]================================================])()(Library)
loadstring([================================================[
return function(Library)
    if type(Library) ~= "table" then
        error("infooverlay.lua expected the necker Library table", 2)
    end
    if Library.__NeckerInfoOverlayInstalled then
        return Library
    end
    Library.__NeckerInfoOverlayInstalled = true

    local Players = game:GetService("Players")
    local TextService = game:GetService("TextService")
    local RunService = game:GetService("RunService")
    local GuiService = game:GetService("GuiService")
    local TweenService = game:GetService("TweenService")
    local SoundService = game:GetService("SoundService")
    local Debris = game:GetService("Debris")

    local Active
    local Connections = {}
    local FONT = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular)
    local FONT_ITALIC = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular, Enum.FontStyle.Italic)
    local FONT_BOLD = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Bold)
    local FONT_HEAVY = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Heavy)

    local function New(Class, Props, Parent)
        local Object = Instance.new(Class)
        for Key, Value in pairs(Props or {}) do
            Object[Key] = Value
        end
        Object.Parent = Parent
        return Object
    end

    local function Seq(Values)
        local Points = {}
        for Index = 1, #Values, 4 do
            table.insert(Points, ColorSequenceKeypoint.new(Values[Index], Color3.new(Values[Index + 1], Values[Index + 2], Values[Index + 3])))
        end
        return ColorSequence.new(Points)
    end

    local Rarities = {
        Basic = {DisplayName = "Basic", Gradient = Seq({0,.760784,.752941,.862745,1,.580392,.568627,.654902}), Rotation = 100},
        Rare = {DisplayName = "Rare", Gradient = Seq({0,.443137,1,.243137,1,.443137,1,.243137}), Rotation = 100},
        Epic = {DisplayName = "Epic", Gradient = Seq({0,.160784,.847059,1,1,.160784,.886275,1}), Rotation = 100},
        Legendary = {DisplayName = "Legendary", Gradient = Seq({0,1,.788235,.294118,1,1,.521569,.133333}), Rotation = 100},
        Mythical = {DisplayName = "Mythical", Gradient = Seq({0,1,.431373,.431373,1,1,.168627,.392157}), Rotation = 100},
        Exotic = {DisplayName = "Exotic", Gradient = Seq({0,1,.6,1,1,1,.113725,.984314}), Rotation = 100},
        Divine = {DisplayName = "Divine", Gradient = Seq({0,1,1,.6,1,1,.85098,.0980392}), Rotation = 100},
        Superior = {DisplayName = "Superior", Gradient = Seq({0,.784314,1,1,.5,.862745,1,1,1,.72549,1,1}), Rotation = 100},
        Celestial = {DisplayName = "Celestial", Gradient = Seq({0,.760784,1,.717647,.318339,.619608,.898039,1,.747405,1,.721569,.984314,1,1,.545098,.952941}), Rotation = -90},
        Secret = {DisplayName = "Secret", Gradient = Seq({0,.176471,.188235,.372549,.0155709,.176471,.188235,.372549,.0570934,.364706,.133333,.568627,.221453,.827451,.243137,.721569,.268166,1,.411765,.941176,.313149,.827451,.243137,.721569,.370242,.686275,.286275,.784314,1,.176471,.188235,.372549}), Rotation = -92, Offset = Vector2.new(0,-.1)},
        Exclusive = {DisplayName = "Exclusive", Gradient = Seq({0,.65098,.545098,1,1,.678431,.309804,1}), Rotation = 100, Star = true, Animated = true},
        ["Secret Exclusive"] = {DisplayName = "Secret Exclusive", Gradient = Seq({0,.176471,.188235,.372549,.0155709,.176471,.188235,.372549,.0570934,.364706,.133333,.568627,.221453,.827451,.243137,.721569,.268166,1,.411765,.941176,.313149,.827451,.243137,.721569,.370242,.686275,.286275,.784314,1,.176471,.188235,.372549}), Rotation = -92, Offset = Vector2.new(0,-.1), Star = true, Animated = true},
    }

    local SHINY = Seq({0,1,.945098,.717647,.202422,1,.87451,.698039,.479239,1,.835294,.933333,.754325,.756863,.85098,1,1,.980392,.690196,1})
    local EXCLUSIVE_SHINE = Seq({0,.972549,.960784,1,.250432,.972549,.960784,1,.411765,.996078,1,.968627,.595156,.909804,.988235,.992157,.768166,.972549,.960784,1,1,.972549,.960784,1})
    local EXCLUSIVE_OUTLINE = Seq({0,.411765,.227451,.623529,.141869,.411765,.227451,.623529,.247405,.552941,.317647,.866667,.358131,.411765,.227451,.623529,.455017,.411765,.227451,.623529,.544983,.552941,.317647,.866667,.638408,.411765,.227451,.623529,.757785,.411765,.227451,.623529,.8391,.552941,.317647,.866667,.923875,.411765,.227451,.623529,1,.411765,.227451,.623529})
    local SECRET_SHINE = Seq({0,.0941176,.101961,.196078,.0155709,.0941176,.101961,.196078,.0570934,.141176,.054902,.227451,.221453,.329412,.0941176,.290196,.268166,.4,.164706,.376471,.313149,.329412,.0941176,.290196,.370242,.27451,.117647,.313726,1,.0941176,.101961,.196078})
    local SECRET_OUTLINE = Seq({0,.176471,.188235,.372549,.112263,.364706,.133333,.568627,.34715,.827451,.243137,.721569,.614853,.686275,.286275,.784314,1,.176471,.188235,.372549})

    local function Disconnect()
        for _, Connection in ipairs(Connections) do
            Connection:Disconnect()
        end
        table.clear(Connections)
    end

    local function Remove()
        Disconnect()
        if Active then
            Active:Destroy()
            Active = nil
        end
    end

    local function Gradient(Parent, Value, Rotation, Offset, Name)
        local Object
        if typeof(Value) == "Instance" and Value:IsA("UIGradient") then
            Object = Value:Clone()
        else
            Object = Instance.new("UIGradient")
            if typeof(Value) == "ColorSequence" then
                Object.Color = Value
            elseif type(Value) == "table" then
                local Points = {}
                for Index, Color in ipairs(Value) do
                    if typeof(Color) == "Color3" then
                        table.insert(Points, ColorSequenceKeypoint.new((Index - 1) / math.max(1, #Value - 1), Color))
                    end
                end
                if #Points > 0 then
                    Object.Color = ColorSequence.new(Points)
                end
            end
        end
        if Name then Object.Name = Name end
        if Rotation ~= nil then Object.Rotation = Rotation end
        if typeof(Offset) == "Vector2" then Object.Offset = Offset end
        Object.Parent = Parent
        return Object
    end

    local function Stroke(Label, Color)
        return New("UIStroke", {Color = Color or Color3.fromRGB(76,76,76), LineJoinMode = Enum.LineJoinMode.Round, Thickness = 2}, Label)
    end

    local function ApplyGradient(Label, Value, Rotation, Offset, StrokeToo, Name)
        Label.TextColor3 = Color3.new(1,1,1)
        local Main = Gradient(Label, Value, Rotation, Offset, Name)
        local Outline
        if StrokeToo then
            Outline = Gradient(Label:FindFirstChildOfClass("UIStroke") or Stroke(Label), Value, Rotation, Offset, Name)
        end
        return Main, Outline
    end

    local function TextBlock(Name, Text, Height, Size, Color, Wrapped, Font)
        local Frame = New("Frame", {Name = Name, BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.new(1,0,0,Height), ZIndex = 1})
        local Label = New("TextLabel", {
            Name = Name == "Timer" and "timer" or "title",
            AnchorPoint = Vector2.new(.5,.5), BackgroundTransparency = 1, BorderSizePixel = 0,
            FontFace = Font or FONT, LineHeight = 1, Position = UDim2.fromScale(.5,.5), Size = UDim2.fromScale(1,1),
            Text = tostring(Text or ""), TextColor3 = Color, TextSize = Size, TextStrokeTransparency = 1,
            TextWrapped = Wrapped == true, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 1,
        }, Frame)
        return Frame, Label
    end

    local function Base()
        local Base = New("Frame", {Name = "Base", BackgroundTransparency = 1, BorderColor3 = Color3.fromRGB(27,42,53), BorderSizePixel = 1, Size = UDim2.fromOffset(150,300), Visible = false, ZIndex = 1})
        local Pointer = New("ImageLabel", {Name = "pointer", AnchorPoint = Vector2.new(1,1), BackgroundTransparency = 1, BorderSizePixel = 0, Image = "rbxassetid://7160794204", Position = UDim2.fromOffset(30,30), Size = UDim2.fromOffset(40,40), Visible = false, ZIndex = 1}, Base)
        New("ImageLabel", {Name = "pointer", AnchorPoint = Vector2.new(.5,.5), BackgroundTransparency = 1, BorderSizePixel = 0, Image = "rbxassetid://7160794204", ImageColor3 = Color3.fromRGB(59,177,252), Position = UDim2.fromScale(.5,.5), Size = UDim2.new(1,15,1,15), ZIndex = -1}, Pointer)
        local Scale = New("UIScale", {Name = "UIScale", Scale = 1}, Base)
        local Frame = New("Frame", {Name = "Frame", BackgroundColor3 = Color3.new(1,1,1), BorderSizePixel = 0, Size = UDim2.fromScale(1,1), ZIndex = 0}, Base)
        local FrameStroke = New("UIStroke", {Name = "UIStroke", Color = Color3.fromRGB(42,43,49), Thickness = 3}, Frame)
        local Holder = New("Frame", {Name = "Blocks", BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.fromScale(1,1), ZIndex = 1}, Frame)
        New("UIListLayout", {FillDirection = Enum.FillDirection.Vertical, HorizontalAlignment = Enum.HorizontalAlignment.Center, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0,3), SortOrder = Enum.SortOrder.LayoutOrder}, Holder)
        New("UIPadding", {PaddingBottom = UDim.new(0,6), PaddingLeft = UDim.new(0,16), PaddingRight = UDim.new(0,16), PaddingTop = UDim.new(0,6)}, Holder)
        local Corner = New("UICorner", {CornerRadius = UDim.new(.05,0)}, Frame)
        local Background = New("ImageLabel", {Name = "background", AnchorPoint = Vector2.new(0,1), BackgroundTransparency = 1, BorderSizePixel = 0, Image = "rbxassetid://13581793331", ImageColor3 = Color3.fromRGB(20,58,67), ImageTransparency = .95, Position = UDim2.fromScale(0,1), ScaleType = Enum.ScaleType.Tile, Size = UDim2.fromScale(1,1), TileSize = UDim2.fromOffset(171,135), ZIndex = 0}, Frame)
        New("UIGradient", {Rotation = -90, Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,0),NumberSequenceKeypoint.new(.310087,.39375),NumberSequenceKeypoint.new(.495641,.59375),NumberSequenceKeypoint.new(.738481,.825),NumberSequenceKeypoint.new(1,1)})}, Background)
        New("UICorner", {CornerRadius = UDim.new(.035,0)}, Background)
        New("ImageLabel", {Name = "shadow", AnchorPoint = Vector2.new(.5,.5), BackgroundTransparency = 1, BorderColor3 = Color3.new(0,0,0), BorderSizePixel = 0, Image = "rbxassetid://14001321443", ImageColor3 = Color3.new(0,0,0), ImageTransparency = .85, Position = UDim2.fromScale(.5,.5), ScaleType = Enum.ScaleType.Slice, SliceCenter = Rect.new(50,50,150,150), SliceScale = .8, Size = UDim2.new(1,35,1,35), ZIndex = -1}, Base)
        return Base, Frame, Holder, Corner, Scale, FrameStroke
    end

    local Blocks = {}

    Blocks.Title = function(Data)
        local Frame, Label = TextBlock("Title", Data[2], 32, 32, Color3.fromRGB(42,43,49), true, FONT)
        if Data[3] == "Mythical" then ApplyGradient(Label, Rarities.Mythical.Gradient, 100) end
        if Data[4] then Label.TextColor3 = Color3.new(1,1,1) end
        if Data[5] then Label.AutoLocalize = false Label.Text = Label.Text:gsub("%S", "?") end
        return Frame, Label, 65, 250
    end

    Blocks.Nickname = function(Data)
        local Frame, Label = TextBlock("Nickname", Data[2], 20, 20, Color3.fromRGB(130,130,130), false, FONT_ITALIC)
        return Frame, Label, 65, 150
    end

    Blocks.Rarity = function(Data)
        local Value = Data[2]
        local Table = type(Data[3]) == "table" and Data[3] or Rarities
        local Name = type(Value) == "table" and tostring(Value.Name or Value.Rarity or "Basic") or tostring(Value or "Basic")
        local Style = type(Value) == "table" and Value or Table[Name] or Rarities[Name] or {DisplayName = Name}
        local Text = tostring(Style.DisplayName or Name)
        if Style.Star == true or Name == "Exclusive" or Name == "Secret Exclusive" then Text ..= "  ★" end
        local Frame, Label = TextBlock("Rarity", Text, 22, 22, Color3.new(1,1,1), true, FONT_HEAVY)
        Stroke(Label)
        local Main, Outline
        if Style.Gradient or Style.Colors then
            Main, Outline = ApplyGradient(Label, Style.Gradient or Style.Colors, Style.Rotation, Style.Offset, true, "Tier Gradient")
        elseif typeof(Style.Color) == "Color3" then
            Label.TextColor3 = Style.Color
        end
        local Started = os.clock()
        local Render = Style.Animated and Main and function()
            local Time = os.clock() - Started
            Main.Rotation = 100 + Time * 100
            if Outline then Outline.Rotation = 100 - Time * 100 end
        end or nil
        return Frame, Label, 65, 300, nil, Render
    end

    Blocks.Rainbow = function()
        local Frame, Label = TextBlock("Rainbow", "Rainbow", 22, 22, Color3.new(1,1,1), true, FONT_HEAVY)
        Stroke(Label)
        local Main, Outline = ApplyGradient(Label, Seq({0,1,.890196,.0745098,1,.945098,1,.458824}), 0, nil, true, "Gradient")
        return Frame, Label, 65, 200, nil, function()
            local Color = Color3.fromHSV(os.clock() % 3 / 3, .65, 1)
            Main.Color = ColorSequence.new(Color)
            Outline.Color = ColorSequence.new(Color)
        end
    end

    Blocks.Shiny = function()
        local Frame, Label = TextBlock("Shiny", "Shiny", 22, 22, Color3.new(1,1,1), true, FONT_HEAVY)
        Stroke(Label)
        ApplyGradient(Label, SHINY, 105, nil, false, "ShinyGradient")
        return Frame, Label, 65, 300
    end

    Blocks.Desc = function(Data)
        local Frame, Label = TextBlock("Desc", Data[2], 20, 20, Color3.fromRGB(130,130,130), true, FONT)
        if Data[3] == "Mythical" then ApplyGradient(Label, Rarities.Mythical.Gradient, 100) end
        if Data[4] then Label.TextColor3 = Color3.fromRGB(210,210,210) end
        if Data[5] then Label.AutoLocalize = false Label.Text = Label.Text:gsub("%S", "?") end
        return Frame, Label, 65, 175
    end

    Blocks.Div = function(Data)
        local Frame = New("Frame", {Name = "Div", BackgroundTransparency = 1, BorderSizePixel = 1, Size = UDim2.new(1,0,0,15), ZIndex = 1})
        local Div = New("Frame", {Name = "Frame", AnchorPoint = Vector2.new(0,.5), BackgroundColor3 = Data[2] and Color3.new(1,1,1) or Color3.new(0,0,0), BackgroundTransparency = Data[2] and 0 or .9, BorderColor3 = Data[2] and Color3.fromRGB(210,210,210) or Color3.fromRGB(27,42,53), BorderSizePixel = 1, Position = UDim2.fromScale(0,.5), Size = UDim2.new(1,0,0,1), ZIndex = 2}, Frame)
        New("UIGradient", {Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0,1),NumberSequenceKeypoint.new(.190535,.3875),NumberSequenceKeypoint.new(.501868,0),NumberSequenceKeypoint.new(.789539,.36875),NumberSequenceKeypoint.new(1,1)})}, Div)
        return Frame
    end

    Blocks.Info = function(Data)
        local Frame, Label = TextBlock("Info", Data[2], 20, 20, Color3.fromRGB(130,130,130), false, FONT)
        if Data[3] then Label.TextColor3 = Color3.new(1,1,1) end
        if Data[4] then Label.AutoLocalize = false Label.Text = Label.Text:gsub("%S", "?") end
        return Frame, Label, 65, 150
    end

    local function MessageBlock(Name, Data, Color, Height)
        local Frame, Label = TextBlock(Name, Data[2], Height, 20, Color, true, FONT)
        if Data[3] == "Mythical" or Data[3] == "Exclusive" then
            local Style = Rarities[Data[3]]
            ApplyGradient(Label, Style.Gradient, Style.Rotation, Style.Offset)
        end
        if Data[4] then Label.TextColor3 = Color3.new(1,1,1) end
        return Frame, Label, 65, 175
    end

    Blocks.Message = function(Data) return MessageBlock("Message", Data, Color3.fromRGB(130,130,130), 20) end
    Blocks.MessageDark = function(Data) return MessageBlock("MessageDark", Data, Color3.fromRGB(42,43,49), 21) end

    Blocks.Hidden = function(Data)
        local Frame, Label = TextBlock("Hidden", Data[2] == true and "Hidden" or tostring(Data[2] or "Hidden"), 20, 20, Color3.fromRGB(221,20,20), false, FONT_BOLD)
        return Frame, Label, 65, 150
    end

    local function TradeBlock(Name, Text, Color, Image)
        local Frame = New("Frame", {Name = Name, BackgroundTransparency = 1, BorderSizePixel = 0, Size = UDim2.new(1,0,0,25), ZIndex = 1})
        New("UIListLayout", {FillDirection = Enum.FillDirection.Horizontal, HorizontalAlignment = Enum.HorizontalAlignment.Center, VerticalAlignment = Enum.VerticalAlignment.Center, Padding = UDim.new(0,5), SortOrder = Enum.SortOrder.LayoutOrder}, Frame)
        local Icon = New("ImageLabel", {Name = "ImageLabel", BackgroundTransparency = 1, BorderSizePixel = 0, Image = Image, ImageColor3 = Color, LayoutOrder = 1, ScaleType = Enum.ScaleType.Fit, Size = UDim2.fromOffset(25,25), ZIndex = 1}, Frame)
        New("UIAspectRatioConstraint", {AspectRatio = 1}, Icon)
        local Label = New("TextLabel", {Name = "title", AutomaticSize = Enum.AutomaticSize.X, BackgroundTransparency = 1, BorderSizePixel = 0, FontFace = FONT, LayoutOrder = 2, Size = UDim2.new(0,0,1,0), Text = Text, TextColor3 = Color, TextSize = 23, TextStrokeTransparency = 1, TextWrapped = false, TextXAlignment = Enum.TextXAlignment.Center, TextYAlignment = Enum.TextYAlignment.Center, ZIndex = 2}, Frame)
        return Frame, Label, 149, 150
    end

    Blocks.Tradable = function() return TradeBlock("Tradable", "Tradable", Color3.fromRGB(42,221,102), "rbxassetid://9883445072") end
    Blocks.NotTradable = function() return TradeBlock("NotTradable", "Untradable", Color3.fromRGB(221,42,42), "rbxassetid://15331642883") end

    Blocks.Deal = function(Data)
        local Value = tonumber(Data[2]) or 0
        local Text, Color = "Bad Deal", Color3.fromRGB(254,79,82)
        if Value == 1 then Text, Color = "Good Deal", Color3.fromRGB(129,253,255) elseif Value == 2 then Text, Color = "Great Deal!", Color3.fromRGB(113,255,62) end
        local Frame, Label = TextBlock("Deal", Text, 20, 16, Color, true, FONT)
        Stroke(Label, Color3.new(0,0,0))
        return Frame, Label, 65, 200
    end

    local function NumberShorten(Value)
        Value = tonumber(Value) or 0
        for _, Entry in ipairs({{1e15,"q"},{1e12,"t"},{1e9,"b"},{1e6,"m"},{1e3,"k"}}) do
            if math.abs(Value) >= Entry[1] then
                local Number = Value / Entry[1]
                return string.format(Number >= 100 and "%.0f" or Number >= 10 and "%.1f" or "%.2f", Number):gsub("%.?0+$", "") .. Entry[2]
            end
        end
        return tostring(math.floor(Value))
    end

    Blocks.Exists = function(Data)
        local Count = tonumber(Data[2]) or 0
        local Frame, Label = TextBlock("Exists", NumberShorten(Count) .. (Count == 1 and " Exists" or " Exist"), 20, 20, (Data[4] or Data[3]) and Color3.new(1,1,1) or Color3.fromRGB(42,43,49), false, FONT)
        Label.AutomaticSize = Enum.AutomaticSize.X
        return Frame, Label, 65, 200
    end

    Blocks.Empowered = function(Data)
        local Frame, Label = TextBlock("Empowered", "Empowered", 22, 22, Color3.fromRGB(253,194,255), false, FONT_HEAVY)
        Stroke(Label)
        ApplyGradient(Label, Seq({0,1,.890196,.0745098,1,.945098,1,.458824}), 0, nil, true, "Gradient")
        local Value = Data[2]
        local function Update()
            local Remaining
            if type(Value) == "function" then
                Remaining = tonumber(Value()) or 0
            elseif type(Value) == "table" and tonumber(Value.Expires) then
                Remaining = Value.Expires - workspace:GetServerTimeNow()
            elseif tonumber(Value) then
                local Number = tonumber(Value)
                if Number > 100000000000 then Remaining = math.huge elseif Number > workspace:GetServerTimeNow() then Remaining = Number - workspace:GetServerTimeNow() else Remaining = Number end
            else
                Remaining = math.huge
            end
            if Remaining == math.huge or Remaining > 100000000000 then
                Label.Text = "Empowered"
            else
                Remaining = math.max(0, math.floor(Remaining))
                Label.Text = string.format("Empowered: %02d:%02d:%02d", math.floor(Remaining / 3600), math.floor(Remaining % 3600 / 60), Remaining % 60)
            end
        end
        Update()
        return Frame, Label, 65, 200, Update
    end

    Blocks.Timer = function(Data)
        local Frame, Label = TextBlock("Timer", "", 20, 20, Color3.fromRGB(71,184,255), false, FONT)
        local Value = Data[2]
        local function Update()
            local Number = math.max(0, math.floor(tonumber(type(Value) == "function" and Value() or Value) or 0))
            if Number == 0 then
                Label.Text = "EXPIRED"
            elseif Data[3] then
                local Text = tostring(Number)
                Label.Text = Text:reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", "") .. "x"
            elseif Number < 86400 then
                Label.Text = os.date("!%X", Number)
            else
                Label.Text = string.format("%dd %02d:%02d:%02d", math.floor(Number / 86400), math.floor(Number % 86400 / 3600), math.floor(Number % 3600 / 60), Number % 60)
            end
        end
        Update()
        return Frame, Label, 65, 200, Update
    end

    Blocks.UpdatingDesc = function(Data)
        local Frame, Label = TextBlock("UpdatingDesc", "", 20, 20, Color3.fromRGB(130,130,130), true, FONT)
        Label.RichText = true
        local Callback = type(Data[2]) == "function" and Data[2] or function() return Data[2] end
        local Update = function() Label.Text = tostring(Callback() or "") end
        Update()
        return Frame, Label, 65, 175, Update
    end

    Blocks.GradientText = function(Data)
        local Frame, Label = TextBlock("GradientText", Data[2], 22, 22, Color3.new(1,1,1), true, FONT_HEAVY)
        Stroke(Label)
        if Data[3] then ApplyGradient(Label, Data[3], nil, nil, true) end
        return Frame, Label, 65, 200
    end

    local function Block(Type, Value, Extra)
        if Type == "Title" then
            return type(Value) == "table" and {"Title", Value.Text or Value.Title or "", Value.Rarity, Value.White == true, Value.Magic == true} or {"Title", Value}
        elseif Type == "Nickname" then
            return {"Nickname", type(Value) == "table" and (Value.Text or "") or Value}
        elseif Type == "Rarity" then
            return {"Rarity", Value, Extra}
        elseif Type == "Rainbow" or Type == "Shiny" or Type == "Hidden" then
            return {Type, Value}
        elseif Type == "Desc" then
            return type(Value) == "table" and {"Desc", Value.Text or "", Value.Rarity, Value.White == true, Value.Magic == true} or {"Desc", Value}
        elseif Type == "Div" then
            return {"Div", type(Value) == "table" and Value.White == true or false}
        elseif Type == "Info" then
            return type(Value) == "table" and Value.Text ~= nil and {"Info", Value.Text, Value.White == true, Value.Magic == true} or {"Info", Value}
        elseif Type == "Message" or Type == "MessageDark" then
            return type(Value) == "table" and {Type, Value.Text or "", Value.Rarity, Value.White == true} or {Type, Value}
        elseif Type == "Tradable" then
            return {"Tradable"}
        elseif Type == "NotTradable" then
            return {"NotTradable"}
        elseif Type == "Deal" then
            return {"Deal", Value}
        elseif Type == "Exists" then
            return type(Value) == "table" and {"Exists", Value.Count or Value.Value or 0, nil, Value.White == true} or {"Exists", Value}
        elseif Type == "Empowered" then
            return {"Empowered", Value}
        elseif Type == "Timer" then
            return type(Value) == "table" and {"Timer", Value.Value or Value.Callback or 0, Value.Multiplier == true} or {"Timer", Value}
        elseif Type == "UpdatingDesc" then
            return {"UpdatingDesc", Value}
        elseif Type == "GradientText" then
            return type(Value) == "table" and {"GradientText", Value.Text or "", Value.Gradient or Value.Colors} or {"GradientText", Value}
        end
    end

    local function AddProp(Result, Type, Value, Extra)
        if Value == nil or Value == false then return end
        if (Type == "Info" or Type == "Message" or Type == "MessageDark") and type(Value) == "table" and Value.Text == nil and Value[1] ~= nil then
            for _, Entry in ipairs(Value) do
                local Item = Block(Type, Entry, Extra)
                if Item then table.insert(Result, Item) end
            end
            return
        end
        local Item = Block(Type, Value, Extra)
        if Item then table.insert(Result, Item) end
    end

    local function Normalize(Data)
        if type(Data) ~= "table" then return {} end
        if type(Data[1]) == "table" then return Data end
        local Result = {}
        AddProp(Result, "Title", Data.Title)
        AddProp(Result, "Nickname", Data.Nickname)
        AddProp(Result, "Rarity", Data.Rarity, Data.RarityTable)
        AddProp(Result, "Rainbow", Data.Rainbow)
        AddProp(Result, "Shiny", Data.Shiny)
        AddProp(Result, "Desc", Data.Desc)
        AddProp(Result, "Div", Data.Div)
        AddProp(Result, "Info", Data.Info)
        AddProp(Result, "Message", Data.Message)
        AddProp(Result, "MessageDark", Data.MessageDark)
        AddProp(Result, "Hidden", Data.Hidden)
        AddProp(Result, "Tradable", Data.Tradable)
        AddProp(Result, "NotTradable", Data.NotTradable)
        AddProp(Result, "Deal", Data.Deal)
        AddProp(Result, "Exists", Data.Exists)
        AddProp(Result, "Empowered", Data.Empowered)
        AddProp(Result, "Timer", Data.Timer)
        AddProp(Result, "UpdatingDesc", Data.UpdatingDesc)
        AddProp(Result, "GradientText", Data.GradientText)
        for _, Item in ipairs(Data.Blocks or {}) do
            if type(Item) == "table" and Item[1] then
                table.insert(Result, Item)
            elseif type(Item) == "table" and Item.Type then
                local Parsed = Block(Item.Type, Item.Value ~= nil and Item.Value or Item.Text or Item, Data.RarityTable)
                if Parsed then table.insert(Result, Parsed) end
            end
        end
        return Result
    end

    local function GetScreen(Window)
        if Window._InfoOverlayScreen and Window._InfoOverlayScreen.Parent then return Window._InfoOverlayScreen end
        local Screen = New("ScreenGui", {Name = "InfoOverlay", DisplayOrder = 10000, ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Global}, Window.Screen and Window.Screen.Parent or Players.LocalPlayer:WaitForChild("PlayerGui"))
        Window._InfoOverlayScreen = Screen
        if Window.Screen then
            Window._InfoOverlayScreenConnection = Window.Screen.Destroying:Connect(function()
                if Screen.Parent then Screen:Destroy() end
            end)
        end
        return Screen
    end

    local function AddShine(Frame, FrameStroke, RarityName, Metas)
        if RarityName ~= "Exclusive" and RarityName ~= "Secret Exclusive" then return end
        FrameStroke.Color = Color3.new(1,1,1)
        local Shine, Outline, Speed
        if RarityName == "Secret Exclusive" then
            Shine = Gradient(Frame, SECRET_SHINE, -45, Vector2.new(0,-1.25), "SecretExclusiveShine")
            Outline = Gradient(FrameStroke, SECRET_OUTLINE, -92, Vector2.new(0,-.1), "SecretExclusiveShineOutline")
            Speed = 50
        else
            Shine = Gradient(Frame, EXCLUSIVE_SHINE, 45, Vector2.new(0,-1.25), "ExclusiveShine")
            Outline = Gradient(FrameStroke, EXCLUSIVE_OUTLINE, 50, nil, "ExclusiveShineOutline")
            Speed = 100
        end
        TweenService:Create(Shine, TweenInfo.new(.75, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Offset = Vector2.new(0,2)}):Play()
        local Started = os.clock()
        table.insert(Metas, {Render = function() Outline.Rotation = 100 + (os.clock() - Started) * Speed end})
    end

    local function Add(Window, Target, Data)
        Remove()
        Data = Normalize(Data)
        local Overlay, MainFrame, Holder, Corner, Scale, FrameStroke = Base()
        local Metas = {}
        local RarityName

        local function UpdateSize()
            local Width, Height, Count = 0, 12, 0
            for _, Meta in ipairs(Metas) do
                if Meta.Frame then
                    Count += 1
                    local BlockHeight = Meta.Height or Meta.Frame.Size.Y.Offset
                    if Meta.Label then
                        local Bounds = TextService:GetTextSize(Meta.Label.ContentText, Meta.Label.TextSize, Enum.Font.Arial, Vector2.new(Meta.MaxWidth or 200, 1000))
                        local TextWidth, TextHeight = Bounds.X + 10, Bounds.Y + 1
                        local LabelStroke = Meta.Label:FindFirstChildOfClass("UIStroke")
                        local StrokeSize = LabelStroke and LabelStroke.Thickness * 2 or 0
                        Width = math.max(Width, math.clamp(TextWidth + StrokeSize, Meta.MinWidth or 0, Meta.MaxWidth or math.huge))
                        BlockHeight = math.max(BlockHeight, TextHeight) + StrokeSize
                        if Meta.Label.AutomaticSize ~= Enum.AutomaticSize.X then Meta.Label.Size = UDim2.fromOffset(TextWidth, TextHeight) end
                        Meta.Frame.Size = UDim2.new(1,0,0,BlockHeight)
                    elseif Meta.MinWidth then
                        Width = math.max(Width, Meta.MinWidth)
                    end
                    Height += BlockHeight
                end
            end
            Height += math.max(0, Count - 1) * 3
            Overlay.Size = UDim2.fromOffset(Width + 32, math.max(12, Height))
            Corner.CornerRadius = UDim.new(Count == 1 and .15 or .05, 0)
            local Camera = workspace.CurrentCamera
            if Camera then
                local ResolutionScale = math.clamp(Camera.ViewportSize.Y / 1080, .33, 2)
                Scale.Scale = 1 - (1 - math.min(ResolutionScale, 1)) / 1.5
            end
        end

        for Index, BlockData in ipairs(Data) do
            local Builder = type(BlockData) == "table" and Blocks[BlockData[1]]
            if Builder then
                local Frame, Label, MinWidth, MaxWidth, Update, Render = Builder(BlockData)
                Frame.LayoutOrder = Index * 100
                Frame.Parent = Holder
                table.insert(Metas, {Frame = Frame, Label = Label, Height = Frame.Size.Y.Offset, MinWidth = MinWidth, MaxWidth = MaxWidth, Update = Update, Render = Render})
                if BlockData[1] == "Rarity" then
                    RarityName = type(BlockData[2]) == "table" and tostring(BlockData[2].Name or BlockData[2].Rarity or "") or tostring(BlockData[2] or "")
                end
            end
        end
        if #Metas == 0 then Overlay:Destroy() return nil end

        AddShine(MainFrame, FrameStroke, RarityName, Metas)
        UpdateSize()
        Overlay.Parent = GetScreen(Window)
        Active = Overlay

        local Sound = New("Sound", {SoundId = "rbxassetid://6907626084", Volume = .2}, SoundService)
        Sound:Play()
        Debris:AddItem(Sound, 3)

        table.insert(Connections, Target.MouseLeave:Connect(function() if GuiService.SelectedObject ~= Target then Remove() end end))
        table.insert(Connections, Target.SelectionLost:Connect(Remove))
        table.insert(Connections, Target.Destroying:Connect(Remove))

        local LastUpdate = 0
        table.insert(Connections, RunService.RenderStepped:Connect(function()
            if Active ~= Overlay or not Overlay.Parent then return end
            local Now, Resize = os.clock(), false
            for _, Meta in ipairs(Metas) do
                if Meta.Render then Meta.Render() end
                if Meta.Update and Now - LastUpdate >= .1 then Meta.Update() Resize = true end
            end
            if Now - LastUpdate >= .1 then LastUpdate = Now end
            if Resize then UpdateSize() end

            local Camera = workspace.CurrentCamera
            if not Camera then return end
            local Mouse = Players.LocalPlayer:GetMouse()
            local X, Y = Mouse.X, Mouse.Y
            if GuiService.SelectedObject == Target then
                X = Target.AbsolutePosition.X + Target.AbsoluteSize.X * .5
                Y = Target.AbsolutePosition.Y + Target.AbsoluteSize.Y * .5
            end
            local GuiInset = GuiService:GetGuiInset()
            local Size = Overlay.AbsoluteSize
            local MaxY = Camera.ViewportSize.Y - GuiInset.Y
            local Up = Y + Size.Y + 10 >= MaxY and Y - Size.Y - 10 > 0
            Overlay.AnchorPoint = Vector2.new(0, Up and 1 or 0)
            Overlay.Position = UDim2.fromOffset(
                math.clamp(X + 10, 0, math.max(0, Camera.ViewportSize.X - GuiInset.X - Size.X)),
                math.clamp(Y + (Up and -10 or 10), 0, math.max(0, MaxY + (Up and Size.Y or -Size.Y)))
            )
            if not Overlay.Visible then Overlay.Visible = true end
        end))
        return Overlay
    end

    function Library:InfoOverlay(Target, Data)
        assert(typeof(Target) == "Instance" and Target:IsA("GuiObject"), "InfoOverlay target must be a GuiObject")
        assert(type(Data) == "table", "InfoOverlay data must be a table")
        local MouseEnter = Target.MouseEnter:Connect(function() Add(self, Target, Data) end)
        local SelectionGained = Target.SelectionGained:Connect(function() Add(self, Target, Data) end)
        return function()
            MouseEnter:Disconnect()
            SelectionGained:Disconnect()
            if Active then Remove() end
        end
    end

    function Library:DynamicInfoOverlay(Target, Callback)
        assert(typeof(Target) == "Instance" and Target:IsA("GuiObject"), "DynamicInfoOverlay target must be a GuiObject")
        assert(type(Callback) == "function", "DynamicInfoOverlay callback must be a function")
        local function Show()
            local Data = Callback()
            if type(Data) == "table" and next(Data) then Add(self, Target, Data) end
        end
        local MouseEnter = Target.MouseEnter:Connect(Show)
        local SelectionGained = Target.SelectionGained:Connect(Show)
        return function()
            MouseEnter:Disconnect()
            SelectionGained:Disconnect()
            if Active then Remove() end
        end
    end

    function Library:RemoveInfoOverlay()
        Remove()
    end

    function Library:IsInfoOverlayActive()
        return Active ~= nil
    end

    return Library
end

]================================================])()(Library)


function Library:AddDiv()
    local row = Instance.new("Frame")
    row.Name = "Div"
    row.BackgroundColor3 = Color3.new(1, 1, 1)
    row.BackgroundTransparency = 1
    row.BorderColor3 = Color3.new(0.105882362, 0.164705887, 0.207843155)
    row.BorderSizePixel = 1
    row.Size = UDim2.new(1, 0, 0, 35)
    row.ZIndex = 1

    local line = Instance.new("Frame")
    line.Name = "Frame"
    line.AnchorPoint = Vector2.new(0, 0.5)
    line.BackgroundColor3 = Color3.new(0, 0, 0)
    line.BackgroundTransparency = 0.875
    line.BorderColor3 = Color3.new(0.105882362, 0.164705887, 0.207843155)
    line.BorderSizePixel = 1
    line.Position = UDim2.new(0, 0, 0.5, 0)
    line.Size = UDim2.new(1, 0, 0, 1)
    line.ZIndex = 2
    line.Parent = row

    local gradient = Instance.new("UIGradient")
    gradient.Color = ColorSequence.new(Color3.new(1, 1, 1))
    gradient.Offset = Vector2.new(0, 0)
    gradient.Rotation = 0
    gradient.Transparency = NumberSequence.new({
        NumberSequenceKeypoint.new(0, 1),
        NumberSequenceKeypoint.new(0.1905, 0.3875),
        NumberSequenceKeypoint.new(0.5019, 0),
        NumberSequenceKeypoint.new(0.7895, 0.36875),
        NumberSequenceKeypoint.new(1, 1),
    })
    gradient.Parent = line

    return self:_mount(row, "Div", "")
end

local BaseAddSectionDiv = Library.AddSection
function Library:AddSection(...)
    local section = BaseAddSectionDiv(self, ...)
    function section:AddDiv()
        return self:_add("AddDiv")
    end
    return section
end

local BaseAddSubTabDiv = Library.AddSubTab
if type(BaseAddSubTabDiv) == "function" then
    function Library:AddSubTab(...)
        local subTab = BaseAddSubTabDiv(self, ...)
        function subTab:AddDiv()
            return self:_add("AddDiv")
        end
        return subTab
    end
end

local BaseCreateTabDiv = Library.CreateTab
function Library:CreateTab(...)
    local tab = BaseCreateTabDiv(self, ...)
    function tab:AddDiv()
        return self.Window:_withTab(self.Name, "AddDiv")
    end
    return tab
end

return Library
