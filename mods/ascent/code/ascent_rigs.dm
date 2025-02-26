// Rigs and gear themselves.
/obj/item/rig/mantid
	name = "alate combat exosuit"
	desc = "A powerful combat exosuit with integrated power supply, weapon and atmosphere. It's closer to a mech than a rig."
	icon_state = "kexosuit"
	item_state = null
	suit_type = "support exosuit"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = 1.1 * ARMOR_BALLISTIC_RESISTANT,
		laser = 1.1 * ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	armor_type = /datum/extension/armor/ablative
	armor_degradation_speed = 0.05
	online_slowdown = 0
	offline_slowdown = 1
	equipment_overlay_icon = null
	air_type =   /obj/item/tank/mantid/reactor
	cell_type =  /obj/item/cell/mantid
	chest_type = /obj/item/clothing/suit/space/rig/mantid
	helm_type =  /obj/item/clothing/head/helmet/space/rig/mantid
	boot_type =  /obj/item/clothing/shoes/magboots/rig/mantid
	glove_type = /obj/item/clothing/gloves/rig/mantid
	update_visible_name = TRUE
	icon_override = 'mods/ascent/icons/mob/alate/onmob/onmob_back_alate.dmi'
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =    'mods/ascent/icons/mob/gyne/onmob/onmob_back_gyne.dmi',
		SPECIES_MANTID_ALATE =   'mods/ascent/icons/mob/alate/onmob/onmob_back_alate.dmi',
		SPECIES_NABBER =         'icons/mob/species/nabber/onmob_back_gas.dmi',
		SPECIES_MONARCH_QUEEN =  'icons/mob/species/nabber/msq/onmob_back_msq.dmi'
		)
	initial_modules = list(
		/obj/item/rig_module/vision/thermal,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
		)
	req_access = list(access_ascent)
	var/mantid_caste = SPECIES_MANTID_ALATE

// Renamed blade.
/obj/item/rig_module/mounted/energy/energy_blade/mantid
	name = "nanoblade projector"
	desc = "A fusion-powered blade nanofabricator of Ascent design."
	interface_name = "nanoblade projector"
	interface_desc = "A fusion-powered blade nanofabricator of Ascent design."
	interface_name = "nanoblade"
	usable = FALSE
	laser = null

/obj/item/rig_module/mounted/energy/flechette_rifle
	name = "flechette rifle"
	desc = "A flechette nanofabricator and launch system of Ascent design."
	interface_name = "flechette rifle"
	interface_desc = "A flechette nanofabricator and launch system of Ascent design."
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "rifle"
	laser = /obj/item/gun/energy/particle/flechette

/obj/item/rig_module/mounted/energy/particle_rifle
	name = "particle rifle"
	desc = "A mounted particle rifle of Ascent design."
	interface_name = "particle rifle"
	interface_desc = "A mounted particle rifle of Ascent design."
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "rifle"
	laser = /obj/item/gun/energy/particle

/obj/item/rig_module/device/multitool
	name = "mantid integrated multitool"
	desc = "A limited-sentience integrated multitool capable of interfacing with any number of systems."
	interface_name = "multitool"
	interface_desc = "A limited-sentience integrated multitool capable of interfacing with any number of systems."
	device = /obj/item/device/multitool/mantid
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "multitool"
	usable = FALSE
	selectable = TRUE

/obj/item/rig_module/device/multitool/IsMultitool()
	. = ..()
	return device && device.IsMultitool()

/obj/item/rig_module/device/cable_coil
	name = "mantid cable extruder"
	desc = "A cable nanofabricator of Ascent design."
	interface_name = "cable fabricator"
	interface_desc = "A cable nanofabricator of Ascent design."
	device = /obj/item/stack/cable_coil/fabricator
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "cablecoil"
	usable = FALSE
	selectable = TRUE

/obj/item/rig_module/device/welder
	name = "mantid welding arm"
	desc = "An electrical cutting torch of Ascent design."
	interface_name = "welding arm"
	interface_desc = "An electrical cutting torch of Ascent design."
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "welder1"
	engage_string = "Toggle Welder"
	device = /obj/item/weldingtool/electric/mantid
	usable = TRUE
	selectable = TRUE

/obj/item/rig_module/device/clustertool
	name = "mantid clustertool"
	desc = "A complex assembly of self-guiding, modular heads capable of performing most manual tasks."
	interface_name = "modular clustertool"
	interface_desc = "A complex assembly of self-guiding, modular heads capable of performing most manual tasks."
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "clustertool"
	engage_string = "Select Mode"
	device = /obj/item/clustertool
	usable = TRUE
	selectable = TRUE

/obj/item/rig_module/device/clustertool/IsWrench()
	return device && device.IsWrench()

/obj/item/rig_module/device/clustertool/IsWirecutter()
	return device && device.IsWirecutter()

/obj/item/rig_module/device/clustertool/IsScrewdriver()
	return device && device.IsScrewdriver()

/obj/item/rig_module/device/clustertool/IsCrowbar()
	return device && device.IsCrowbar()

// Atmosphere/jetpack filler.
/obj/item/tank/mantid
	name = "mantid gas tank"
	icon_state = "bromomethane"
	distribute_pressure = ONE_ATMOSPHERE*O2STANDARD
	volume = 180

/obj/item/tank/mantid/methyl_bromide
	starting_pressure = list(GAS_METHYL_BROMIDE = 6 * ONE_ATMOSPHERE)

/obj/item/tank/mantid/oxygen
	name = "mantid oxygen tank"
	starting_pressure = list(OXYGEN = 6 * ONE_ATMOSPHERE)

// Boilerplate due to hard typechecks in jetpack code. Todo: make it an extension.
/obj/item/tank/jetpack/ascent
	name = "catalytic maneuvering pack"
	desc = "An integrated Ascent gas processing plant and maneuvering pack that continuously synthesises 'breathable' atmosphere and propellant."
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =  'mods/ascent/icons/mob/gyne/onmob/onmob_back_gyne.dmi',
		SPECIES_MANTID_ALATE = 'mods/ascent/icons/mob/alate/onmob/onmob_back_alate.dmi',
		SPECIES_NABBER = 	   'icons/mob/species/nabber/onmob_back_gas.dmi'
	)
	icon_state = "maneuvering_pack"
	var/refill_gas_type = GAS_METHYL_BROMIDE
	var/gas_regen_amount = 0.03
	var/gas_regen_cap = 30

/obj/item/tank/jetpack/ascent/Initialize()
	starting_pressure = list("[refill_gas_type]" = 6 * ONE_ATMOSPHERE)
	. = ..()

/obj/item/tank/jetpack/ascent/Process()
	..()
	if(air_contents.total_moles < gas_regen_cap)
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

/obj/item/tank/mantid/reactor
	name = "mantid gas reactor"
	desc = "A mantid gas processing plant that continuously synthesises 'breathable' atmosphere."
	var/charge_cost = 12
	var/refill_gas_type = GAS_METHYL_BROMIDE
	var/gas_regen_amount = 0.05
	var/gas_regen_cap = 50

/obj/item/tank/mantid/reactor/Initialize()
	starting_pressure = list("[refill_gas_type]" = 6 * ONE_ATMOSPHERE)
	. = ..()

/obj/item/tank/mantid/reactor/oxygen
	name = "serpentid gas reactor"
	refill_gas_type = GAS_OXYGEN
	distribute_pressure = 31

/obj/item/tank/mantid/reactor/Process()
	..()
	var/obj/item/rig/holder = loc
	if(air_contents.total_moles < gas_regen_cap && istype(holder) && holder.cell && holder.cell.use(charge_cost))
		air_contents.adjust_gas(refill_gas_type, gas_regen_amount)

// Chem dispenser.
/obj/item/rig_module/chem_dispenser/mantid
	name = "mantid chemical injector"
	desc = "A compact chemical dispenser of mantid design."
	interface_name = "mantid chemical injector"
	interface_desc = "A compact chemical dispenser of mantid design."
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "injector"
	charges = list(
		list("bromide",				"bromide",				/datum/reagent/toxin/bromide, 30),
		list("crystallizing agent",	"crystallizing agent",	/datum/reagent/crystal,       30),
		list("dylovene",			"dylovene",				/datum/reagent/dylovene,      30),
		list("tramadol",			"tramadol",				/datum/reagent/tramadol,      30)
	)

/obj/item/rig_module/chem_dispenser/nabber
	name = "serpentid chemical injector"
	desc = "A compact chemical dispenser of mantid design."
	interface_name = "serpentid chemical injector"
	interface_desc = "A compact chemical dispenser of mantid design."
	icon = 'mods/ascent/icons/obj/items/ascent.dmi'
	icon_state = "injector"
	charges = list(
		list("tramadol",            "tramadol",            /datum/reagent/tramadol,     	  30),
		list("dexalin plus",        "dexalin plus",        /datum/reagent/dexalinp,     	  30),
		list("inaprovaline",        "inaprovaline",        /datum/reagent/inaprovaline,  	  30),
		list("spaceacillin",  		"spaceacillin",		   /datum/reagent/spaceacillin,       30),
		list("dylovene",        	"dylovene",      	   /datum/reagent/dylovene,   		  30),
		list("glucose",             "glucose",             /datum/reagent/nutriment/glucose,  30)
	)

/obj/item/rig_module/device/mantid_anomaly_detector
	name = "mantid anomaly detector module"
	desc = "Anomaly detection device of mantid design."
	icon_state = "eldersasparilla"
	interface_name = "Mantid anomaly detector module"
	interface_desc = "A special anomalous zone detector of mantid design."
	engage_string = "Begin Scan"
	use_power_cost = 200
	usable = 1
	selectable = 0
	device = /obj/item/clothing/gloves/anomaly_detector/mantid
	origin_tech = list(TECH_BLUESPACE = 5, TECH_MAGNET = 6, TECH_ENGINEERING = 7)

// Rig definitions.
/obj/item/rig/mantid/gyne
	name = "gyne combat exosuit"
	armor = list(
		melee = ARMOR_MELEE_VERY_HIGH,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/gun/energy/particle,
		/obj/item/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/reagent_containers/food/drinks/cans/waterbottle/ascent
	)
	icon_override = 'mods/ascent/icons/mob/gyne/onmob/onmob_back_gyne.dmi'
	mantid_caste = SPECIES_MANTID_GYNE
	initial_modules = list(
		/obj/item/rig_module/vision/thermal,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/mounted/energy/energy_blade/mantid,
		/obj/item/rig_module/mounted/energy/flechette_rifle,
		/obj/item/rig_module/mounted/energy/particle_rifle,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/actuators,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
	)

/obj/item/rig/mantid/nabber
	name = "serpentid combat exosuit"
	icon_override = 'icons/mob/species/nabber/onmob_back_gas.dmi'
	mantid_caste = SPECIES_NABBER
	air_type =   /obj/item/tank/mantid/reactor/oxygen
	chest_type = /obj/item/clothing/suit/space/rig/mantid/serpentid
	boot_type =  null
	allowed = list(
		/obj/item/clustertool,
		/obj/item/gun/energy/particle,
		/obj/item/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/reagent_containers/food/drinks/cans/waterbottle/ascent
	)
	initial_modules = list(
		/obj/item/rig_module/vision/thermal,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
		)

/obj/item/clothing/suit/space/rig/mantid/serpentid
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS
	species_restricted = list(SPECIES_NABBER, SPECIES_MONARCH_QUEEN)

/obj/item/rig/mantid/nabber/queen
	name = "small combat exosuit"
	icon_override = 'icons/mob/species/nabber/msq/onmob_back_msq.dmi'
	mantid_caste = SPECIES_MONARCH_QUEEN
	initial_modules = list(
		/obj/item/rig_module/vision/thermal,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/mounted/energy/energy_blade/mantid,
		/obj/item/rig_module/mounted/energy/flechette_rifle,
		/obj/item/rig_module/mounted/energy/particle_rifle,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
	)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/gun/energy/particle/small,
		/obj/item/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/reagent_containers/food/drinks/cans/waterbottle/ascent
	)

/obj/item/rig/mantid/mob_can_equip(mob/M, slot)
	. = ..()
	if(. && slot == slot_back)
		var/mob/living/carbon/human/H = M
		if(!istype(H) || H.species.get_bodytype(H) != mantid_caste)
			to_chat(H, "<span class='danger'>Your species cannot wear \the [src].</span>")
			. = 0

/obj/item/clothing/head/helmet/space/rig/mantid
	light_color = "#00ffff"
	icon = 'mods/ascent/icons/obj/clothing/obj_head.dmi'
	desc = "More like a torpedo casing than a helmet."
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE, SPECIES_NABBER, SPECIES_MONARCH_QUEEN)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =    'mods/ascent/icons/mob/gyne/onmob/onmob_head_gyne.dmi',
		SPECIES_MANTID_ALATE =   'mods/ascent/icons/mob/alate/onmob/onmob_head_alate.dmi',
		SPECIES_NABBER =         'icons/mob/species/nabber/onmob_head_gas.dmi',
		SPECIES_MONARCH_QUEEN =  'icons/mob/species/nabber/msq/onmob_head_msq.dmi'
		)
	tint = 1 //INF, WAS NOTHING. High tech

/obj/item/clothing/suit/space/rig/mantid
	desc = "It's closer to a mech than a suit."
	icon = 'mods/ascent/icons/obj/clothing/obj_suit.dmi'
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =    'mods/ascent/icons/mob/gyne/onmob/onmob_suit_gyne.dmi',
		SPECIES_MANTID_ALATE =   'mods/ascent/icons/mob/alate/onmob/onmob_suit_alate.dmi',
		SPECIES_NABBER =         'icons/mob/species/nabber/onmob_suit_gas.dmi',
		SPECIES_MONARCH_QUEEN =  'icons/mob/species/nabber/msq/onmob_suit_msq.dmi'
		)
	allowed = list(
		/obj/item/clustertool,
		/obj/item/gun/energy/particle/small,
		/obj/item/weldingtool/electric/mantid,
		/obj/item/device/multitool/mantid,
		/obj/item/stack/medical/resin,
		/obj/item/reagent_containers/food/drinks/cans/waterbottle/ascent
	)

/obj/item/clothing/shoes/magboots/rig/mantid
	desc = "It's like a highly advanced forklift."
	icon = 'mods/ascent/icons/obj/clothing/obj_feet.dmi'
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =  'mods/ascent/icons/mob/gyne/onmob/onmob_shoes_gyne.dmi',
		SPECIES_MANTID_ALATE = 'mods/ascent/icons/mob/alate/onmob/onmob_shoes_alate.dmi'
		)

/obj/item/clothing/gloves/rig/mantid
	desc = "They look like a cross between a can opener and a Swiss army knife the size of a shoebox."
	icon = 'mods/ascent/icons/mob/alate/onmob/onmob_gloves_alate.dmi'
	siemens_coefficient = 0
	species_restricted = list(SPECIES_MANTID_GYNE, SPECIES_MANTID_ALATE, SPECIES_NABBER, SPECIES_MONARCH_QUEEN)
	sprite_sheets = list(
		SPECIES_MANTID_GYNE =            'mods/ascent/icons/mob/gyne/onmob/onmob_gloves_gyne.dmi',
		SPECIES_MANTID_ALATE =           'mods/ascent/icons/mob/alate/onmob/onmob_gloves_alate.dmi',
		SPECIES_NABBER =                 'icons/mob/species/nabber/onmob_hands_gas.dmi',
		SPECIES_MONARCH_QUEEN =          'icons/mob/species/nabber/msq/onmob_hands_msq.dmi'
		)

//Add Caulship Specific Exosuits

// Rigs and gear themselves.
/obj/item/rig/mantid/seed
	name = "alate support exosuit"
	desc = "A powerful support exosuit with integrated power supply, weapon and atmosphere. It's closer to a mech than a rig."
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = 1.1 * ARMOR_BALLISTIC_PISTOL,
		laser = 1.1 * ARMOR_LASER_HANDGUNS,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	online_slowdown = 1
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/actuators,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
		)

/obj/item/rig/mantid/gyne/seed
	name = "gyne civil support exosuit"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_MAJOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/mantid,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
	)

/obj/item/rig/mantid/nabber/queen/seed
	name = "small civil support exosuit"
	online_slowdown = 1
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = 1.1 * ARMOR_BALLISTIC_RESISTANT,
		laser = 1.1 * ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
	)

/obj/item/rig/mantid/nabber/seed
	name = "serpentid civil support exosuit"
	online_slowdown = 1
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = 1.1 * ARMOR_BALLISTIC_RESISTANT,
		laser = 1.1 * ARMOR_LASER_RIFLES,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
	)
	initial_modules = list(
		/obj/item/rig_module/vision/nvg,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/chem_dispenser/nabber,
		/obj/item/rig_module/device/multitool,
		/obj/item/rig_module/device/cable_coil,
		/obj/item/rig_module/device/welder,
		/obj/item/rig_module/device/clustertool,
		/obj/item/rig_module/mounted/energy/plasmacutter,
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/mantid_anomaly_detector
		)
