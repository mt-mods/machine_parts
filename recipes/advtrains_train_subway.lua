
local get_material = machine_parts.get_material

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:subway_wagon",
	recipe = {
		{"tempered_glass", "dye_yellow", "light"},
		{"engine_block", "gearbox", "dashboard"},
		{"advtrains:wheel", "drive_shaft", "advtrains:wheel"},
	},
})

minetest.registered_entities["advtrains:subway_wagon"].drops = {
	get_material("engine_block"),
	get_material("dashboard"),
	get_material("gearbox"),
	get_material("advtrains:wheel") .. " 2",
}
