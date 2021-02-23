require("mineunit")

mineunit("core")

-- Override index lookup to make every item available
local old_registered_items = minetest.registered_items
local function override_registered_items()
	minetest.registered_items = setmetatable({}, {
		__index = function(t,k) return {name=k} end,
		__newindex = function(t,k,v) old_registered_items[k] = v end,
	})
end
local function restore_registered_items()
	minetest.registered_items = old_registered_items
end

mineunit:set_modpath("default", "spec/fixtures")
mineunit:set_modpath("advtrains_railbus", "spec/fixtures")
mineunit:set_modpath("advtrains_train_japan", "spec/fixtures")
mineunit:set_modpath("advtrains_train_subway", "spec/fixtures")
mineunit:set_modpath("linetrack", "spec/fixtures")

describe("Material registration", function()

	setup(override_registered_items)
	teardown(restore_registered_items)

	it("initializes with advtrains and linetrack", function()
		sourcefile("init")
		mineunit:mods_loaded()
	end)

	it("registers cast iron", function()
		assert.is_hashed(machine_parts.materials)
		assert.equals(machine_parts.materials.cast_iron, "default:steel_ingot")
	end)

end)

describe("Recipe registration", function()

	it("registered engine block", function()
		assert.is_hashed(minetest.registered_items["machine_parts:engine_block"])
	end)

	it("registered railbus recipe", function()
		assert.is_indexed(mineunit.registered_craft_recipe("advtrains:engine_railbus"))
	end)

end)
