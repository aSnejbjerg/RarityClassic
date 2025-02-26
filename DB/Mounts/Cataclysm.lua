local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

local cataclysmMounts = {
	-- 4.x
	["Armored Razzashi Raptor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Armored Razzashi Raptor"],
		spellId = 96491,
		itemId = 68823,
		npcs = { 52151 },
		chance = 100,
		blackMarket = true,
		sourceText = L["Heroic difficulty"],
		lockBossName = "Bloodlord Mandokir",
		coords = { { m = 337, x = 60.4, y = 79.9, i = true } },
	},
	["Experiment 12-B"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Experiment 12-B"],
		spellId = 110039,
		itemId = 78919,
		npcs = { 99999 },
		tooltipNpcs = { 55294 },
		chance = 100,
		statisticId = { 6161, 6162 },
		sourceText = L["Dropped by Ultraxion in Dragon Soul (any raid size or difficulty)"],
		lockBossName = "Ultraxion",
		blackMarket = true,
		coords = { { m = 409, x = 49.6, y = 57.6, i = true } },
	},
	["Flametalon of Alysrazor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Flametalon of Alysrazor"],
		spellId = 101542,
		itemId = 71665,
		npcs = { 99999 },
		tooltipNpcs = { 52530 },
		chance = 100,
		statisticId = { 5970, 5971 },
		sourceText = L["Any raid size or difficulty"],
		blackMarket = true,
		lockBossName = "Alysrazor",
		coords = { { m = 367, x = 64.3, y = 38, i = true } },
	},
	["Fossilized Raptor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.ARCH,
		name = L["Fossilized Raptor"],
		spellId = 84751,
		itemId = 60954,
		raceId = CONSTANTS.ARCHAEOLOGY_RACES.FOSSIL,
		chance = 30,
		sourceText = L["Obtained as a rare project for the Fossil branch of archaeology"],
		coords = {
			{ m = 1 },
			{ m = 7 },
			{ m = 10 },
			{ m = 12 },
			{ m = 13 },
			{ m = 14 },
			{ m = 15 },
			{ m = 17 },
			{ m = 18 },
			{ m = 21 },
			{ m = 22 },
			{ m = 23 },
			{ m = 25 },
			{ m = 26 },
			{ m = 27 },
			{ m = 32 },
			{ m = 36 },
			{ m = 37 },
			{ m = 42 },
			{ m = 47 },
			{ m = 48 },
			{ m = 49 },
			{ m = 50 },
			{ m = 51 },
			{ m = 52 },
			{ m = 56 },
			{ m = 57 },
			{ m = 62 },
			{ m = 63 },
			{ m = 64 },
			{ m = 65 },
			{ m = 66 },
			{ m = 69 },
			{ m = 70 },
			{ m = 71 },
			{ m = 76 },
			{ m = 77 },
			{ m = 78 },
			{ m = 80 },
			{ m = 81 },
			{ m = 83 },
			{ m = 84 },
			{ m = 85 },
			{ m = 87 },
			{ m = 88 },
			{ m = 89 },
			{ m = 998 },
			{ m = 94 },
			{ m = 95 },
			{ m = 97 },
			{ m = 103 },
			{ m = 106 },
			{ m = 110 },
			{ m = 122 },
			{ m = 124 },
			{ m = 179 },
			{ m = 198 },
			{ m = 199 },
			{ m = 201 },
			{ m = 202 },
			{ m = 203 },
			{ m = 204 },
			{ m = 205 },
			{ m = 210 },
			{ m = 217 },
			{ m = 218 },
			{ m = 224 },
			{ m = 241 },
			{ m = 244 },
			{ m = 245 },
			{ m = 249 },
			{ m = 327 },
			{ m = 338 },
			{ m = 425 },
			{ m = 427 },
			{ m = 460 },
			{ m = 461 },
			{ m = 462 },
			{ m = 463 },
			{ m = 465 },
			{ m = 467 },
			{ m = 468 },
			{ m = 469 },
		},
	},
	["Life-Binder's Handmaiden"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Life-Binder's Handmaiden"],
		spellId = 107845,
		itemId = 77069,
		npcs = { 99999 },
		chance = 100,
		statisticId = { 6168 },
		sourceText = L["Dropped by the Madness of Deathwing encounter in Dragon Soul (heroic, any raid size)"],
		wasGuaranteed = true,
		blackMarket = true,
		lockBossName = "Madness of Deathwing",
		coords = { { m = 409, i = true } },
	},
	["Reins of the Blazing Drake"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Blazing Drake"],
		spellId = 107842,
		itemId = 77067,
		npcs = { 99999 },
		chance = 100,
		statisticId = { 6167, 6168 },
		sourceText = L["Dropped by the Madness of Deathwing encounter in Dragon Soul (any raid size or difficulty)"],
		blackMarket = true,
		lockBossName = "Madness of Deathwing",
		coords = { { m = 409, i = true } },
	},
	["Reins of the Drake of the North Wind"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Reins of the Drake of the North Wind"],
		spellId = 88742,
		itemId = 63040,
		npcs = { 43873 },
		chance = 100,
		sourceText = L["Any difficulty"],
		blackMarket = true,
		coords = { { m = 325, x = 51.9, y = 82.1, i = true } },
	},
	["Reins of the Drake of the South Wind"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Drake of the South Wind"],
		spellId = 88744,
		itemId = 63041,
		npcs = { 99999 },
		tooltipNpcs = { 46753 },
		chance = 100,
		statisticId = { 5576, 5577 },
		sourceText = L["Any raid size or difficulty"],
		blackMarket = true,
		lockBossName = "Al'Akir",
		coords = { { m = 328, x = 47.5, y = 50.1, i = true } },
	},
	["Reins of the Grey Riding Camel"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Reins of the Grey Riding Camel"],
		spellId = 88750,
		itemId = 63046,
		chance = 20,
		sourceText = L["Guaranteed drop from Dormus the Camel-Hoarder. Accessing this encounter requires finding a rare Mysterious Camel Figurine in Uldum. These are difficult to spot and, when clicked, have a small chance to grant you access to the Dormus encounter. Rarity will count how many Figurines you've found if you mouseover them."],
		coords = { { m = 249 } },
	},
	["Reins of the Vitreous Stone Drake"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Reins of the Vitreous Stone Drake"],
		spellId = 88746,
		itemId = 63043,
		npcs = { 43214 },
		chance = 100,
		sourceText = L["Any difficulty"],
		blackMarket = true,
		coords = { { m = 324, x = 37, y = 44.7, i = true } },
	},
	["Scepter of Azj'Aqir"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.ARCH,
		name = L["Scepter of Azj'Aqir"],
		spellId = 92155,
		itemId = 64883,
		raceId = CONSTANTS.ARCHAEOLOGY_RACES.TOL_VIR,
		chance = 500,
		sourceText = L["Obtained as a very rare project for the Tol'vir branch of archaeology"],
		coords = { { m = 249 } },
	},
	["Smoldering Egg of Millagazor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Smoldering Egg of Millagazor"],
		spellId = 97493,
		itemId = 69224,
		npcs = { 99999 },
		tooltipNpcs = { 52409 },
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_NORMAL] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_10_HEROIC] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.RAID_25_HEROIC] = true,
		},
		chance = 100,
		statisticId = { 5976, 5977 },
		wasGuaranteed = true,
		blackMarket = true,
		coords = { { m = 367, x = 50.7, y = 15.3, i = true } },
	},
	["Swift Zulian Panther"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.CATA,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Swift Zulian Panther"],
		spellId = 96499,
		itemId = 68824,
		npcs = { 52059 },
		chance = 100,
		blackMarket = true,
		sourceText = L["Heroic difficulty"],
		lockBossName = "High Priestess Kilnara",
		coords = { { m = 337, x = 48, y = 20, i = true } },
	},
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.mounts, cataclysmMounts)
return cataclysmMounts
