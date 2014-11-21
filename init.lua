-- The most amazing green mod ever! By Megaf - http://megaf.info/ http://megaf.wordpress.com/

minetest.register_tool("default:pick_diamond", {
	description = "Diamond Pickaxe",
	inventory_image = "default_tool_diamondpick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.20}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("default:shovel_diamond", {
	description = "Diamond Shovel",
	inventory_image = "default_tool_diamondshovel.png",
	wield_image = "default_tool_diamondshovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.8, [2]=0.30, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("default:axe_diamond", {
	description = "Diamond Axe",
	inventory_image = "default_tool_diamondaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.20, [2]=0.70, [3]=0.30}, uses=80, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("default:sword_diamond", {
	description = "Diamond Sword",
	inventory_image = "default_tool_diamondsword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.70, [2]=0.40, [3]=0.15}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})

farming.register_hoe(":farming:hoe_diamond", {
	description = "Diamond Hoe",
	inventory_image = "farming_tool_diamondhoe.png",
	max_uses = 2000,
	recipe = {
		{"default:diamond", "default:diamond"},
		{"", "group:stick"},
		{"", "group:stick"},
	}
})
