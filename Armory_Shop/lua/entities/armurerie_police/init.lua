AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include('shared.lua')

function ENT:Initialize()

	self:SetModel( AP_Skin )
	self:PhysicsInit(SOLID_VPHYSICS);
    self:SetMoveType(MOVETYPE_VPHYSICS);
    self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType( SIMPLE_USE )
	
end

function ENT:OnTakeDamage()
	return false
end

util.AddNetworkString( "ARMURERIE" )

function ENT:AcceptInput( name, activator, caller )
  if name == "Use" and caller:IsPlayer() then
    net.Start("ARMURERIE")
    net.Send(caller)
  end
end