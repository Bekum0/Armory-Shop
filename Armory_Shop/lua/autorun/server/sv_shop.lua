util.AddNetworkString("ATbuy")

net.Receive("ATbuy",function (len , ply)

  local selected = net.ReadString()
  for k,v in pairs(Armes_Shop) do
  	if tostring(k) == selected then
        if v.Price <= ply:getDarkRPVar("money") then
	    ply:Give(v.Weapon_Entities)
	    ply:addMoney(-v.Price)
		DarkRP.notify(ply, 0, 7, ArmurerieLang[AP_Lang].APGive .." ".. v.Name .." ".. ArmurerieLang[AP_Lang].APGive2 .. " ".. v.Price .." ".. ArmurerieLang[AP_Lang].APGive3)
		if AP_OneWeapon == true then
		
		 ply:SetNWBool("APOneLife", true)
		 
		 else
		 
		  ply:SetNWBool("APOneLife", false)
		  
		end
		end
	
	end
end
end)

hook.Add("PlayerDisconnected", "OneLife", function(ply)
  if ply:GetNWBool("APOneLife") then
    ply:SetNWBool("APOneLife", false)
  end
end)

hook.Add("PlayerDeath", "OneLife", function(ply)
  if ply:GetNWBool("APOneLife") then
    ply:SetNWBool("APOneLife", false)
  end
end)