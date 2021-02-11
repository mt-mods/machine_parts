-- Exclude regression tests / unit tests
exclude_files = {
	"**/spec/**",
}

globals = {
    "machine_parts", "minetest"
}

read_globals = {
	-- Lua
	string = {fields = {"split", "trim"}},
	table = {fields = {"copy", "getn"}},
}
