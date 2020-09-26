// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1],["ZSN_Whistle",1]
// ****************

//US

#define us_h ["rhsgref_helmet_M1_bare_alt01","rhsgref_helmet_M1_bare","rhsgref_helmet_M1_vine"]
#define us_u ["CUP_U_B_BDUv2_OD_US","CUP_U_B_BDUv2_dirty_OD_US","CUP_U_B_BDUv2_gloves_OD_US","CUP_U_B_BDUv2_gloves_dirty_OD_US","CUP_U_B_BDUv2_roll_gloves_OD_US"]

cargo_kit_us_cargo = [
	[["rhs_weap_m72a7",1]],
	[["CUP_20Rnd_556x45_Stanag",20],["CUP_HandGrenade_M67",10],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",10],["1Rnd_HE_Grenade_shell",20],["CUP_1Rnd_StarFlare_White_M203",20],["CUP_PipeBomb_M",2]],
	[["ACE_Clacker",2]],
	[]
];

cargo_kit_us_cargo2 = [
	[],
	[["CUP_20Rnd_556x45_Stanag",10],["CUP_HandGrenade_M67",5],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",5],["1Rnd_HE_Grenade_shell",10],["CUP_1Rnd_StarFlare_White_M203",5]],
	[["ACE_Clacker",2]],
	[]
];

cargo_kit_us_cargo3 = [
	[],
	[["CUP_20Rnd_556x45_Stanag",40],["CUP_HandGrenade_M67",20],["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",20],["1Rnd_HE_Grenade_shell",30],["CUP_1Rnd_StarFlare_White_M203",20],["CUP_PipeBomb_M",2]],
	[["ACE_Clacker",2]],
	[]
];

kit_US_pl = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_rm","usm_pack_st138_prc77","usm_bdu_cap_odg","G_Aviator"],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A1","CUP_20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["SmokeShell",2],["SmokeShellGreen",2],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShellYellow",2]]]
];

kit_us_sl = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_rm","usm_pack_st138_prc77",us_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A1","CUP_20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["SmokeShell",2],["SmokeShellGreen",2],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["SmokeShellGreen",2],["SmokeShellRed",2],["SmokeShellYellow",2]]]
];

kit_us_ftl = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_rm","",us_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A1","CUP_20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["CUP_7Rnd_45ACP_1911",1],["SmokeShellGreen",2],["SmokeShell",2],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_ar = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_mg","CUP_B_AlicePack_OD",us_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_M60","CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",2]]]
];

kit_us_gr = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_gr","CUP_B_AlicePack_OD",us_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A1GL","CUP_20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",10],["CUP_1Rnd_StarFlare_White_M203",10],["CUP_1Rnd_HE_M203",10]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_r = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_rm","CUP_B_AlicePack_OD",us_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_M16A1","CUP_20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","rhs_weap_m72a7","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",10]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",2]]]
];

kit_us_crew = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_rm","","CUP_H_CZ_Helmet05",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_M3A1_blk","CUP_30Rnd_45ACP_M3A1_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",1],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",3],["SmokeShellGreen",2],["SmokeShell",2]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_pilot = [
	["<EQUIPEMENT >>  ","CUP_U_B_USArmy_PilotOverall","usm_vest_LBE_rm","","CUP_H_SPH4_green_visor",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",1],["CUP_7Rnd_45ACP_1911",2],["SmokeShellGreen",1],["SmokeShell",1]]],
	["<BACKPACK ITEMS >> ",[]]
];

kit_us_bot = [
	["<EQUIPEMENT >>  ",us_u,"usm_vest_LBE_rm","",us_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_XM16E1","CUP_20Rnd_556x45_Stanag",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Colt1911","rhsusf_mag_7x45acp_MHP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_M67",2],["CUP_7Rnd_45ACP_1911",1],["PRIMARY MAG",8]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M",2]]]
];

// chezch

#define chezch_h ["CUP_H_SLA_Helmet","CUP_H_SLA_Helmet_OD_worn","CUP_H_TK_Helmet"]
#define chezch_b ["RD_54_69","RD_54_69_Shovel2","RD_54_69_Shovel"]



kit_che_sl = [
	["<EQUIPEMENT >>  ","m88_needles","345th_RD_webbing_bayonet","RD_54_69_R148","CUP_H_SLA_Helmet",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Sa58P","CUP_30Rnd_Sa58_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6]]]
];

kit_che_at = [
	["<EQUIPEMENT >>  ","m88_needles","345th_RD_webbing_bayonet","CUP_B_RPGPack_Khaki",chezch_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Sa58P","CUP_30Rnd_Sa58_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG7V","CUP_PG7V_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6],["CUP_OG7_M",1],["SECONDARY MAG",1]]]
];

kit_che_aat = [
	["<EQUIPEMENT >>  ","m88_needles","345th_RD_webbing_bayonet","CUP_B_RPGPack_Khaki",chezch_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Sa58P","CUP_30Rnd_Sa58_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6],["CUP_OG7_M",1],["CUP_PG7V_M",1]]]
];

kit_che_mg = [
	["<EQUIPEMENT >>  ","m88_needles","345th_RD_webbing",chezch_b,chezch_h,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_UK59","CUP_50Rnd_UK59_762x54R_Tracer",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",4],["CUP_HandGrenade_RGD5",2]]]
];

kit_che_ar = [
	["<EQUIPEMENT >>  ","m88_needles","345th_RD_webbing_bayonet",chezch_b,chezch_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74","CUP_40Rnd_TE4_LRT4_Green_Tracer_762x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6]]]
];

kit_che_r = [
	["<EQUIPEMENT >>  ","m88_needles","345th_RD_webbing",chezch_b,chezch_h,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_Sa58P","CUP_30Rnd_Sa58_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_RGD5",2],["PRIMARY MAG",1]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",6],["CUP_50Rnd_UK59_762x54R_Tracer",2]]]
];


kit_che_crew = [
	["<EQUIPEMENT >>  ","CUP_U_O_SLA_Overalls_Tank","CUP_V_CDF_OfficerBelt","","CUP_H_RUS_TSH_4_Brown",""],
	["<PRIMARY WEAPON >>  ","CUP_smg_SA61","CUP_20Rnd_B_765x17_Ball_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",4],["CUP_HandGrenade_RGD5",2]]],
	["<BACKPACK ITEMS >> ",[]]
];


kit_che_random = [
    "kit_che_r","kit_che_r"
    ,"kit_che_ar"
    ,"kit_che_mg"
	,"kit_che_at"
];