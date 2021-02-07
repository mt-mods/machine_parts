-- Add materials

local function add_material(name, value)
	assert(machine_parts.materials[name] ~= nil, "Material not defined in init.lua: "..name)
	if not machine_parts.materials[name] then
		machine_parts.materials[name] = value
	end
end

-- First add_material call will set used material

if minetest.get_modpath('basic_materials') then
	add_material("lead", "technic:lead_ingot")
	add_material("iron", "technic:wrought_iron_ingot")
	add_material("cast_iron", "technic:cast_iron_ingot")
	add_material("carbon_steel", "technic:carbon_steel_ingot")
	add_material("steel", "technic:wrought_iron_ingot")
	add_material("stainless_steel", "technic:stainless_steel_ingot")
end

if minetest.get_modpath('basic_materials') then
	add_material("brass", "basic_materials:brass_ingot")
	add_material("brassblock", "default:brassblock")
	add_material("steel_bar", "basic_materials:steel_bar")
	add_material("steel_strip", "basic_materials:steel_strip")
	add_material("steel_gear", "basic_materials:gear_steel")
end

-- Fallbacks if no mods found that provides better materials
-- Should only use items provided by hard dependencies

add_material("iron", "default:steel_ingot")
add_material("steel", "default:steel_ingot")
add_material("copper", "default:copper_ingot")
add_material("gold", "default:gold_ingot")
add_material("bronze", "default:bronze_ingot")
add_material("brass", "default:bronze_ingot")
add_material("tin", "default:tin_ingot")
add_material("lead", "default:tin_ingot")
add_material("stainless_steel", "default:steel_ingot")
add_material("cast_iron", "default:steel_ingot")

add_material("ironblock", "default:steelblock")
add_material("leadblock", "default:steelblock")
add_material("cast_ironblock", "default:steelblock")
add_material("steelblock", "default:steelblock")
add_material("carbon_steelblock", "default:steelblock")
add_material("stainless_steelblock", "default:steelblock")
add_material("copperblock", "default:copperblock")
add_material("tinblock", "default:tinblock")
add_material("bronzeblock", "default:bronzeblock")
add_material("brassblock", "default:bronzeblock")
add_material("goldblock", "default:goldblock")

add_material("steel_bar", "default:steel_ingot")
add_material("steel_strip", "default:steel_ingot")

add_material("diamond", "default:diamond")

add_material("diamondblock", "default:diamondblock")

-- For this we could check if nothing useful found and define simple gear recipe here
add_material("steel_gear", "default:bronze_ingot")

add_material("copper_wire", "default:copper_ingot")

add_material("ladder_wood", "default:ladder_wood")
add_material("ladder_steel", "default:ladder_steel")

add_material("light", "default:torch")
add_material("glass", "default:glass")
add_material("tempered_glass", "default:obsidian_glass")
add_material("laminated_glass", "default:obsidian_glass")
