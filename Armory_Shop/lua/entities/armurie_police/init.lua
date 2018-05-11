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
	-- si la valeur "return" est égale à TRUE alors votre NPC prend des dégats.
	-- si la valeur "return" est égale à FALSE alors votre NPC est invincible .
	return false
end

util.AddNetworkString( "ARMURIE" ) --< Nom de la fonction ce trouvant dans le CL_INIT

function ENT:AcceptInput( name, activator, caller )
  if name == "Use" and caller:IsPlayer() then --< Verifie si USE et ulisier par un joueur
    net.Start("ARMURIE") --< Nom de la fonction ce trouvant dans le CL_INIT
    net.Send(caller) --< Envoie l'information au serveur
  end
end