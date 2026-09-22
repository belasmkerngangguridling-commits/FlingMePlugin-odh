local shared = odh_shared_plugins

if not shared or type(shared.CreateTab) ~= "function" then
	warn("[FlingMe] Load through the current Overdrive H plugin menu.")
	return
end

local ok, my_own_tab = pcall(function()
	return shared.CreateTab("FlingMe", "/belasmkerngangguridling-commits/FlingMePlugin-odh/blob/main/FlingMeIcon.png")
end)

if not ok or not my_own_tab then
	warn("[Fling Me] CreateTab failed: " .. tostring(my_own_tab))
	return
end

local ok2, my_own_section = pcall(function()
	return my_own_tab:AddSection("Fling Me Power")
end)

if not ok2 or not my_own_section then
	warn("[FlingMe] AddSection failed: " .. tostring(my_own_section))
	return
end

my_own_section:AddLabel("Made by: Candlesboy")
my_own_section:AddParagraph("Fling Power", "Set your Power to Fling.")
