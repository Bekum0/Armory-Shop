include('shared.lua')

surface.CreateFont("Gladiateur", {
    font = "Arial",
    size = 34,
    weight = 800,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
})


local blur = Material("pp/blurscreen")
local function DrawBlur(panel, amount)
    local x, y = panel:LocalToScreen(0, 0)
    local scrW, scrH = ScrW(), ScrH()
    surface.SetDrawColor(255, 255, 255)
    surface.SetMaterial(blur)
    for i = 1, 3 do
        blur:SetFloat("$blur", (i / 3) * (amount or 6))
        blur:Recompute()
        render.UpdateScreenEffectTexture()
        surface.DrawTexturedRect(x * -1, y * -1, scrW, scrH)
    end
end

net.Receive( "ARMURERIE", function()


if LocalPlayer():GetNWBool("APOneLife") then

if AP_OneWeapon == true then

LocalPlayer():PrintMessage(HUD_PRINTTALK, ArmurerieLang[AP_Lang].APOneLifeTexte )
return
else

LocalPlayer():SetNWBool("APOneLife", false)

 end
 end

if (table.HasValue(AP_Job , team.GetName(LocalPlayer():Team())))then


    local frame = vgui.Create( "DFrame" )
	frame:SetTitle("")
    frame:SetSize( 800, 500 )
    frame:Center()
	frame:SetVisible( true )
    frame:SetDraggable( false )
    frame:ShowCloseButton( false )
    frame:MakePopup()
	frame.Paint = function( self, w, h )
    DrawBlur(self, 2)
    draw.RoundedBox( 5, 0, 0, w, h, Color( 0, 0, 0, 170 ) )
    end
	//frame.Paint = function( self, w, h )
	//draw.RoundedBox( 0, 0, 0, w, h, Color( 25,25,25,150 ) )
	//draw.RoundedBox( 0, 0, 0, w, h, Color( 54, 57, 62, 255 ) )
	//end

	
	local ligne = vgui.Create( "DPanel", frame )
    ligne:SetSize( 800, 33 )
	ligne:SetPos(0,0)
	ligne.Paint = function( self, w, h )
	draw.RoundedBox( 6, 0, 0, w, h, Color( 0, 137, 255 ) )
	end
	
	local lignelabel = vgui.Create( "DLabel", ligne )
	lignelabel:SetPos( 5, 5 )
    lignelabel:SetText(ArmurerieLang[AP_Lang].APLabel)
    lignelabel:SizeToContents()
	
	local closeButton = vgui.Create("DButton" , frame)
	closeButton:SetPos(767,0)
	closeButton:SetSize(33,33)
	closeButton:SetText("X")
	closeButton:SetTextColor(Color(255,255,255))
	closeButton.DoClick = function()
		frame:Close()
	end 
	closeButton.Paint = function(s , w , h)
			draw.RoundedBox(0,0,0,w , h,Color(255, 0, 0))
		end
	closeButton.OnCursorEntered = function()
		surface.PlaySound("UI/buttonrollover.wav")
	end
	
	local Scroll = vgui.Create( "DScrollPanel", frame )
	Scroll:SetSize(700,350)
	Scroll:Center()

	local sbar = Scroll:GetVBar()
	function sbar:Paint( w, h )
		draw.RoundedBox( 0, 0, 0, w, h, Color( 0, 0, 0, 110 ) )
	end
	function sbar.btnUp:Paint( w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color(32, 32, 32) )
	end
	function sbar.btnDown:Paint( w, h )
		draw.RoundedBox( 2, 0, 0, w, h, Color(32, 32, 32) )
	end
	function sbar.btnGrip:Paint( w, h )
		draw.RoundedBox( 6, 0, 0, w, h, Color(0, 137, 255) )
	end
	
Scroll.Button = {}
Scroll.VIP = {}
Scroll.Text = {}
Scroll.Desc = {}
Scroll.Prix = {}
Scroll.Model = {}
Scroll.framescroll = {}
Scroll.NetStart = {}
local sautdeligne = 100
local sautelignetext = 0
for k, v in pairs(Armes_Shop) do

local NumberPos = 0

Scroll.framescroll[k] = vgui.Create( "DPanel", Scroll )
    Scroll.framescroll[k]:SetSize( 610, 83 )
	Scroll.framescroll[k]:SetPos(15,14+sautdeligne*sautelignetext)
	Scroll.framescroll[k].Paint = function( self, w, h )
	draw.RoundedBox( 6, 0, 0, w, h, Color( 54, 57, 62, 255 ) )
	end


Scroll.Button[k] = vgui.Create( "DButton",Scroll )
Scroll.Button[k]:SetPos( 500,45 +sautdeligne*sautelignetext)
Scroll.Button[k]:SetText(ArmurerieLang[AP_Lang].APButton)
Scroll.Button[k]:SetSize( 100, 25 )
Scroll.Button[k]:SetColor(Color(255,255,255,255))
Scroll.Button[k].OnCursorEntered = function(ply)
				surface.PlaySound("UI/buttonrollover.wav")
			end
			Scroll.Button[k].OnCursorExited = function(ply)
			end
Scroll.Button[k].Paint = function()
draw.RoundedBox( 6, 0, 0, 100, 30, Color(255, 0, 0, 190) )
end

if LocalPlayer().DarkRPVars.money < Armes_Shop[k].Price then
			Scroll.Button[k]:SetText(ArmurerieLang[AP_Lang].APMoney)
			Scroll.Button[k]:SetTextColor(Color(255,255,255,255))
			Scroll.Button[k]:SetDisabled(true)
			Scroll.Button[k].Paint = function()
				draw.RoundedBox( 6, 0, 0, 100, 30, Color(0, 0, 0, 255) )
			end

		end
Scroll.Button[k].DoClick = function()

for _, ent in pairs (ents.FindByClass("armurerie_police")) do

	if LocalPlayer():GetPos():Distance(ent:GetPos()) <= AP_ArmoryDistance then
	
 if Armes_Shop[k].VIP == true then
    if table.HasValue(AP_VIP, LocalPlayer():GetUserGroup() ) then
    local ksttring = tostring(k)
    net.Start( "ATbuy" )
        net.WriteString( ksttring )
    net.SendToServer()
    frame:Close()

    else

	LocalPlayer():PrintMessage(HUD_PRINTTALK, ArmurerieLang[AP_Lang].APVIPTexte )
	
	 frame:Close()

   end

 else

 local ksttring = tostring(k)
 net.Start( "ATbuy" )
     net.WriteString( ksttring )
 net.SendToServer()
 frame:Close()
end

else

LocalPlayer():PrintMessage(HUD_PRINTTALK,  ArmurerieLang[AP_Lang].APDistance )
frame:Close()

end
end
end

Scroll.Text[k] = vgui.Create( "DLabel", Scroll )
Scroll.Text[k]:SetPos( 120,20+sautdeligne*sautelignetext)
Scroll.Text[k]:SetText( ArmurerieLang[AP_Lang].APTexte.." "..Armes_Shop[k].Name)
Scroll.Text[k]:SizeToContents()


Scroll.Text[k] = vgui.Create( "DLabel", Scroll )
Scroll.Text[k]:SetPos( 120, 40+sautdeligne*sautelignetext)
Scroll.Text[k]:SetText( ArmurerieLang[AP_Lang].APDesc.." "..Armes_Shop[k].Desc)
Scroll.Text[k]:SizeToContents()

Scroll.Prix[k] = vgui.Create( "DLabel", Scroll )
Scroll.Prix[k]:SetPos( 120, 60+sautdeligne*sautelignetext)
Scroll.Prix[k]:SetText( ArmurerieLang[AP_Lang].APWeaponMoney.." "..Armes_Shop[k].Price .." ".. ArmurerieLang[AP_Lang].APGive3 )
Scroll.Prix[k]:SizeToContents()

Scroll.VIP[k] = vgui.Create( "DLabel", Scroll )
Scroll.VIP[k]:SetPos( 120, 80+sautdeligne*sautelignetext)
if v.VIP == true then

Scroll.VIP[k]:SetText( ArmurerieLang[AP_Lang].APVIP .." "..ArmurerieLang[AP_Lang].APYes  )

else

Scroll.VIP[k]:SetText( ArmurerieLang[AP_Lang].APVIP .." "..ArmurerieLang[AP_Lang].APNo )

end
Scroll.VIP[k]:SizeToContents()

Scroll.Model[k] = vgui.Create( "SpawnIcon" , Scroll )
Scroll.Model[k]:SetPos( 30,30+sautdeligne*sautelignetext )
Scroll.Model[k]:SetModel( Armes_Shop[k].Model )

NumberPos = NumberPos +1
sautelignetext = sautelignetext +1
end 

else

LocalPlayer():PrintMessage(HUD_PRINTTALK, ArmurerieLang[AP_Lang].APNoTeam )	 
end
end )

function ENT:Draw()

      self:DrawModel()
	
	for _, ent in pairs (ents.FindByClass("armurerie_police")) do
		if ent:GetPos():Distance(LocalPlayer():GetPos()) < 500 then
			local pos = ent:GetPos()
            pos.z = (pos.z + 15)
          local ang = ent:GetAngles()

    surface.SetFont("Gladiateur")
    local title = ArmurerieLang[AP_Lang].APTitle
    local tw = surface.GetTextSize(title)

    ang:RotateAroundAxis(ang:Forward(), 90)
    local textang = ang

    textang:RotateAroundAxis(textang:Right(), CurTime() * -180)

    cam.Start3D2D(pos + ang:Right() * -30, textang, 0.2)
        draw.WordBox(6, -tw *0.5 + 5, -120, title, "Gladiateur", Color(0, 147, 255, 255), color_white)
    cam.End3D2D()
		end
	end
	end
