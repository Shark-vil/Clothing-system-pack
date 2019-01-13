list.Set( "clothing_system", "fg_human_gasmask_2", {
    Developing = true,
    Name = "Gas mask 2",
    Category = "Gas Masks",

    WireModel = "models/maver1k_xvii/stcop_helm_battle.mdl",
    FoldedModel = "models/maver1k_xvii/stcop_helm_battle.mdl",
    GasMask = true,

    EquipSound = "clothing_system/gasmask_equip.wav",
    UnEquipSound = "clothing_system/gasmask_unequip.wav",

    PlayerBase = "hl2_player",

    Overlay = {
        {"sprites/cls_hazmatoverlay", 0},
    },

    BreathSoundInGasMask = {
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath1.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath2.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath3.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath4.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath5.wav",
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1.15,
    xPos = 0,
    yPos = 0,
    zPos = -1.5,
    xAng = -70,
    yAng = 0,
    zAng = -90,

    BonemergeSystem = false,
    TypePut = {
        Head = true, 
    },
} )

list.Set( "clothing_system", "fg_human_gasmask_1", {
    Name = "Gas mask",
    Category = "Gas Masks",

    WireModel = "models/maver1k_xvii/metro_digger_helmet.mdl",
    FoldedModel = "models/maver1k_xvii/metro_digger_helmet.mdl",

    EquipSound = "clothing_system/gasmask_equip.wav",
    UnEquipSound = "clothing_system/gasmask_unequip.wav",

    GasMask = true,

    PlayerBase = "hl2_player",

    Overlay = {
        {"sprites/cls_hazmatoverlay", 0},
    },

    BreathSoundInGasMask = {
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath1.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath2.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath3.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath4.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath5.wav",
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1.1,
    xPos = 0,
    yPos = -3.3,
    zPos = -3.5,
    xAng = -90,
    yAng = 0,
    zAng = -90,

    BonemergeSystem = false,
    TypePut = {
        Head = true, 
    },
} )

list.Set( "clothing_system", "fg_pony_gasmask_1", {
    Name = "Pony gas mask",
    Category = "Gas Masks",

    WireModel = "models/maver1k_xvii/metro_digger_helmet.mdl",
    FoldedModel = "models/maver1k_xvii/metro_digger_helmet.mdl",

    EquipSound = "clothing_system/gasmask_equip.wav",
    UnEquipSound = "clothing_system/gasmask_unequip.wav",
    
    GasMask = true,

    PlayerBase = "pony",

    Overlay = {
        {"sprites/cls_hazmatoverlay", 0},
    },

    BreathSoundInGasMask = {
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath1.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath2.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath3.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath4.wav",
        "avoxgaming/gas_mask/gas_mask_light/gas_mask_light_breath5.wav",
    },

    BoneAttach = true,
    Bone = "LrigScull",
    ScaleModel = 2,
    xPos = 0.5,
    yPos = -2,
    zPos = -2,
    xAng = 0,
    yAng = 0,
    zAng = 90,

    BonemergeSystem = false,
    TypePut = {
        Head = true, 
    },
} )

list.Set( "clothing_system", "fg_helmet_roman_legionary_purple", {
    Name = "Helmet of a Roman legionary (Purple)",
    Category = "Helmets",
    OnlyAdmin = true,

	WireModel = "models/roman_helmet/roman_helmet6.mdl",
    FoldedModel = "models/roman_helmet/roman_helmet6.mdl",

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 1.5,
    zPos = 0.5,
    xAng = 105,
    yAng = 0,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakesDamagePercent = {
        [DMG_SLASH]=.9, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.9, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_roman_centurions_purple", {
    Name = "Helmet of the Roman centurions (Purple)",
    Category = "Helmets",
    OnlyAdmin = true,

	WireModel = "models/roman_helmet/roman_helmet7.mdl",
    FoldedModel = "models/roman_helmet/roman_helmet7.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 1.5,
    zPos = 0.5,
    xAng = 105,
    yAng = 0,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakesDamagePercent = {
        [DMG_SLASH]=.9, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.9, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_roman", {
    Name = "Roman helmet",
    Category = "Helmets",

	WireModel = "models/roman_helmet/roman_helmet4.mdl",
    FoldedModel = "models/roman_helmet/roman_helmet4.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 1.5,
    zPos = 0.5,
    xAng = 105,
    yAng = 0,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakesDamagePercent = {
        [DMG_SLASH]=.8, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.8, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_roman_legionary", {
    Name = "Helmet of a Roman legionary",
    Category = "Helmets",

	WireModel = "models/roman_helmet/roman_helmet5.mdl",
    FoldedModel = "models/roman_helmet/roman_helmet5.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 1.5,
    zPos = 0.5,
    xAng = 105,
    yAng = 0,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakesDamagePercent = {
        [DMG_SLASH]=.8, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.8, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_roman_centurions", {
    Name = "Helmet of the Roman centurions",
    Category = "Helmets",

	WireModel = "models/roman_helmet/roman_helmet1.mdl",
    FoldedModel = "models/roman_helmet/roman_helmet1.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 1.5,
    zPos = 0.5,
    xAng = 105,
    yAng = 0,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakesDamagePercent = {
        [DMG_SLASH]=.8, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.8, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_sniper_fishinghat", {
    Name = "Knight's helmet",
    Category = "Helmets",

	WireModel = "models/player/simpu/sniper/sniper_fishinghat.mdl",
    FoldedModel = "models/player/simpu/sniper/sniper_fishinghat.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = -0.9,
    yPos = -4,
    zPos = 0.2,
    xAng = 100,
    yAng = -90,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakesDamagePercent = {
        [DMG_SLASH]=.8, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.8, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_tanker", {
    Name = "Tanker Helmet",
    Category = "Helmets",

	WireModel = "models/kali/miscstuff/soviet_tanker_helmet.mdl",
    FoldedModel = "models/kali/miscstuff/soviet_tanker_helmet.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 64,
    zPos = 0,
    xAng = 90,
    yAng = 180,
    zAng = 90,

    TypePut = {
        Head = true, 
    },
} )

list.Set( "clothing_system", "fg_helmet_cvc", {
    Name = "CVC Helmet",
    Category = "Helmets",

	WireModel = "models/kali/miscstuff/cvc_helmet.mdl",
    FoldedModel = "models/kali/miscstuff/cvc_helmet.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = -0.1,
    yPos = 3.5,
    zPos = -1.2,
    xAng = 105,
    yAng = 180,
    zAng = 90,

    TypePut = {
        Head = true, 
    },

    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    TakesDamagePercent = {
        [DMG_BULLET]=.8, -- Урон от пули
        [DMG_SLASH]=.7, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_BLAST]=.8, -- Урон от взрыва
        [DMG_CLUB]=.7, -- Урон от ломика
    },
} )

list.Set( "clothing_system", "fg_helmet_vietnam", {
    Name = "Vietnam Helmet",
    Category = "Helmets",

	WireModel = "models/equipmentpack/usgearhelmet.mdl",
    FoldedModel = "models/equipmentpack/usgearhelmet.mdl",

    EquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    UnEquipSound = {
        "clothing_system/hat/1.wav",
        "clothing_system/hat/2.wav",
        "clothing_system/hat/3.wav",
        "clothing_system/hat/4.wav",
    },

    PlayerBase = "hl2_player",

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Head1",
    ScaleModel = 1,
    xPos = -0.3,
    yPos = 3,
    zPos = 3.4,
    xAng = 110,
    yAng = 0,
    zAng = -90,

    TypePut = {
        Head = true, 
    },

    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    TakesDamagePercent = {
        [DMG_BULLET]=.9, -- Урон от пули
        [DMG_SLASH]=.9, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_BLAST]=.9, -- Урон от взрыва
        [DMG_CLUB]=.9, -- Урон от ломика
    },
} )