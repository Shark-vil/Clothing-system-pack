list.Set( "clothing_system", "fg_power_armor_t51_simple", {
    Base = "fallout_power_armor",
    Name = "Power Armor T-51",
    Category = "Fallout",
	WireModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    FoldedModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    Skin = 0,
    TakesDamagePercent = {
        [DMG_BULLET]=.2,
        [DMG_SLASH]=.4, 
        [DMG_BURN]=.6,
        [DMG_BLAST]=.7,
        [DMG_CLUB]=.0, 
        [DMG_ENERGYBEAM]=.8, 
        [DMG_AIRBOAT]=.7, 
        [DMG_BUCKSHOT]=.0, 
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Think = function(ply, class)
        if (ply:Health() > 60) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010000000000")
            else
                ply:SetBodyGroups("000000000000")
            end
        elseif (ply:Health() > 50) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001000000")
            else
                ply:SetBodyGroups("000001000000")
            end
        elseif (ply:Health() > 40) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001100000")
            else
                ply:SetBodyGroups("000001100000")
            end
        elseif (ply:Health() > 30) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001110000")
            else
                ply:SetBodyGroups("000001110000")
            end
        elseif (ply:Health() > 20) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111000")
            else
                ply:SetBodyGroups("000001111000")
            end
        elseif (ply:Health() > 15) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111100")
            else
                ply:SetBodyGroups("000001111100")
            end
        elseif (ply:Health() > 10) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111110")
            else
                ply:SetBodyGroups("000001111110")
            end
        elseif (ply:Health() > 5) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010011111110")
            else
                ply:SetBodyGroups("000011111110")
            end
        end
    end,
    Damage =  function(ply)
        if (ply:Health() == 60 || ply:Health() == 55) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 50 || ply:Health() == 45) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 40 || ply:Health() == 35) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 30 || ply:Health() == 25) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 20) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 15) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 10) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 5) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        end
    end,
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

list.Set( "clothing_system", "fg_power_armor_t51_flame", {
    Base = "fallout_power_armor",
    Name = "Power Armor T-51 (Flame)",
    Category = "Fallout",
	WireModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    FoldedModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    Skin = 1,
    TakesDamagePercent = {
        [DMG_BULLET]=.2,
        [DMG_SLASH]=.4, 
        [DMG_BURN]=.6,
        [DMG_BLAST]=.7,
        [DMG_CLUB]=.0, 
        [DMG_ENERGYBEAM]=.8, 
        [DMG_AIRBOAT]=.7, 
        [DMG_BUCKSHOT]=.0, 
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Think = function(ply, class)
        if (ply:Health() > 60) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010000000000")
            else
                ply:SetBodyGroups("000000000000")
            end
        elseif (ply:Health() > 50) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001000000")
            else
                ply:SetBodyGroups("000001000000")
            end
        elseif (ply:Health() > 40) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001100000")
            else
                ply:SetBodyGroups("000001100000")
            end
        elseif (ply:Health() > 30) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001110000")
            else
                ply:SetBodyGroups("000001110000")
            end
        elseif (ply:Health() > 20) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111000")
            else
                ply:SetBodyGroups("000001111000")
            end
        elseif (ply:Health() > 15) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111100")
            else
                ply:SetBodyGroups("000001111100")
            end
        elseif (ply:Health() > 10) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111110")
            else
                ply:SetBodyGroups("000001111110")
            end
        elseif (ply:Health() > 5) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010011111110")
            else
                ply:SetBodyGroups("000011111110")
            end
        end
    end,
    Damage =  function(ply)
        if (ply:Health() == 60 || ply:Health() == 55) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 50 || ply:Health() == 45) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 40 || ply:Health() == 35) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 30 || ply:Health() == 25) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 20) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 15) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 10) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 5) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        end
    end,
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

list.Set( "clothing_system", "fg_power_armor_t51_crazy", {
    Base = "fallout_power_armor",
    Name = "Power Armor T-51 (Сrazy)",
    Category = "Fallout",
	WireModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    FoldedModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    Skin = 2,
    TakesDamagePercent = {
        [DMG_BULLET]=.2,
        [DMG_SLASH]=.4, 
        [DMG_BURN]=.6,
        [DMG_BLAST]=.7,
        [DMG_CLUB]=.0, 
        [DMG_ENERGYBEAM]=.8, 
        [DMG_AIRBOAT]=.7, 
        [DMG_BUCKSHOT]=.0, 
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Think = function(ply, class)
        if (ply:Health() > 60) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010000000000")
            else
                ply:SetBodyGroups("000000000000")
            end
        elseif (ply:Health() > 50) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001000000")
            else
                ply:SetBodyGroups("000001000000")
            end
        elseif (ply:Health() > 40) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001100000")
            else
                ply:SetBodyGroups("000001100000")
            end
        elseif (ply:Health() > 30) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001110000")
            else
                ply:SetBodyGroups("000001110000")
            end
        elseif (ply:Health() > 20) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111000")
            else
                ply:SetBodyGroups("000001111000")
            end
        elseif (ply:Health() > 15) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111100")
            else
                ply:SetBodyGroups("000001111100")
            end
        elseif (ply:Health() > 10) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111110")
            else
                ply:SetBodyGroups("000001111110")
            end
        elseif (ply:Health() > 5) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010011111110")
            else
                ply:SetBodyGroups("000011111110")
            end
        end
    end,
    Damage =  function(ply)
        if (ply:Health() == 60 || ply:Health() == 55) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 50 || ply:Health() == 45) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 40 || ply:Health() == 35) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 30 || ply:Health() == 25) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 20) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 15) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 10) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 5) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        end
    end,
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

list.Set( "clothing_system", "fg_power_armor_t51_black", {
    Base = "fallout_power_armor",
    Name = "Power Armor T-51 (Black)",
    Category = "Fallout",
	WireModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    FoldedModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    Skin = 3,
    TakesDamagePercent = {
        [DMG_BULLET]=.2,
        [DMG_SLASH]=.4, 
        [DMG_BURN]=.6,
        [DMG_BLAST]=.7,
        [DMG_CLUB]=.0, 
        [DMG_ENERGYBEAM]=.8, 
        [DMG_AIRBOAT]=.7, 
        [DMG_BUCKSHOT]=.0, 
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Think = function(ply, class)
        if (ply:Health() > 60) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010000000000")
            else
                ply:SetBodyGroups("000000000000")
            end
        elseif (ply:Health() > 50) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001000000")
            else
                ply:SetBodyGroups("000001000000")
            end
        elseif (ply:Health() > 40) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001100000")
            else
                ply:SetBodyGroups("000001100000")
            end
        elseif (ply:Health() > 30) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001110000")
            else
                ply:SetBodyGroups("000001110000")
            end
        elseif (ply:Health() > 20) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111000")
            else
                ply:SetBodyGroups("000001111000")
            end
        elseif (ply:Health() > 15) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111100")
            else
                ply:SetBodyGroups("000001111100")
            end
        elseif (ply:Health() > 10) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111110")
            else
                ply:SetBodyGroups("000001111110")
            end
        elseif (ply:Health() > 5) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010011111110")
            else
                ply:SetBodyGroups("000011111110")
            end
        end
    end,
    Damage =  function(ply)
        if (ply:Health() == 60 || ply:Health() == 55) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 50 || ply:Health() == 45) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 40 || ply:Health() == 35) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 30 || ply:Health() == 25) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 20) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 15) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 10) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 5) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        end
    end,
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

list.Set( "clothing_system", "fg_power_armor_t51_pink", {
    Base = "fallout_power_armor",
    Name = "Power Armor T-51 (Pink)",
    Category = "Fallout",
	WireModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    FoldedModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    Skin = 4,
    TakesDamagePercent = {
        [DMG_BULLET]=.2,
        [DMG_SLASH]=.4, 
        [DMG_BURN]=.6,
        [DMG_BLAST]=.7,
        [DMG_CLUB]=.0, 
        [DMG_ENERGYBEAM]=.8, 
        [DMG_AIRBOAT]=.7, 
        [DMG_BUCKSHOT]=.0, 
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Think = function(ply, class)
        if (ply:Health() > 60) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010000000000")
            else
                ply:SetBodyGroups("000000000000")
            end
        elseif (ply:Health() > 50) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001000000")
            else
                ply:SetBodyGroups("000001000000")
            end
        elseif (ply:Health() > 40) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001100000")
            else
                ply:SetBodyGroups("000001100000")
            end
        elseif (ply:Health() > 30) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001110000")
            else
                ply:SetBodyGroups("000001110000")
            end
        elseif (ply:Health() > 20) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111000")
            else
                ply:SetBodyGroups("000001111000")
            end
        elseif (ply:Health() > 15) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111100")
            else
                ply:SetBodyGroups("000001111100")
            end
        elseif (ply:Health() > 10) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111110")
            else
                ply:SetBodyGroups("000001111110")
            end
        elseif (ply:Health() > 5) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010011111110")
            else
                ply:SetBodyGroups("000011111110")
            end
        end
    end,
    Damage =  function(ply)
        if (ply:Health() == 60 || ply:Health() == 55) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 50 || ply:Health() == 45) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 40 || ply:Health() == 35) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 30 || ply:Health() == 25) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 20) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 15) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 10) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 5) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        end
    end,
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

list.Set( "clothing_system", "fg_power_armor_t51_blue", {
    Base = "fallout_power_armor",
    Name = "Power Armor T-51 (Blue)",
    Category = "Fallout",
	WireModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    FoldedModel = "models/kuma96/powerarmor_t51/resized/powerarmor_t51_mini_pm.mdl",
    Skin = 5,
    TakesDamagePercent = {
        [DMG_BULLET]=.2,
        [DMG_SLASH]=.4, 
        [DMG_BURN]=.6,
        [DMG_BLAST]=.7,
        [DMG_CLUB]=.0, 
        [DMG_ENERGYBEAM]=.8, 
        [DMG_AIRBOAT]=.7, 
        [DMG_BUCKSHOT]=.0, 
        [DMG_SHOCK]=.0,
        [DMG_CRUSH]=.3,
        [DMG_DISSOLVE]=.0,
        [DMG_BLAST_SURFACE]=.0,
    },
    Think = function(ply, class)
        if (ply:Health() > 60) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010000000000")
            else
                ply:SetBodyGroups("000000000000")
            end
        elseif (ply:Health() > 50) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001000000")
            else
                ply:SetBodyGroups("000001000000")
            end
        elseif (ply:Health() > 40) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001100000")
            else
                ply:SetBodyGroups("000001100000")
            end
        elseif (ply:Health() > 30) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001110000")
            else
                ply:SetBodyGroups("000001110000")
            end
        elseif (ply:Health() > 20) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111000")
            else
                ply:SetBodyGroups("000001111000")
            end
        elseif (ply:Health() > 15) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111100")
            else
                ply:SetBodyGroups("000001111100")
            end
        elseif (ply:Health() > 10) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010001111110")
            else
                ply:SetBodyGroups("000001111110")
            end
        elseif (ply:Health() > 5) then
            if (ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack']) then
                ply:SetBodyGroups("010011111110")
            else
                ply:SetBodyGroups("000011111110")
            end
        end
    end,
    Damage =  function(ply)
        if (ply:Health() == 60 || ply:Health() == 55) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 50 || ply:Health() == 45) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 40 || ply:Health() == 35) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 30 || ply:Health() == 25) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 20) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 15) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 10) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        elseif (ply:Health() == 5) then
            ply:EmitSound("physics/metal/metal_box_break"..math.random(2, 4)..".wav")
        end
    end,
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )

list.Set( "clothing_system", "fg_power_armor_t51_jetpack", {
    Name = "Power Armor T-51 - Jetpack",
    Category = "Fallout",
    Module = true,

    WireModel = "models/props_c17/TrapPropeller_Engine.mdl",
    FoldedModel = "models/props_c17/TrapPropeller_Engine.mdl",

    PlayerBase = "hl2_player",

    EquipSound = "kuma96/powerarmor_t51/jetpack_equip.mp3", 
    UnEquipSound = "kuma96/powerarmor_t51/jetpack_drop.mp3",

    Checking = function(ply, class)
        local items = ClothingSystem:PlayerGetItems(ply)
        for k, v in pairs(items) do
            if (
                v == "fg_power_armor_t51_simple" ||
                v == "fg_power_armor_t51_flame" ||
                v == "fg_power_armor_t51_crazy" ||
                v == "fg_power_armor_t51_black" ||
                v == "fg_power_armor_t51_pink" ||
                v == "fg_power_armor_t51_blue"
            ) then
                return true
            end
        end

        return false
    end,

    Equip = function (ply, class, item)
        ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack'] = true
    end,

    Drop = function (ply, class, item)
        ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack'] = false
    end,

    Death = function(ply)
        ply.ClothingSystemData['fg_power_armor_t51_simple_jetpack'] = false
    end,
} )