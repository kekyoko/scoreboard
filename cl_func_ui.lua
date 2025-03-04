-- function create_fonts()
--     for s = 1, 150 do
--         surface.CreateFont("SUP." .. s, {
--             font = "Mont",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont." .. s, {
--             font = "Mont",
--             size = ResponsiveX(s),
--             weight = 1000,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.Black." .. s, {
--             font = "Mont Black",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.Black.Italic." .. s, {
--             font = "Mont Black Italic",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.Bold." .. s, {
--             font = "Mont Bold",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.ExtraLight." .. s, {
--             font = "Mont ExtraLight",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.Heavy." .. s, {
--             font = "Mont Heavy",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.Light." .. s, {
--             font = "Mont Light",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.SemiBold." .. s, {
--             font = "Mont SemiBold",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--         surface.CreateFont("SUP.Mont.Thin." .. s, {
--             font = "Mont Thin",
--             size = ResponsiveX(s),
--             weight = 100,
--             extended = true,
--         })
--     end
-- end
-- create_fonts()

local PANEL = {}
function PANEL:Paint(w, h) end
function PANEL:AddSubMenu()
	local SubMenu = vgui.Create("UPMenu", self)
		SubMenu:SetVisible(false)
		SubMenu:SetParent(self)
	self:SetSubMenu(SubMenu)
	return SubMenu
end
derma.DefineControl("UPMenuOption", "Опции", PANEL, "DMenuOption")

local PANEL = {}
function PANEL:Paint(w, h)
	surface.SetDrawColor(Color(255, 255, 255, 0))
	surface.DrawRect(0, 0, w, h)
end

function PANEL:AddOption(strText, funcFunction)
	local pnl = vgui.Create("UPMenuOption", self)
	pnl:SetMenu(self)
	pnl:SetText(strText)
	pnl:SetTextColor(color_white)
	if (funcFunction) then pnl.DoClick = funcFunction end
	pnl.Paint = function(slf, w, h)
		if slf:IsHovered() then
			surface.SetDrawColor(Color(0, 0, 0, 0))
			surface.DrawRect(0, 0, w, h)
		end
	end
	self:AddPanel(pnl)
	return pnl
end

function PANEL:AddSubMenu(strText, funcFunction)
	local pnl = vgui.Create("UPMenuOption", self)
	local SubMenu = pnl:AddSubMenu(strText, funcFunction)
	pnl:SetText(strText)
	pnl:SetTextColor(color_white)
	if (funcFunction) then pnl.DoClick = funcFunction end
	pnl.Paint = function(slf, w, h)
		if slf:IsHovered() then
			surface.SetDrawColor(Color(0, 0, 0, 0))
			surface.DrawRect(0, 0, w, h)
		end
	end
	self:AddPanel(pnl)
	return SubMenu, pnl
end
derma.DefineControl("UPMenu", "Иное меню", PANEL, "DMenu")