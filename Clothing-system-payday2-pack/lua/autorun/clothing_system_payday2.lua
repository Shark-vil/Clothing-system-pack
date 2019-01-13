list.Set( "clothing_system", "payday2_hecu", {
    Name = "HECU",
    Category = "PayDay 2",
    SetPlayerModel = true,
    WireModel = "models/payday2/units/hecu_soldier_player.mdl",
    FoldedModel = "models/payday2/units/hecu_soldier_player.mdl",
    CustomCollision = true,
    PlayerBase = "hl2_player",
    Overlay = {
        {"hud/trooperhud", 0},
    },
    EquipSound = "clothing_system/other/other_equip_1.wav",
    UnEquipSound = "clothing_system/cs_unequip.wav",
    WalkSound = {
        "npc/combine_soldier/gear1.wav",
        "npc/combine_soldier/gear2.wav",
        "npc/combine_soldier/gear3.wav",
        "npc/combine_soldier/gear4.wav",
        "npc/combine_soldier/gear5.wav",
        "npc/combine_soldier/gear6.wav",
    },
    TakesDamagePercent = {
        [DMG_BULLET] = .45,
        [DMG_SLASH] = .55,
        [DMG_BURN] = .75,
        [DMG_VEHICLE] = .8,
        [DMG_BLAST] = .75,
        [DMG_CLUB] = .7,
        [DMG_ENERGYBEAM] = .78,
        [DMG_PREVENT_PHYSICS_FORCE] = .85,
    },
})

list.Set( "clothing_system", "payday2_bulldozer", {
    Name = "Bulldozer",
    Category = "PayDay 2",
    SetPlayerModel = true,
    WireModel = "models/payday2/units/russian_bulldozer_player.mdl",
    FoldedModel = "models/payday2/units/russian_bulldozer_player.mdl",
    CustomCollision = true,
    PlayerBase = "hl2_player",
    Overlay = {
        {"hud/payday2_tank.png", 0},
    },
    EquipSound = "clothing_system/other/other_equip_1.wav",
    UnEquipSound = "clothing_system/cs_unequip.wav",
    WalkSound = {
        "npc/combine_soldier/gear1.wav",
        "npc/combine_soldier/gear2.wav",
        "npc/combine_soldier/gear3.wav",
        "npc/combine_soldier/gear4.wav",
        "npc/combine_soldier/gear5.wav",
        "npc/combine_soldier/gear6.wav",
    },
    TakesDamagePercent = {
        [DMG_BULLET] = .35,
        [DMG_SLASH] = .2,
        [DMG_BURN] = .6,
        [DMG_VEHICLE] = .6,
        [DMG_BLAST] = .55,
        [DMG_CLUB] = .2,
        [DMG_ENERGYBEAM] = .65,
        [DMG_PREVENT_PHYSICS_FORCE] = .6,
    },
    Spawn = function(item)
        item["saveArray"]["AddArmor"] = 100
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
        local RemoveArmor = 100

        if ( (ply:Armor()-RemoveArmor) <= 0 ) then
            RemoveArmor = ply:Armor()
        end

        ClothingSystem:SaveSvData(ply, class, {['Armor'] = RemoveArmor})
    end,

    Drop = function (ply, class, item)
        local RemoveArmor = 100

        if ( (ply:Armor()-RemoveArmor) >= 0 ) then
            ply:SetArmor(ply:Armor()-RemoveArmor)
        else
            RemoveArmor = ply:Armor()
            ply:SetArmor(0)
        end

        ClothingSystem:SaveSvData(ply, class, {['Armor'] = 0})

        item["saveArray"]["AddArmor"] = RemoveArmor
    end,
})

list.Set( "clothing_system", "payday2_agent", {
    Name = "Agent",
    Category = "PayDay 2",
    SetPlayerModel = true,
    WireModel = "models/payday2/units/splinter_cell_cloaker_nvg_player.mdl",
    FoldedModel = "models/payday2/units/splinter_cell_cloaker_nvg_player.mdl",
    CustomCollision = true,
    Skin = 1,
    PlayerBase = "hl2_player",
    Overlay = {
        {"hud/payday2_nigh_vision.png", 0},
    },
    EquipSound = "clothing_system/other/other_equip_1.wav",
    UnEquipSound = "clothing_system/other/other_equip_2.wav",
    Equip = function (ply, class, item)
        ClothingSystem:SendLua(ply, [[
            hook.Add( "Think", "payday2_agent", function()
                local dlight = DynamicLight( ]]..ply:UserID()..[[ )
                if ( dlight ) then
                    dlight.pos = LocalPlayer():GetPos()
                    dlight.r = 21
                    dlight.g = 255
                    dlight.b = 0
                    dlight.brightness = 3
                    dlight.Decay = 1000
                    dlight.Size = 3000
                    dlight.DieTime = CurTime() + 1
                end
            end )
        ]])
    end,
    Drop = function (ply, class, item)
        ClothingSystem:SendLua(ply, [[
            hook.Remove( "Think", "payday2_agent")
        ]])
    end,
    Death = function(ply, class)
        ClothingSystem:SendLua(ply, [[
            hook.Remove( "Think", "payday2_agent")
        ]])
    end,
    TakesDamagePercent = {
        [DMG_BULLET] = .8,
        [DMG_SLASH] = .7,
        [DMG_CLUB] = .7,
    },
})
