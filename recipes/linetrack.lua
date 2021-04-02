
local get_material = machine_parts.get_material

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:boat",
	recipe = {
		{"stainless_steel_block", "laminated_glass", "dashboard"},
		{"engine_block", "gearbox", "rubber"},
		{"stainless_steel_block", "stainless_steel_block", "stainless_steel_block"},
	},
})

minetest.registered_entities["advtrains:boat"].drops = {
	get_material("engine_block"),
	get_material("dashboard"),
	get_material("gearbox"),
	get_material("stainless_steel_block") .. " 2",
}

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:bus",
	recipe = {
		{"tempered_glass", "tempered_glass", "laminated_glass"},
		{"engine_block", "gearbox", "dashboard"},
		{"rubber", "drive_shaft", "rubber"},
	},
})

minetest.registered_entities["advtrains:bus"].drops = {
	get_material("engine_block"),
	get_material("dashboard"),
	get_material("gearbox"),
}
