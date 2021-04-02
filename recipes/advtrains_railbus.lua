
local get_material = machine_parts.get_material

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:engine_railbus",
	recipe = {
		{"laminated_glass", "laminated_glass", "laminated_glass"},
		{"light", "wagon_frame", "dashboard"},
		{"advtrains:wheel", "engine_block", "advtrains:wheel"},
	},
})

minetest.registered_entities["advtrains:engine_railbus"].drops = {
	get_material("engine_block"),
	get_material("dashboard"),
	get_material("advtrains:wheel") .. " 2",
}
