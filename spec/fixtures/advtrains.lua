
-- Add fake wagon data for drop overrides

local function addwagon(name)
	minetest.register_entity(":"..name, {})
end

addwagon("advtrains:engine_railbus")

addwagon("advtrains:engine_industrial")
addwagon("advtrains:engine_industrial_big")
addwagon("advtrains:wagon_tank")
addwagon("advtrains:wagon_wood")

addwagon("advtrains:engine_japan")
addwagon("advtrains:wagon_japan")

addwagon("advtrains:subway_wagon")

addwagon("advtrains:boat")
addwagon("advtrains:bus")
