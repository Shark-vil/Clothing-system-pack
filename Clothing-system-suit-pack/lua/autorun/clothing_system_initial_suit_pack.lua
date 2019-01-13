list.Set( "clothing_system", "anti_radiation_hazmat_suit", {
    Name = "Hazmat suit", -- Название
    Category = "Suit", -- Категория

    SetPlayerModel = true,
	WireModel = "models/dxn/cod_ghosts/hazmat_pm.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase001a.mdl", -- Модель Entity

    PlayerBase = "hl2_player", -- База для одежды

    Overlay = {
        {"sprites/cls_hazmatoverlay", 0},
    },

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    GasMask = true, -- Использовать маску против радиации
    TakesDamagePercent = {
        [DMG_ACID]=.0,
        [DMG_POISON]=.0, 
    },
} )

list.Set( "clothing_system", "fallout4_preston_garvey", {
    Name = "Preston Garvey uniform", -- Название
    Category = "Fallout", -- Категория

	WireModel = "models/prestonmeme.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl", -- Модель Entity

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/coat/coat_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/coat/coat_unequip.wav", -- Звук при снятии

    Pockets = {
        ['Rear bag'] = 3,
        ['Left bag'] = 5,
        ['Right bag'] = 10,

        ['Left pocket'] = 5,
        ['Right pocket'] = 5,
    },

    Bonemerge = true, -- Использовать систему крепления Bonemerge (Надеть модель поверх основной)
    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
        Thigh = true, -- Бёдра
        Pelvis = true, -- Таз

        LeftShoulder = true, -- Левое плечо
        LeftArm = true, -- Левая рука до локтя
        LeftElbow = true, -- Левый локоть
        LeftForearm = true, -- Левое предплечье
        LeftWrist = true, -- Левое запястье

        RightShoulder = true, -- Правое плечо
        RightArm = true, -- Правая рука до локтя
        RightElbow = true, -- Правый локоть
        RightForearm = true, -- Правое предплечье
        RightWrist = true, -- Правое запястье

        LeftLeg = true, -- Левая нога до колена
        LeftKnee = true, -- Левое колено
        LeftShin = true, -- Левая голень
        LeftFoot = true, -- Левая нога
        LeftHeel = true, -- Левая пятка

        RightLeg = true, -- Правая нога до колена
        RightKnee = true, -- Правое колено
        RightShin = true, -- Правая голень
        RightFoot = true, -- Правая нога
        RightHeel = true, -- Правая пятка
    },
} )

list.Set( "clothing_system", "fallout4_mutant_armor", {
    Name = "Mutant Armor", -- Название
    Category = "Fallout", -- Категория

	WireModel = "models/leatherheavytorso.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl", -- Модель Entity

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/other/other_equip_8.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/other/other_equip_7.wav", -- Звук при снятии

    Pockets = {
        ['Front pocket 1'] = 5,
        ['Front pocket 2'] = 5,
        ['Front pocket 3'] = 5,
    },

    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    TakesDamagePercent = {
        [DMG_BULLET]=.9, -- Урон от пули
        [DMG_SLASH]=.6, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_CLUB]=.6, -- Урон от ломика
        [DMG_BUCKSHOT]=.8, -- Урон от дроби
    },

    Bonemerge = true, -- Использовать систему крепления Bonemerge (Надеть модель поверх основной)
    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
    },
} )


list.Set( "clothing_system", "fallout4_brotherhood_of_steel_uniform", {
    Name = "Uniform of the 'Brotherhood of Steel'", -- Название
    Category = "Fallout", -- Категория

	WireModel = "models/fieldscribeclothing.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl", -- Модель Entity

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/other/other_equip_3.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/other/other_equip_4.wav", -- Звук при снятии

    Pockets = {
        ['Right upper jacket pocket on chest'] = 5,
        ['Middle upper jacket pocket on chest'] = 5,
        ['Left upper jacket pocket on chest'] = 5,
        ['Right lower jacket pocket on chest'] = 5,
        ['Middle lower jacket pocket on chest'] = 5,
        ['Left lower jacket pocket on chest'] = 5,

        ['Left pocket on the torso'] = 5,
        ['Right upper pocket on the torso'] = 5,
        ['Right lower pocket on the torso'] = 5,

        ['Left bottom pocket of jacket'] = 15,
        ['Right bottom pocket of jacket'] = 15,

        ['Pocket on the left leg'] = 5,
        ['Pocket on the right leg'] = 5,

        ['Backpack'] = 80,
    },

    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    TakesDamagePercent = {
        [DMG_BULLET]=.6, -- Урон от пули
        [DMG_SLASH]=.5, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_BURN]=.6, -- Урон от огня
        [DMG_BLAST]=.7, -- Урон от взрыва
        [DMG_CLUB]=.5, -- Урон от ломика
        [DMG_BUCKSHOT]=.6, -- Урон от дроби
    },

    Bonemerge = true, -- Использовать систему крепления Bonemerge (Надеть модель поверх основной)
    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
        Thigh = true, -- Бёдра
        Pelvis = true, -- Таз

        LeftShoulder = true, -- Левое плечо
        LeftArm = true, -- Левая рука до локтя
        LeftElbow = true, -- Левый локоть
        LeftForearm = true, -- Левое предплечье
        LeftWrist = true, -- Левое запястье

        RightShoulder = true, -- Правое плечо
        RightArm = true, -- Правая рука до локтя
        RightElbow = true, -- Правый локоть
        RightForearm = true, -- Правое предплечье
        RightWrist = true, -- Правое запястье

        LeftLeg = true, -- Левая нога до колена
        LeftKnee = true, -- Левое колено
        LeftShin = true, -- Левая голень
        LeftFoot = true, -- Левая нога
        LeftHeel = true, -- Левая пятка

        RightLeg = true, -- Правая нога до колена
        RightKnee = true, -- Правое колено
        RightShin = true, -- Правая голень
        RightFoot = true, -- Правая нога
        RightHeel = true, -- Правая пятка
    },
} )

list.Set( "clothing_system", "fg_fallout_nv_coat_armored", {
    Name = "Coat Armored", -- Название
    Category = "Fallout", -- Категория

	WireModel = "models/armoredcoat.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl", -- Модель Entity

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/other/other_equip_3.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/other/other_equip_4.wav", -- Звук при снятии

    Pockets = {
        ['Left pocket'] = 5,
        ['Right pocket'] = 5,

        ['Pocket on the left sleeve 1'] = 2,
        ['Pocket on the left sleeve 2'] = 2,

        ['Pocket on the right sleeve 1'] = 2,
        ['Pocket on the right sleeve 2'] = 2,

        ['Left pocket on pants'] = 4,
        ['Right pocket on pants'] = 4,
    },

    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    TakesDamagePercent = {
        [DMG_BULLET]=.7, -- Урон от пули
        [DMG_SLASH]=.6, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_BURN]=.8, -- Урон от огня
        [DMG_BLAST]=.9, -- Урон от взрыва
        [DMG_CLUB]=.6, -- Урон от ломика
        [DMG_BUCKSHOT]=.8, -- Урон от дроби
    },

    Bonemerge = true, -- Использовать систему крепления Bonemerge (Надеть модель поверх основной)
    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
        Thigh = true, -- Бёдра
        Pelvis = true, -- Таз

        LeftShoulder = true, -- Левое плечо
        LeftArm = true, -- Левая рука до локтя
        LeftElbow = true, -- Левый локоть
        LeftForearm = true, -- Левое предплечье
        LeftWrist = true, -- Левое запястье

        RightShoulder = true, -- Правое плечо
        RightArm = true, -- Правая рука до локтя
        RightElbow = true, -- Правый локоть
        RightForearm = true, -- Правое предплечье
        RightWrist = true, -- Правое запястье

        LeftLeg = true, -- Левая нога до колена
        LeftKnee = true, -- Левое колено
        LeftShin = true, -- Левая голень
        LeftFoot = true, -- Левая нога
        LeftHeel = true, -- Левая пятка

        RightLeg = true, -- Правая нога до колена
        RightKnee = true, -- Правое колено
        RightShin = true, -- Правая голень
        RightFoot = true, -- Правая нога
        RightHeel = true, -- Правая пятка
    },
} )

list.Set( "clothing_system", "fg_fallout_nv_coat", {
    Name = "Coat", -- Название
    Category = "Fallout", -- Категория

	WireModel = "models/coat.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl", -- Модель Entity

    PlayerBase = "hl2_player", -- База для одежды

    EquipSound = "clothing_system/coat/coat_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/coat/coat_unequip.wav", -- Звук при снятии

    Pockets = {
        ['Left pocket'] = 5,
        ['Right pocket'] = 5,
    },

    Bonemerge = true, -- Использовать систему крепления Bonemerge (Надеть модель поверх основной)
    TypePut = {
        Chest = true, -- Грудь
        BodyCenter = true, -- Тело
        Stomach = true, -- Живот
        Thigh = true, -- Бёдра
        Pelvis = true, -- Таз

        LeftShoulder = true, -- Левое плечо
        LeftArm = true, -- Левая рука до локтя
        LeftElbow = true, -- Левый локоть
        LeftForearm = true, -- Левое предплечье
        LeftWrist = true, -- Левое запястье

        RightShoulder = true, -- Правое плечо
        RightArm = true, -- Правая рука до локтя
        RightElbow = true, -- Правый локоть
        RightForearm = true, -- Правое предплечье
        RightWrist = true, -- Правое запястье
    },
} )