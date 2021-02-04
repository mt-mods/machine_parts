if minetest.get_modpath('basic_materials') then
    minetest.register_craft({
        output = 'machine_parts:gear_assembly',
        recipe = {
            {'basic_materials:gear_steel', 'default:steel_ingot', 'default:steel_ingot'},
            {'basic_materials:gear_steel', 'default:steel_ingot', 'default:steel_ingot'},
            {'basic_materials:gear_steel', 'basic_materials:steel_bar', 'basic_materials:steel_strip'}
        }
    })
end

if minetest.get_modpath('basic_materials') and minetest.get_modpath('dye') and minetest.get_modpath('technic') then
    minetest.register_craft({
        output = 'machine_parts:gearbox',
        recipe = {
            {'machine_parts:gear_assembly', 'technic:cast_iron_block', 'dye:violet'},
            {'machine_parts:gear_assembly', 'technic:cast_iron_block', 'basic_materials:paraffin'},
            {'machine_parts:gear_assembly', 'basic_materials:steel_bar', 'basic_materials:brass_ingot'}
        }
    })
end

if minetest.get_modpath('basic_materials') and minetest.get_modpath('dye') and minetest.get_modpath('technic') then
    minetest.register_craft({
        output = 'machine_parts:engine_block',
        recipe = {
            {'basic_materials:energy_crystal_simple', 'technic:stainless_steel_block', 'dye:green'},
            {'default:mese_crystal', 'technic:cast_iron_block', 'basic_materials:copper_wire'},
            {'basic_materials:motor', 'basic_materials:motor', 'basic_materials:motor'}
        }
    })
end

if minetest.get_modpath('basic_materials') and minetest.get_modpath('dye') and minetest.get_modpath('technic') then
    minetest.register_craft({
        output = 'machine_parts:drive_shaft',
        recipe = {
            {'technic:stainless_steel_ingot', 'dye:yellow', 'technic:stainless_steel_ingot'},
            {'technic:stainless_steel_ingot', 'technic:stainless_steel_ingot', 'technic:stainless_steel_ingot'},
            {'technic:stainless_steel_ingot', 'basic_materials:oil_extract', 'technic:stainless_steel_ingot'}
        }
    })
end

if minetest.get_modpath('technic') and minetest.get_modpath('doors') then
    minetest.register_craft({
        output = 'machine_parts:wagon_frame',
        recipe = {
            {'technic:rubber', 'doors:trapdoor_steel', 'technic:rubber'},
            {'technic:stainless_steel_block', 'technic:cast_iron_block', 'technic:cast_iron_block'},
            {'technic:stainless_steel_ingot', 'technic:stainless_steel_ingot', 'technic:cast_iron_ingot'}
        }
    })
end

if minetest.get_modpath('technic') and minetest.get_modpath('digilines') and minetest.get_modpath('digiterms') and minetest.get_modpath('mesecons_noteblock') and minetest.get_modpath('mesecons_luacontroller') and minetest.get_modpath('mesecons_fpga') then
    minetest.register_craft({
        output = 'machine_parts:dashboard',
        recipe = {
            {'digiterms:lcd_monitor', 'digilines:lcd', 'digiterms:lcd_monitor'},
            {'mesecons_noteblock:noteblock', 'mesecons_luacontroller:luacontroller0000', 'mesecons_fpga:fpga0000'},
            {'digilines:wire_std_00000000', 'technic:rubber', 'technic:stainless_steel_ingot'}
        }
    })
end
