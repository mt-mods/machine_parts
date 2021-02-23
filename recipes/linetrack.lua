
machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:boat",
	recipe = {
		{"stainless_steel_block", "laminated_glass", "dashboard"},
		{"engine_block", "gearbox", "rubber"},
		{"stainless_steel_block", "stainless_steel_block", "stainless_steel_block"},
	},
})

machine_parts.register_craft({
	clear_craft = true,
	output = "advtrains:bus",
	recipe = {
		{"tempered_glass", "tempered_glass", "laminated_glass"},
		{"engine_block", "gearbox", "dashboard"},
		{"rubber", "drive_shaft", "rubber"},
	},
})
