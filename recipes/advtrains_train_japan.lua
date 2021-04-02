
local get_material = machine_parts.get_material

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:engine_japan",
	recipe = {
		{"laminated_glass", "wagon_frame", "dashboard"},
		{"engine_block", "drive_shaft", "gearbox"},
		{"advtrains:wheel", "advtrains:wheel", "advtrains:wheel"}
	}
})

minetest.registered_entities["advtrains:engine_japan"].drops = {
	get_material("engine_block"),
	get_material("dashboard"),
	get_material("gearbox"),
	get_material("advtrains:wheel") .. " 3",
}

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:wagon_japan",
	recipe = {
		{"light", "steel_block", "light"},
		{"tempered_glass", "wagon_frame", "tempered_glass"},
		{"advtrains:wheel", "advtrains:wheel", "advtrains:wheel"}
	}
})

minetest.registered_entities["advtrains:wagon_japan"].drops = {
	get_material("wagon_frame"),
	get_material("advtrains:wheel") .. " 3",
}
