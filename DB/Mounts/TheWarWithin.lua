local addonName, addonTable = ...

local L = LibStub("AceLocale-3.0"):GetLocale("Rarity")
local CONSTANTS = addonTable.constants

if LE_EXPANSION_LEVEL_CURRENT < LE_EXPANSION_WAR_WITHIN then
	return {}
end

local twwMounts = {
	-- 11.0 mounts
	["Reins of the Sureki Skyrazor"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Reins of the Sureki Skyrazor"],
		itemId = 224147,
		spellId = 451486,
		npcs = { 99999 },
		tooltipNpcs = { 218370 },
		statisticId = { 40295, 40296, 40297, 40298 },
		groupSize = 5,
		equalOdds = true,
		chance = 100, -- No data available
		coords = { { i = true, m = CONSTANTS.UIMAPIDS.NERUBAR_PALACE } },
	},
	["Beledar's Spawn"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Beledar's Spawn"],
		itemId = 223315,
		spellId = 448941,
		npcs = { 207802 },
		chance = 100, -- No data available
		coords = { { m = CONSTANTS.UIMAPIDS.HALLOWFALL } },
	},
	["Regurgitated Mole Reins"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Regurgitated Mole Reins"],
		itemId = 223501,
		spellId = 449258,
		npcs = { 220285 },
		chance = 100, -- No data available
		coords = { { m = CONSTANTS.UIMAPIDS.THE_RINGING_DEEPS } },
	},
	["Wick's Lead"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Wick's Lead"],
		itemId = 225548,
		spellId = 449264,
		npcs = { 210797 },
		groupSize = 5,
		equalOdds = true,
		chance = 100, -- No data available
		instanceDifficulties = { [CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_DUNGEON] = true },
		coords = { { m = CONSTANTS.UIMAPIDS.DARKFLAME_CLEFT, i = true } },
	},
	["Alunira"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.COLLECTION,
		name = L["Alunira"],
		itemId = 223270,
		collectedItemId = { 224025 },
		spellId = 447213,
		chance = 10,
		coords = { { m = CONSTANTS.UIMAPIDS.ISLE_OF_DORN } },
	},
	["Dauntless Imperial Lynx"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Dauntless Imperial Lynx"],
		itemId = 223318,
		spellId = 448979,
		items = { 228741 },
		chance = 100, -- No data available
		coords = { { m = CONSTANTS.UIMAPIDS.HALLOWFALL } },
	},
	["Machine Defense Unit 1-11"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.SPECIAL,
		name = L["Machine Defense Unit 1-11"],
		itemId = 223269,
		spellId = 448188,
		chance = 5,
		coords = { { m = CONSTANTS.UIMAPIDS.THE_RINGING_DEEPS } },
	},
	-- 11.1 mounts
	["Salvaged Goblin Gazillionaire's Flying Machine"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Salvaged Goblin Gazillionaire's Flying Machine"],
		spellId = 466026,
		npcs = { 234621 },
		itemId = 229953,
		chance = 100,
		coords = {
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 32.2, y = 21.8, n = L["Gallagio Garbage"] },
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 67.8, y = 29.2, n = L["Gallagio Garbage"] },
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 36.6, y = 45.6, n = L["Gallagio Garbage"] },
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 50.6, y = 63.6, n = L["Gallagio Garbage"] },
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 38.8, y = 81.0, n = L["Gallagio Garbage"] },
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 52.6, y = 83.6, n = L["Gallagio Garbage"] },
			{ m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 69.6, y = 76.6, n = L["Gallagio Garbage"] },
		},
	},
	["Prototype A.S.M.R."] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.BOSS,
		name = L["Prototype A.S.M.R."],
		chance = 100,
		npcs = { 99999 },
		tooltipNpcs = { 241526 },
		lockBossName = "Chrome King Gallywix",
		statisticId = { 41330, 41329, 41328, 41327 },
		groupSize = 10,
		equalOdds = true,
		itemId = 236960,
		spellId = 1221155,
		instanceDifficulties = {
			[CONSTANTS.INSTANCE_DIFFICULTIES.NORMAL_RAID] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.HEROIC_RAID] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.MYTHIC_RAID] = true,
			[CONSTANTS.INSTANCE_DIFFICULTIES.LFR] = true,
		},
		coords = { { i = true, m = CONSTANTS.UIMAPIDS.LIBERATION_OF_UNDERMINE } },
	},
	["Darkfuse Spy-Eye"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.NPC,
		name = L["Darkfuse Spy-Eye"],
		spellId = 466027,
		npcs = { 231310 },
		itemId = 229955,
		chance = 5,
		coords = { { m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 41.2, y = 41.2, n = L["Darkfuse Precipitant"] } },
	},
	["Bronze Goblin Waveshredder"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Bronze Goblin Waveshredder"],
		itemId = 233064,
		spellId = 473188,
		items = { 232465 },
		chance = 100, -- No data available
		coords = { { m = CONSTANTS.UIMAPIDS.UNDERMINE } },
	},
	["Personalized Goblin S.C.R.A.Per"] = {
		cat = CONSTANTS.ITEM_CATEGORIES.TWW,
		type = CONSTANTS.ITEM_TYPES.MOUNT,
		method = CONSTANTS.DETECTION_METHODS.USE,
		name = L["Personalized Goblin S.C.R.A.Per"],
		itemId = 229949,
		spellId = 466020,
		items = { 233557 },
		chance = 20,
		coords = { { m = CONSTANTS.UIMAPIDS.UNDERMINE, x = 25.6, y = 38.2, n = L["Angelo Rustbin"] } },
	},
}

Rarity.ItemDB.MergeItems(Rarity.ItemDB.mounts, twwMounts)
return twwMounts
