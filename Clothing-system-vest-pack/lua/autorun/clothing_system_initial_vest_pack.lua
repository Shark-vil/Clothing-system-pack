list.Set( "clothing_system", "combine_nova_prospekt_vest", {
    Name = "Combine nova prospekt vest",
    Category = "Vest",

	WireModel = "models/combine_vests/prisonvest.mdl",
    FoldedModel = "models/combine_vests/prisonvest.mdl",

    PlayerBase = "hl2_player",

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии

    WalkSound = {
        "npc/combine_soldier/gear1.wav",
        "npc/combine_soldier/gear2.wav",
        "npc/combine_soldier/gear3.wav",
        "npc/combine_soldier/gear4.wav",
        "npc/combine_soldier/gear5.wav",
        "npc/combine_soldier/gear6.wav",
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = 0,
    yPos = 10,
    zPos = -2.4,
    xAng = 90,
    yAng = 0,
    zAng = 90,

    TakesDamagePercent = {
        [DMG_BULLET]=.72, -- Урон от пули
        [DMG_SLASH]=.3, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.3, -- Урон от ломика
        [DMG_BUCKSHOT]=.61, -- Урон от дроби
    },

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "combine_military_vest", {
    Name = "Combine military vest",
    Category = "Vest",

	WireModel = "models/combine_vests/militaryvest.mdl",
    FoldedModel = "models/combine_vests/militaryvest.mdl",

    WalkSound = {
        "npc/combine_soldier/gear1.wav",
        "npc/combine_soldier/gear2.wav",
        "npc/combine_soldier/gear3.wav",
        "npc/combine_soldier/gear4.wav",
        "npc/combine_soldier/gear5.wav",
        "npc/combine_soldier/gear6.wav",
    },

    PlayerBase = "hl2_player",

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = 0,
    yPos = 10,
    zPos = -2.4,
    xAng = 90,
    yAng = 0,
    zAng = 90,

    TakesDamagePercent = {
        [DMG_BULLET]=.72, -- Урон от пули
        [DMG_SLASH]=.3, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.3, -- Урон от ломика
        [DMG_BUCKSHOT]=.61, -- Урон от дроби
    },

    ChangeModelDamage = {
        {"models/combine_vests/zombineregularvest.mdl", 50},
        {"models/combine_vests/zombineshotgunnervest.mdl", 30},
    },

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "combine_elite_vest", {
    Name = "Combine elite vest",
    Category = "Vest",

	WireModel = "models/combine_vests/elitevest.mdl",
    FoldedModel = "models/combine_vests/elitevest.mdl",

    WalkSound = {
        "npc/combine_soldier/gear1.wav",
        "npc/combine_soldier/gear2.wav",
        "npc/combine_soldier/gear3.wav",
        "npc/combine_soldier/gear4.wav",
        "npc/combine_soldier/gear5.wav",
        "npc/combine_soldier/gear6.wav",
    },

    PlayerBase = "hl2_player",

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = 0,
    yPos = 10,
    zPos = -2.4,
    xAng = 90,
    yAng = 0,
    zAng = 90,

    TakesDamagePercent = {
        [DMG_BULLET]=.69, -- Урон от пули
        [DMG_SLASH]=.29, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.29, -- Урон от ломика
        [DMG_BUCKSHOT]=.57, -- Урон от дроби
    },

    ChangeModelDamage = {
        {"models/combine_vests/zombineelitevest.mdl", 50},
    },

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "combine_vest_blue", {
    Name = "Combine vest - blue",
    Category = "Vest",

	WireModel = "models/combine_vests/bluevest.mdl",
    FoldedModel = "models/combine_vests/bluevest.mdl",

    WalkSound = {
        "npc/combine_soldier/gear1.wav",
        "npc/combine_soldier/gear2.wav",
        "npc/combine_soldier/gear3.wav",
        "npc/combine_soldier/gear4.wav",
        "npc/combine_soldier/gear5.wav",
        "npc/combine_soldier/gear6.wav",
    },

    PlayerBase = "hl2_player",

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = 0,
    yPos = 10,
    zPos = -2.4,
    xAng = 90,
    yAng = 0,
    zAng = 90,

    TakesDamagePercent = {
        [DMG_BULLET]=.8, -- Урон от пули
        [DMG_SLASH]=.5, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.7, -- Урон от дроби
    },

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "rus_police_vest_shabby", {
    Name = "Police vest - Shabby", -- Название
    Category = "Vest", -- Категория

	WireModel = "models/dayz/vest_police.mdl", -- Модель одежды
    FoldedModel = "models/dayz/vest_police.mdl", -- Модель Entity
    Skin = 1, 

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakesDamagePercent = {
        [DMG_BULLET]=.9, -- Урон от пули
        [DMG_SLASH]=.4, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.9, -- Урон от дроби
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = -2.5,
    yPos = 11,
    zPos = 0,
    xAng = 90,
    yAng = 90,
    zAng = 90,

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "rus_police_vest_easy", {
    Name = "Police vest - Easy", -- Название
    Category = "Vest", -- Категория

	WireModel = "models/dayz/vest_police.mdl", -- Модель одежды
    FoldedModel = "models/dayz/vest_police.mdl", -- Модель Entity
    Skin = 0,

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    TakesDamagePercent = {
        [DMG_BULLET]=.8, -- Урон от пули
        [DMG_SLASH]=.4, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.9, -- Урон от дроби
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = -2.5,
    yPos = 11,
    zPos = 0,
    xAng = 90,
    yAng = 90,
    zAng = 90,

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "rus_police_vest_medium", {
    Name = "Police vest - Medium", -- Название
    Category = "Vest", -- Категория

	WireModel = "models/dayz/vest_police.mdl", -- Модель одежды
    FoldedModel = "models/dayz/vest_police.mdl", -- Модель Entity
    Skin = 2,

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakesDamagePercent = {
        [DMG_BULLET]=.7, -- Урон от пули
        [DMG_SLASH]=.4, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.8, -- Урон от дроби
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = -2.5,
    yPos = 11,
    zPos = 0,
    xAng = 90,
    yAng = 90,
    zAng = 90,

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "rus_police_vest_heavy", {
    Name = "Police vest - Heavy", -- Название
    Category = "Vest", -- Категория

	WireModel = "models/dayz/vest_police.mdl", -- Модель одежды
    FoldedModel = "models/dayz/vest_police.mdl", -- Модель Entity
    Skin = 3,

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakesDamagePercent = {
        [DMG_BULLET]=.6, -- Урон от пули
        [DMG_SLASH]=.4, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.7, -- Урон от дроби
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = -2.5,
    yPos = 11,
    zPos = 0,
    xAng = 90,
    yAng = 90,
    zAng = 90,

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "rus_police_vest_officer", {
    Name = "Police vest - Officer's", -- Название
    Category = "Vest", -- Категория

	WireModel = "models/dayz/vest_police.mdl", -- Модель одежды
    FoldedModel = "models/dayz/vest_police.mdl", -- Модель Entity
    Skin = 4,

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakesDamagePercent = {
        [DMG_BULLET]=.5, -- Урон от пули
        [DMG_SLASH]=.4, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.6, -- Урон от дроби
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = -2.5,
    yPos = 11,
    zPos = 0,
    xAng = 90,
    yAng = 90,
    zAng = 90,

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )

list.Set( "clothing_system", "rus_police_vest_military", {
    Name = "Police vest - Military modification", -- Название
    Category = "Vest", -- Категория

	WireModel = "models/dayz/vest_police.mdl", -- Модель одежды
    FoldedModel = "models/dayz/vest_police.mdl", -- Модель Entity
    Skin = 5,

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakesDamagePercent = {
        [DMG_BULLET]=.4, -- Урон от пули
        [DMG_SLASH]=.4, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.4, -- Урон от ломика
        [DMG_BUCKSHOT]=.5, -- Урон от дроби
    },

    BoneAttach = true,
    Bone = "ValveBiped.Bip01_Spine2",
    ScaleModel = 1,
    xPos = -2.5,
    yPos = 11,
    zPos = 0,
    xAng = 90,
    yAng = 90,
    zAng = 90,

    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )