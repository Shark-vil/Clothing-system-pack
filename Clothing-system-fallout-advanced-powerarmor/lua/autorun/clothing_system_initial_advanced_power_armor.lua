list.Set( "clothing_system", "fallout_power_armor_advancedpowerarmor", {
    Base = "fallout_power_armor",
    Name = "Advanced Power Armor",
    Category = "Fallout",
	WireModel = "models/nikout/advancedpowerarmorpm.mdl",
    FoldedModel = "models/nikout/advancedpowerarmorpm.mdl",
    TakesDamagePercent = {
        [DMG_BULLET]=.3, [DMG_SLASH]=.5, [DMG_BURN]=.5, [DMG_BLAST]=.7, [DMG_CLUB]=.1, [DMG_ENERGYBEAM]=.7,
        [DMG_AIRBOAT]=.7, [DMG_BUCKSHOT]=.2, [DMG_SHOCK]=.0, [DMG_CRUSH]=.3, [DMG_DISSOLVE]=.0, [DMG_BLAST_SURFACE]=.0,
    },
    Pockets = {
        ['Storage compartment'] = 10,
    },
} )