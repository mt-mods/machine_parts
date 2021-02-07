-- Add materials for crafting
-- First successful call to add_material will set used material
local dprint = machine_parts.dprint

local mods = {}
local dupes = {}
local function add_material(mod, name, value)
	assert(machine_parts.materials[name] ~= nil, "Material not defined in init.lua: "..name)
	assert(not dupes[mod..name], "Duplicate call to add_material: "..name)
	dupes[mod..name] = true
	-- Basic consistency and dev checks done, resgister material
	if mods[mod] == nil then
		mods[mod] = minetest.get_modpath(mod) and 1 or 0
		dprint(("Setting mod state %d for %s"):format(mods[mod], mod))
	end
	if mods[mod] == 1 and not machine_parts.materials[name] then
		dprint(("Registering %s as %s from %s"):format(value, name, mod))
		machine_parts.materials[name] = value:find(":") and value or mod .. ":" .. value
	end
end

-- --------------------------------------------
-- Metal alloys, ingots and blocks

add_material("technic", "iron", "wrought_iron_ingot")
add_material("default", "iron", "steel_ingot")
add_material("technic", "iron_block", "wrought_iron_block")
add_material("default", "iron_block", "steelblock")

add_material("technic", "steel", "wrought_iron_ingot")
add_material("default", "steel", "steel_ingot")
add_material("default", "steel_block", "steelblock")

add_material("technic", "cast_iron", "cast_iron_ingot")
add_material("default", "cast_iron", "steel_ingot")
add_material("default", "cast_iron_block", "steelblock")

add_material("technic", "carbon_steel", "carbon_steel_ingot")
add_material("default", "carbon_steel", "steel_ingot")
add_material("technic", "carbon_steel_block", "carbon_steel_block")
add_material("default", "carbon_steel_block", "steelblock")

add_material("technic", "lead", "lead_ingot")
add_material("default", "lead", "tin_ingot")
add_material("technic", "lead_block", "lead_block")
add_material("default", "lead_block", "steelblock")

add_material("technic", "stainless_steel", "stainless_steel_ingot")
add_material("default", "stainless_steel", "steel_ingot")

add_material("technic", "stainless_steel_block", "stainless_steel_block")
add_material("default", "stainless_steel_block", "steelblock")

add_material("basic_materials", "brass", "brass_ingot")
add_material("default",         "brass", "bronze_ingot")

add_material("basic_materials", "brass_block", "brass_block")
add_material("default",         "brass_block", "bronzeblock")

-- Copper, gold, bronze and tin always comes from default mtg
add_material("default", "copper", "copper_ingot")
add_material("default", "copper_block", "copperblock")

add_material("default", "gold", "gold_ingot")
add_material("default", "gold_block", "goldblock")

add_material("default", "bronze", "bronze_ingot")
add_material("default", "bronze_block", "bronzeblock")

add_material("default", "tin", "tin_ingot")
add_material("default", "tin_block", "tinblock")

-- --------------------------------------------
-- Electrical components

add_material("basic_materials", "steel_bar", "steel_bar")
add_material("default",         "steel_bar", "steel_ingot")

add_material("basic_materials", "steel_strip", "steel_strip")
add_material("default",         "steel_strip", "steel_ingot")

add_material("basic_materials", "steel_gear", "gear_steel")
add_material("default",         "steel_gear", "bronze_ingot")

add_material("technic",         "ic", "control_logic_unit")
add_material("basic_materials", "ic", "ic")
add_material("default",         "ic", "mese_crystal")

add_material("mesecons_luacontroller", "cpu", "luacontroller0000")
add_material("mesecons_fpga",          "cpu", "fpga0000")
add_material("technic",                "cpu", "control_logic_unit")
add_material("basic_materials",        "cpu", "ic")
add_material("default",                "cpu", "mese_crystal")

add_material("homedecor",          "speaker", "speaker")
add_material("mesecons_noteblock", "speaker", "noteblock")
add_material("soundblock",         "speaker", "block")
add_material("default",            "speaker", "paper")

add_material("basic_materials", "heating_element", "heating_element")
add_material("default",         "heating_element", "copperblock")

add_material("morelights",      "light", "bulb")
add_material("homedecor",       "light", "glowlight_small_cube_14")
add_material("scifi_nodes",     "light", "light_dynamic")
add_material("default",         "light", "mese_post_light")
add_material("basic_materials", "light", "steel_bar")

add_material("basic_materials", "motor", "motor")
add_material("default",         "motor", "bronzeblock")

add_material("technic",         "transformer", "hv_transformer")
add_material("basic_materials", "transformer", "copper_wire")
add_material("default",         "transformer", "mese_crystal")

add_material("technic",         "battery", "mv_battery_box0")
add_material("basic_materials", "battery", "energy_crystal_simple")
add_material("default",         "battery", "mese")

add_material("digiterms",   "monitor", "lcd_monitor")
add_material("digilines",   "monitor", "lcd")
add_material("scifi_nodes", "monitor", "keysmonitor")
add_material("computer",    "monitor", "monitor")
add_material("homedecor",   "monitor", "television")
add_material("technic",     "monitor", "power_monitor")
add_material("default",     "monitor", "obsidian_glass")

add_material("digilines",          "datacable", "wire_std_00000000")
add_material("mesecons_insulated", "datacable", "insulated_off")
add_material("mesecons",           "datacable", "group:mesecon_conductor_craftable")
add_material("basic_materials",    "datacable", "silver_wire")
add_material("default",            "datacable", "copper_ingot")

-- --------------------------------------------
-- Dyes

add_material("dye",     "dye_violet", "violet")
add_material("default", "dye_violet", "blueberries")

add_material("dye",     "dye_green", "green")
add_material("default", "dye_green", "grass_1")

add_material("dye",     "dye_yellow", "yellow")
add_material("default", "dye_yellow", "gold_lump")

add_material("dye",     "dye_black", "black")
add_material("default", "dye_black", "coal_lump")

-- --------------------------------------------
-- Other

add_material("basic_materials", "paraffin", "paraffin")
add_material("default",         "paraffin", "coal_lump")

add_material("basic_materials", "oil", "oil_extract")
add_material("default",         "oil", "mese_crystal_fragment")

add_material("technic", "rubber", "rubber")
add_material("default", "rubber", "paper")

add_material("default", "diamond", "diamond")

add_material("default", "diamond_block", "diamondblock")

add_material("default", "copper_wire", "copper_ingot")

add_material("default", "ladder_wood", "ladder_wood")
add_material("default", "ladder_steel", "ladder_steel")

add_material("default", "glass", "glass")
add_material("default", "tempered_glass", "obsidian_glass")
add_material("default", "laminated_glass", "obsidian_glass")
