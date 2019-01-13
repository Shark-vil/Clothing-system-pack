list.Set( "clothing_system", "fg_pony_foe_security_armor", {
    Name = "Security Armor", -- Название
    Category = "Fallout: Equestria", -- Категория

	WireModel = "models/ppm/foe_fg_serv/stable_security_armor4.mdl", -- Модель одежды
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl", -- Модель Entity

    PlayerBase = "pony", -- База для одежды

    EquipSound = "clothing_system/cs_equip.wav", -- Звук при надевании
    UnEquipSound = "clothing_system/cs_unequip.wav", -- Звук при снятии
 
    TakeDamageSystem = true, -- Использовать систему повреждений на броне
    GasMask = false, -- Использовать маску против радиации
    TakesDamagePercent = {
        [DMG_BULLET]=.6, -- Урон от пули
        [DMG_SLASH]=.5, -- Урон от острых предметов, или NPC типа Manhacks
        [DMG_BURN]=.9, -- Урон от огня
        [DMG_BLAST]=.9, -- Урон от взрыва
        [DMG_CLUB]=.5, -- Урон от ломика
        [DMG_ENERGYBEAM]=.9, -- Урон от лазера
        [DMG_AIRBOAT]=.70, -- Повреждение от оружия Airboat
        [DMG_BUCKSHOT]=.7, -- Урон от дроби
    },

    Pockets = {
        ['Left pocket'] = 5,
        ['Right pocket'] = 5,
    },

    Bonemerge = true, -- Использовать систему крепления Bonemerge (Надеть модель поверх основной)
    TypePut = {
        Chest = true, 
        BodyCenter = true, 
        FrontLeftHoof = true, 
        FontRightHoof = true, 
        RearLeftHoof = true,
        RearRightHoof = true, 
    },

    -- Only serverside --
    Spawn = function(item)
        item["saveArray"]["AddArmor"] = 50
    end,

    Equip = function (ply, class, item)
        local AddArmor

        if (IsValid(item)) then
            AddArmor = item["saveArray"]["AddArmor"] || 0
        else
            if (ClothingSystem:GetSvData(ply, class, 'Armor')) then
                AddArmor = ClothingSystem:GetSvData(ply, class, 'Armor')
            else
                AddArmor = 0
            end
        end

        if ( (ply:Armor()+AddArmor) <= 100 ) then
            ply:SetArmor(ply:Armor()+AddArmor)
        else
            ply:SetArmor(100)
        end

        ClothingSystem:SaveSvData(ply, class, {['Armor'] = AddArmor})
    end,

    Disconnected = function(ply, class)
        local RemoveArmor = 50

        if ( (ply:Armor()-RemoveArmor) <= 0 ) then
            RemoveArmor = ply:Armor()
        end

        ClothingSystem:SaveSvData(ply, class, {['Armor'] = RemoveArmor})
    end,

    Drop = function (ply, class, item)
        local RemoveArmor = 50

        if ( (ply:Armor()-RemoveArmor) >= 0 ) then
            ply:SetArmor(ply:Armor()-RemoveArmor)
        else
            RemoveArmor = ply:Armor()
            ply:SetArmor(0)
        end

        ClothingSystem:SaveSvData(ply, class, {['Armor'] = 0})

        item["saveArray"]["AddArmor"] = RemoveArmor
    end,
} )

list.Set( "clothing_system", "fg_pony_stripy_hat", {
    Name = "Stripy Hat",
    Category = "Hats",

	WireModel = "models/props/cs_assault/BarrelWarning.mdl",
    FoldedModel = "models/props_c17/SuitCase_Passenger_Physics.mdl",

    PlayerBase = "pony",

    BoneAttach = true,
    Bone = "LrigScull",
    ScaleModel = 0.7,
    xPos = 1.0,
    yPos = -5.0,
    xAng = 50.0,
    yAng = 90.0,

    Bonemerge = false,
    TypePut = {
        Head = true, 
    },
} )

list.Set( "clothing_system", "ponybeats_straightened_out", {
    Name = "Ponybeats straightened out",
    Category = "Accessory",

	WireModel = "models/monmonstar/ponybeats/ponybeats_head.mdl",
    FoldedModel = "models/monmonstar/ponybeats/ponybeats_head.mdl",

    PlayerBase = "pony",

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

    BoneAttach = true,
    Accessory = true,
    Bone = "LrigScull",
    ScaleModel = 0.95,
    xPos = 0.1,
    yPos = 38,
    zPos = 13.5,
    xAng = 0,
    yAng = 0,
    zAng = 90,

    Equip = function(ply, class, item)
        local rnd = math.random(1, 8)
        ply:EmitSound("pony_music__"..rnd)
        local material = "none"
        local soundOff = 0

        if (rnd == 1) then
            material = "effects/invuln_overlay_blue"
            soundOff = 258
        elseif (rnd == 6) then
            material = "effects/invuln_overlay_blue"
            soundOff = 143
        elseif (rnd == 4) then
            material = "effects/invuln_overlay_red"
            soundOff = 121
        end

        if (rnd == 4) then
            timer.Create("ClothingSystem.PonyBeats.StartPlaysound."..ply:SteamID(), 5.6, 1, function()
                timer.Create("VINYL_SCRATCH_FUCKING_BASS_CANNON_"..ply:SteamID(), 0.2, 0, function()
                    ply:ViewPunch( Angle( math.random(-10, 10), math.random(-10, 10), math.random(-25, 25) ) )
                end)
            end)
        end

        ClothingSystem:SendLua(ply, [[
        local ply = LocalPlayer()

        if (!ply.ClothingSystemData['ActiveOverlay']) then
            if (]]..rnd..[[ == 1 || ]]..rnd..[[ == 4 || ]]..rnd..[[ == 6) then
                if (]]..rnd..[[ == 1) then
                    ply.ClothingSystemData['ponybeats_straightened_out_overlay'] = true
                    timer.Create("ClothingSystem.PonyBeats.StartPlaysound", 4.5, 1, function()
                        if (!ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then return end
                        ply.ClothingSystemData['ActiveOverlay'] = {{"effects/invuln_overlay_blue", 0}}
                    end)
                elseif (]]..rnd..[[ == 6) then
                    ply.ClothingSystemData['ponybeats_straightened_out_overlay'] = true
                    timer.Create("ClothingSystem.PonyBeats.StartPlaysound", 11.2, 1, function()
                        if (!ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then return end
                        ply.ClothingSystemData['ActiveOverlay'] = {{"effects/invuln_overlay_blue", 0}}
                    end)
                elseif (]]..rnd..[[ == 4) then
                    ply.ClothingSystemData['ponybeats_straightened_out_overlay'] = true
                    timer.Create("ClothingSystem.PonyBeats.StartPlaysound", 5.7, 1, function()
                        if (!ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then return end
                        ply.ClothingSystemData['ActiveOverlay'] = {{"effects/invuln_overlay_red", 0}}
                    end)
                end

                if (!ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then return end

                ply.ClothingSystemData['ponybeats_straightened_out_timer'] = "SoundPlay.PonyBeats.]]..soundOff..[["
                timer.Create(ply.ClothingSystemData['ponybeats_straightened_out_timer'], ]]..soundOff..[[, 1, function()
                    if (!ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then return end
                    ply.ClothingSystemData['ActiveOverlay'] = false
                    ply.ClothingSystemData['ponybeats_straightened_out_overlay'] = nil
                    ply.ClothingSystemData['ponybeats_straightened_out_timer'] = nil
                    timer.Remove("ClothingSystem.PonyBeats.StartPlaysound")
                    timer.Remove("VINYL_SCRATCH_FUCKING_BASS_CANNON")
                end)
            end
        end
        ]])
    end,

    Drop = function(ply, class, item)
        for i=1, 8 do
            ply:StopSound("pony_music__"..i)
        end

        ClothingSystem:SendLua(ply, [[
        local ply = LocalPlayer()

        if (ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then
            ply.ClothingSystemData['ActiveOverlay'] = false
            ply.ClothingSystemData['ponybeats_straightened_out_overlay'] = nil
            timer.Remove(ply.ClothingSystemData['ponybeats_straightened_out_timer'])
            timer.Remove("ClothingSystem.PonyBeats.StartPlaysound")
            timer.Remove("VINYL_SCRATCH_FUCKING_BASS_CANNON")
            ply.ClothingSystemData['ponybeats_straightened_out_timer'] = nil
        end
        ]])
        timer.Remove("ClothingSystem.PonyBeats.StartPlaysound."..ply:SteamID())
        timer.Remove("VINYL_SCRATCH_FUCKING_BASS_CANNON_"..ply:SteamID())
    end,

    Death = function(ply, class)
        for i=1, 8 do
            ply:StopSound("pony_music__"..i)
        end

        ClothingSystem:SendLua(ply, [[
        local ply = LocalPlayer()

        if (ply.ClothingSystemData['ponybeats_straightened_out_overlay']) then
            ply.ClothingSystemData['ActiveOverlay'] = false
            ply.ClothingSystemData['ponybeats_straightened_out_overlay'] = nil
            timer.Remove(ply.ClothingSystemData['ponybeats_straightened_out_timer'])
            timer.Remove("ClothingSystem.PonyBeats.StartPlaysound")
            timer.Remove("VINYL_SCRATCH_FUCKING_BASS_CANNON")
            ply.ClothingSystemData['ponybeats_straightened_out_timer'] = nil
        end
        ]])
        timer.Remove("ClothingSystem.PonyBeats.StartPlaysound."..ply:SteamID())
        timer.Remove("VINYL_SCRATCH_FUCKING_BASS_CANNON_"..ply:SteamID())
    end,
} )

list.Set( "clothing_system", "ponybeats", {
    Name = "Ponybeats",
    Category = "Accessory",

	WireModel = "models/monmonstar/ponybeats/ponybeats_neck.mdl",
    FoldedModel = "models/monmonstar/ponybeats/ponybeats_neck.mdl",

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

    PlayerBase = "pony",

    BoneAttach = true,
    Accessory = true,
    Bone = "lrigneck2",
    ScaleModel = 1,
    xPos = 0,
    yPos = 32,
    zPos = 9,
    xAng = 120,
    yAng = 0,
    zAng = 90,
} )

list.Set( "clothing_system", "fg_pony_glowring_hoof", {
    Name = "Glow ring right hoof",
    Category = "Accessory",

	WireModel = "models/props_pony/glowring_hoof.mdl",
    FoldedModel = "models/props_pony/glowring_hoof.mdl",

    EquipSound = "clothing_system/other/other_equip_7.wav",
    UnEquipSound = "clothing_system/other/other_equip_8.wav",

    PlayerBase = "pony",

    BoneAttach = true,
    Accessory = true,
    Bone = "Lrig_LEG_FR_Metacarpus",
    ScaleModel = 1,
    xPos = 3.3,
    yPos = 11,
    zPos = 5.6,
    xAng = 2,
    yAng = 90,
    zAng = -10,
} )

list.Set( "clothing_system", "fg_pony_glowring_hoof_left", {
    Name = "Glow ring left hoof",
    Category = "Accessory",

	WireModel = "models/props_pony/glowring_hoof.mdl",
    FoldedModel = "models/props_pony/glowring_hoof.mdl",

    EquipSound = "clothing_system/other/other_equip_7.wav",
    UnEquipSound = "clothing_system/other/other_equip_8.wav",

    PlayerBase = "pony",

    BoneAttach = true,
    Accessory = true,
    Bone = "Lrig_LEG_FL_Metacarpus",
    ScaleModel = 1,
    xPos = 3.3,
    yPos = 11,
    zPos = 5.6,
    xAng = 0,
    yAng = 90,
    zAng = -10,
} )

list.Set( "clothing_system", "fg_pony_glowstick_collar", {
    Name = "Glow stick collar",
    Category = "Accessory",

	WireModel = "models/props_pony/glowstick_collar.mdl",
    FoldedModel = "models/props_pony/glowstick_collar.mdl",

    EquipSound = "clothing_system/other/other_equip_7.wav",
    UnEquipSound = "clothing_system/other/other_equip_8.wav",

    PlayerBase = "pony",

    BoneAttach = true,
    Accessory = true,
    Bone = "lrigneck1",
    ScaleModel = 1,
    xPos = 0,
    yPos = 29,
    zPos = 9.1,
    xAng = 70,
    yAng = 0,
    zAng = 90,
} )

list.Set( "clothing_system", "fallout_equestria_power_armor", {
    Base = "fallout_power_armor",
    Name = "Power Armor",
    PlayerBase = "pony",
    Category = "Fallout: Equestria",
	WireModel = "models/player/maximo/steelhooves_player.mdl",
    FoldedModel = "models/player/maximo/steelhooves_player.mdl",
    TakesDamagePercent = {
        [DMG_BULLET]=.1,
        [DMG_SLASH]=.0,
        [DMG_BURN]=.5,
        [DMG_BLAST]=.6,
        [DMG_CLUB]=.0,
        [DMG_ENERGYBEAM]=.7,
        [DMG_AIRBOAT]=.6,
        [DMG_BUCKSHOT]=.0,
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

--[[
    Music
]]

sound.Add( {
	name = "pony_music__1",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/1.mp3"
} )

sound.Add( {
	name = "pony_music__2",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/2.mp3"
} )

sound.Add( {
	name = "pony_music__3",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/3.mp3"
} )

sound.Add( {
	name = "pony_music__4",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/4.mp3"
} )

sound.Add( {
	name = "pony_music__5",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/5.mp3"
} )

sound.Add( {
	name = "pony_music__6",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/6.mp3"
} )

sound.Add( {
	name = "pony_music__7",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/7.mp3"
} )

sound.Add( {
	name = "pony_music__8",
	channel = CHAN_AUTO,
	volume = 1.0,
	level = 80,
	pitch = 100,
	sound = "pony_music/561276487/8.mp3"
} )