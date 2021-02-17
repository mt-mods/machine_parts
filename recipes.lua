
machine_parts.register_craft({
	output = 'machine_parts:gear_assembly',
	recipe = {
		{'steel_gear', 'steel', 'steel'},
		{'steel_gear', 'steel', 'steel'},
		{'steel_gear', 'steel_bar', 'steel_strip'}
	}
})

machine_parts.register_craft({
	output = 'machine_parts:gearbox',
	recipe = {
		{'machine_parts:gear_assembly', 'cast_iron_block', 'dye_violet'},
		{'machine_parts:gear_assembly', 'cast_iron_block', 'paraffin'},
		{'machine_parts:gear_assembly', 'steel_bar', 'brass'}
	}
})

machine_parts.register_craft({
	output = 'machine_parts:engine_block',
	recipe = {
		{'battery', 'stainless_steel_block', 'dye_green'},
		{'transformer', 'cast_iron_block', 'copper_wire'},
		{'motor', 'motor', 'motor'}
	}
})

machine_parts.register_craft({
	output = 'machine_parts:drive_shaft',
	recipe = {
		{'stainless_steel', 'dye_yellow', 'stainless_steel'},
		{'stainless_steel', 'stainless_steel', 'stainless_steel'},
		{'stainless_steel', 'oil', 'stainless_steel'}
	}
})

machine_parts.register_craft({
	output = 'machine_parts:wagon_frame',
	recipe = {
		{'rubber', 'ladder_steel', 'rubber'},
		{'stainless_steel_block', 'cast_iron_block', 'cast_iron_block'},
		{'stainless_steel', 'stainless_steel', 'cast_iron'}
	}
})

machine_parts.register_craft({
	output = 'machine_parts:dashboard',
	recipe = {
		{'monitor', 'monitor', 'monitor'},
		{'speaker', 'cpu', 'ic'},
		{'datacable', 'rubber', 'stainless_steel'}
	}
})
