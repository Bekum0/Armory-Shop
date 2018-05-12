//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////   CCCCCC    OOOOOOO    NNNN  NN    FFFFFFF    II   GGGGGG    ////
////   CC        OO   OO    NN  NNNN    FF              GG        ////
////   CC        OO   OO    NN    NN    FFFFFFF    II   GG        ////
////   CC        OO   OO    NN    NN    FF         II   GG   GG   ////
////   CCCCCC    OOOOOOO    NN    NN    FF         II   GGGGGGG   ////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


//Pour Ajouter une nouvelle arme ajouter ca //
--Armes_Shop[1] = {  --Noubliez pas d'ajouter 1 au chifre du dessu voir les exemples plus bas
--Name = "Glock 20", -- Nom de l'arme
--Desc = "Petit pistolet", -- Decription de l'arme
--Model = "models/weapons/w_pist_glock18.mdl", -- Model de l'arme ( Dans les fichiers de l'arme)
--Weapon_Entities = "fas2_glock20",  -- Faite "Click droit" sur votre arme et appuillez sur "Copy to clipboard"
--Price = 500, -- Prix de l'arme
--VIP = true, -- Arme Réservé aux VIP ou non
--}
// Vous pouvez supprimer ou modifier les exemples //

----------------------------------------------------------------------------------------------------------------

AP_Job = {"SCP-096", "scp173"} -- Team qui peut ouvrir L'armurie

AP_Skin = ("models/props_office/file_cabinet_03.mdl") -- Modifier le model de l'objet

AP_Lang = "fr" -- Remplacer par : fr,en , ect.. Pour rajouter une langue , Ajoutez la dans le Ficher : "AP_lang.lua" et suivez les instructions.

AP_VIP = {"superadmin", "admin", "VIP"} -- Grade VIP , Pour réserver certaines armes aux VIP

AP_OneWeapon = false -- Mettre sur "true" pour activer une fonction qui permet d'acheter 1 seul arme pour un vie (IG).

AP_ArmoryDistance = 100 -- Distance Minimum pour ouvrir l'armurerie

----------------------------------------------------------------------------------------------------------------

Armes_Shop = {}

Armes_Shop[1] = {
Name = "Exemple 01",
Desc = "Exemple 01",
Model = "models/weapons/w_pist_glock18.mdl",
Weapon_Entities = "fas2_glock20",
Price = 1000,
VIP = true,
}

Armes_Shop[2] = {
Name = "Exemple 02",
Desc = "Exemple 02",
Model = "models/weapons/w_pist_glock18.mdl",
Weapon_Entities = "fas2_glock20",
Price = 250,
VIP = false,
}

Armes_Shop[3] = {
Name = "Exemple 03",
Desc = "Exemple 03",
Model = "models/weapons/w_pist_glock18.mdl",
Weapon_Entities = "fas2_glock20",
Price = 100,
VIP = true,
}

Armes_Shop[4] = {
Name = "Exemple 04",
Desc = "Exemple 04",
Model = "models/weapons/w_pist_glock18.mdl",
Weapon_Entities = "fas2_glock20",
Price = 5000,
VIP = false,
}

-----------------------------------------------------------------------------------------------------------------
