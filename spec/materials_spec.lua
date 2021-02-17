dofile("spec/mineunit/init.lua")

mineunit("core")

mineunit:set_modpath("machine_parts", ".")

sourcefile("init")

describe("Material registration", function()

	-- Nothing here, currently only tests very basic loading / execute initialization code.
	-- Material specifications should be defined and tested here.

end)
