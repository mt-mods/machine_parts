
machine_parts.register_craft({
	output = "advtrains:engine_japan",
	recipe = {
		{"laminated_glass", "wagon_frame", "dashboard"},
		{"engine_block", "drive_shaft", "gearbox"},
		{"advtrains:wheel", "advtrains:wheel", "advtrains:wheel"}
	}
})

machine_parts.register_craft({
	output = "advtrains:wagon_japan",
	recipe = {
		{"light", "steel_block", "light"},
		{"tempered_glass", "wagon_frame", "tempered_glass"},
		{"advtrains:wheel", "advtrains:wheel", "advtrains:wheel"}
	}
})
