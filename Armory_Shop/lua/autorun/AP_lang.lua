//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
////   LL             AAAAAAA         NNNN  NN         GGGGGG     ////
////   LL             AA   AA         NN  NNNN         GG         ////
////   LL             AAAAAAA         NN    NN         GG         ////
////   LL             AA   AA         NN    NN         GG   GG    ////
////   LLLLLL         AA   AA         NN    NN         GGGGGGG    ////
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////


//Pour Ajouter une nouvelle langue ajouter ca //

--ArmurerieLang["fr"] = {   --Noubliez pas de changer ce qui est entre parenthèse, Ce que vous écrirez là dedans , Doit êtres la même chose que dans le fichier config
--	APTitle = "Armurerie",  Titre qui tourne audessu de l'objet.                                 --|
--	APLabel = "Armurerie",                                                                                |
--	APButton = "Acheter",                                                                               |
--	APMoney = "Pas assez d'argent",                                                                     |-------  /!\ A MODIFIER CELON VOTRE LANGUE /!\
--	APTexte = "Arme :",                                                                                 |
--	APDesc = "Description :",                                                                           |
--	APWeaponMoney = "Prix :",                                                                           |  
--  APGive = "Vous avez acheter un(e)",                                                                 | --|
--	APGive2 = "Pour",                                                                                   |   |---- Ce qui donneras à la fin :"Vous avez acheter un(e) : Exemple 01 Pour 500€"
--	APGive3 = "€",                                                                                      | --|
--	APNoTeam = "Vous n'avez pas le bon métier pour ouvrir l'armurie.",                                  |
--  APVIPTexte = "Vous ne pouvez pas acheter l'arme car vous n'êtes pas VIP",                           |---- Phrase Erreure quand vous n'êtes pas VIP
--  APVIP = "VIP :",                                                                                    | --|
--	APYes = "Oui",                                                                                      |   |---- Pour le VIP , Ce que donneras à la fin : "VIP : Oui / VIP : Non"
--	APNo = "Non",                                                                                       | --|
--  APOneLifeTexte = "Vous avez déja acheter une arme vous devez mourir pour en racheter une autre.",   |
--  APDistance = "Vous êtes trop Loin de l'armurerie",                                                --|
--}

// Vous pouvez supprimer ou modifier les exemples //


ArmurerieLang = {}

ArmurerieLang["fr"] = {
	APTitle = "Armurerie",
	APLabel = "Armurerie",
	APButton = "Acheter",
	APMoney = "Pas assez d'argent",
	APTexte = "Arme :",
	APDesc = "Description :",
	APWeaponMoney = "Prix :",
	APGive = "Vous avez acheter un(e) :",
	APGive2 = "Pour",
	APGive3 = "€",
	APNoTeam = "Vous n'avez pas le bon métier pour ouvrir l'armurie.",
	APVIPTexte = "Vous ne pouvez pas acheter l'arme car vous n'êtes pas VIP",
	APVIP = "VIP :",
	APYes = "Oui",
	APNo = "Non",
	APOneLifeTexte = "Vous avez déja acheter une arme vous devez mourir pour en racheter une autre.",
	APDistance = "Vous êtes trop Loin de l'armurerie",
	
}

ArmurerieLang["en"] = {
	APTitle = "Armory",
	APLabel = "Armory",
	APButton = "Buy",
	APMoney = "No More Money",
	APTexte = "Weapon :",
	APDesc = "Description :",
	APWeaponMoney = "Price :",
	APGive = "You Have Buy One :",
	APGive2 = "For",
	APGive3 = "€",
	APNoTeam = "You have no good job to open the armory.",
	APVIPTexte = "You cannot buy the weapon because you are not VIP",
	APVIP = "VIP :",
	APYes = "Yes",
	APNo = "No",
	APOneLifeTexte = "You already have to buy a weapon you have to die to acquire an other one.",
	APDistance = "You are too much Far from the armory",
}