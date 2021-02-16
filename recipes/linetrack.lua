
minetest.clear_craft("advtrains:boat")

machine_parts.register_craft({
	output = "advtrains:boat",
	recipe = {
		{"stainless_steel_block", "laminated_glass", "dashboard"},
		{"engine_block", "gearbox", "rubber"},
		{"stainless_steel_block", "stainless_steel_block", "stainless_steel_block"},
	},
})

minetest.clear_craft("advtrains:bus")

machine_parts.register_craft({
	output = "advtrains:bus",
	recipe = {
		{"tempered_glass", "tempered_glass", "laminated_glass"},
		{"engine_block", "gearbox", "dashboard"},
		{"rubber", "drive_shaft", "rubber"},
	},
})
