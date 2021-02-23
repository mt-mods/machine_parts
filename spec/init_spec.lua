require("mineunit")

mineunit("core")

-- Override index lookup to make every item available
local old_registered_items = minetest.registered_items
local function override_registered_items()
	minetest.registered_items = setmetatable({}, {
		__index = function(t,k) return {name=k} end,
		__newindex = rawget(old_registered_items, "__newindex"),
	})
end
local function restore_registered_items()
	minetest.registered_items = old_registered_items
end

describe("Mod initialization", function()

	setup(override_registered_items)
	teardown(restore_registered_items)

	it("has only default as hard dependency", function()
		mineunit:set_modpath("default", "spec/fixtures")
		sourcefile("init")
		mineunit:mods_loaded()
	end)

end)
