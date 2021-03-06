
local get_material = machine_parts.get_material

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:engine_industrial",
	recipe = {
		{"steel_block", "dye_red", "dashboard"},
		{"engine_block", "wagon_frame", "gearbox"},
		{"advtrains:wheel", "drive_shaft", "advtrains:wheel"}
	}
})

minetest.registered_entities["advtrains:engine_industrial"].drops = {
	get_material("engine_block"),
	get_material("dashboard"),
	get_material("gearbox"),
	get_material("advtrains:wheel") .. " 2",
}

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:engine_industrial_big",
	recipe = {
		{"engine_block", "wagon_frame", "dashboard"},
		{"engine_block", "drive_shaft", "gearbox"},
		{"advtrains:wheel", "advtrains:wheel", "advtrains:wheel"}
	}
})

minetest.registered_entities["advtrains:engine_industrial_big"].drops = {
	get_material("engine_block") .. " 2",
	get_material("dashboard"),
	get_material("gearbox"),
	get_material("advtrains:wheel") .. " 3",
}

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:wagon_tank",
	recipe = {
		{"steel_block", "steel_block", "steel_block"},
		{"stainless_steel_block", "ladder_steel", "stainless_steel_block"},
		{"advtrains:wheel", "ladder_steel", "advtrains:wheel"}
	}
})

minetest.registered_entities["advtrains:wagon_tank"].drops = {
	get_material("stainless_steel_block") .. " 2",
	get_material("advtrains:wheel") .. " 2",
}

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:wagon_wood",
	recipe = {
		{"group:wood", "", "group:wood"},
		{"steel_block", "rubber", "steel_block"},
		{"advtrains:wheel", "dye_red", "advtrains:wheel"}
	}
})

minetest.registered_entities["advtrains:wagon_wood"].drops = {
	get_material("steel_block"),
	get_material("advtrains:wheel") .. " 2",
}
