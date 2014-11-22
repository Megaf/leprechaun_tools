-- The most amazing green mod ever! By Megaf - http://megaf.info/ http://megaf.wordpress.com/

-- Registering The Amazinly Insanily Awesome and Brillian Leprechaun Crystal!

minetest.register_craftitem("leprechaun_tools:leprechaun_crystal", {
	description = "The Amazing Leprechaun Crystal",
	inventory_image = "leprechaun_crystal.png",
})

-- Registering Tools.
minetest.register_tool("leprechaun_tools:pick_leprechaun", {
	description = "Leprechaun Pickaxe!",
	inventory_image = "leprechaun_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.0, [2]=0.5, [3]=0.20}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
})

minetest.register_tool("leprechaun_tools:shovel_leprechaun", {
	description = "Leprechaun Shovel!",
	inventory_image = "leprechaun_shovel.png",
	wield_image = "leprechaun_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.8, [2]=0.30, [3]=0.10}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("leprechaun_tools:axe_leprechaun", {
	description = "Leprechaun Axe!",
	inventory_image = "leprechaun_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.20, [2]=0.70, [3]=0.30}, uses=80, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("leprechaun_tools:sword_leprechaun", {
	description = "Leprechaun Sword!",
	inventory_image = "leprechaun_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=0.70, [2]=0.40, [3]=0.15}, uses=80, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	}
})

-- Registering Crafts

minetest.register_craft({
	output = 'leprechaun_tools:leprechaun_crystal',
	recipe = {
		{'default:mese_crystal', 'default:diamond', 'default:mese_crystal'},
		{'default:diamond', 'default:diamond', 'default:diamond'},
	}
})

minetest.register_craft({
	output = 'leprechaun_tools:pick_leprechaun',
	recipe = {
		{'leprechaun_tools:leprechaun_crystal', 'leprechaun_tools:leprechaun_crystal', 'leprechaun_tools:leprechaun_crystal'},
		{'', 'group:stick', ''},
		{'', 'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'leprechaun_tools:shovel_leprechaun',
	recipe = {
		{'leprechaun_tools:leprechaun_crystal'},
		{'group:stick'},
		{'group:stick'},
	}
})

minetest.register_craft({
	output = 'leprechaun_tools:axe_leprechaun',
	recipe = {
		{'leprechaun_tools:leprechaun_crystal', 'leprechaun_tools:leprechaun_crystal'},
		{'leprechaun_tools:leprechaun_crystal', 'group:stick'},
		{'', 'group:stick'},
	}
})

minetest.register_craft({
	output = 'leprechaun_tools:axe_leprechaun',
	recipe = {
		{'leprechaun_tools:leprechaun_crystal', 'leprechaun_tools:leprechaun_crystal'},
		{'group:stick', 'leprechaun_tools:leprechaun_crystal'},
		{'group:stick', ''},
	}
})

minetest.register_craft({
	output = 'leprechaun_tools:sword_leprechaun',
	recipe = {
		{'leprechaun_tools:leprechaun_crystal'},
		{'leprechaun_tools:leprechaun_crystal'},
		{'group:stick'},
	}
})

minetest.register_alias('leprechaun_crystal', 'leprechaun_tools:leprechaun_crystal')
print('[leprechaun] loaded.')
