local custommusiccollection = RegisterMod("Custom Music Collection", 1)

if MMC == nil then
	return
end

local musicmgr = MMC.Manager()

Music.MUSIC_CATACOMBS_GREED = Isaac.GetMusicIdByName("Catacombs (greed)")
Music.MUSIC_DEPTHS_GREED = Isaac.GetMusicIdByName("Depths (greed)")
Music.MUSIC_UTERO_GREED = Isaac.GetMusicIdByName("Utero (greed)") --TODO: check for Descensum mod; should be able to prevent the change using just this value
Music.MUSIC_SHEOL_GREED = Isaac.GetMusicIdByName("Sheol (greed)")
Music.MUSIC_FLOOR_6_GREED = Isaac.GetMusicIdByName("Greed Floor 6")
Music.MUSIC_BOSS_OVER_GREED = Isaac.GetMusicIdByName("Boss Room (empty, greed)")
Music.MUSIC_ULTRAGREEDIER_BOSS = Isaac.GetMusicIdByName("Ultra Greedier")
Music.MUSIC_ANGEL_BOSS = Isaac.GetMusicIdByName("Pool of Yule")
Music.MUSIC_SATAN_BOSS_ALT = Isaac.GetMusicIdByName("Satan 666")
Music.MUSIC_MEGASATAN_BOSS = Music.MUSIC_SATAN_BOSS
Music.MUSIC_JINGLE_DELIRIUM_OVER = Isaac.GetMusicIdByName("Satan 666 Outro")
Music.MUSIC_JINGLE_ULTRAGREEDIER_OVER = Isaac.GetMusicIdByName("Ultra Greedier outro")
Music.MUSIC_JINGLE_ANGEL_OVER = Isaac.GetMusicIdByName("Pool of Yule outro")
Music.MUSIC_BLACKMARKET_ROOM = Isaac.GetMusicIdByName("Black Market")
Music.MUSIC_DEVIL_ROOM_ALT = Isaac.GetMusicIdByName("Devil Room (late)")
Music.MUSIC_SHOP_ROOM_ALT = Isaac.GetMusicIdByName("Shop Room (late)")

normaltotainted = {
	[Music.MUSIC_BASEMENT] = Isaac.GetMusicIdByName("Basement (tainted)"),
	[Music.MUSIC_CAVES] = Isaac.GetMusicIdByName("Caves (tainted)"),
	[Music.MUSIC_DEPTHS] = Isaac.GetMusicIdByName("Depths (tainted)"),
	[Music.MUSIC_CELLAR] = Isaac.GetMusicIdByName("Cellar (tainted)"),
	[Music.MUSIC_CATACOMBS] = Isaac.GetMusicIdByName("Catacombs (tainted)"),
	[Music.MUSIC_NECROPOLIS] = Isaac.GetMusicIdByName("Necropolis (tainted)"),
	[Music.MUSIC_WOMB_UTERO] = Isaac.GetMusicIdByName("Womb (tainted)"),
	[Music.MUSIC_GAME_OVER] = Isaac.GetMusicIdByName("Game Over (tainted)"),
	[Music.MUSIC_BOSS] = Isaac.GetMusicIdByName("Boss (tainted)"),
	[Music.MUSIC_CATHEDRAL] = Isaac.GetMusicIdByName("Cathedral (tainted)"),
	[Music.MUSIC_SHEOL] = Isaac.GetMusicIdByName("Sheol (tainted)"),
	[Music.MUSIC_DARK_ROOM] = Isaac.GetMusicIdByName("Dark Room (tainted)"),
	[Music.MUSIC_CHEST] = Isaac.GetMusicIdByName("Chest (tainted)"),
	[Music.MUSIC_BURNING_BASEMENT] = Isaac.GetMusicIdByName("Burning Basement (tainted)"),
	[Music.MUSIC_FLOODED_CAVES] = Isaac.GetMusicIdByName("Flooded Caves (tainted)"),
	[Music.MUSIC_DANK_DEPTHS] = Isaac.GetMusicIdByName("Dank Depths (tainted)"),
	[Music.MUSIC_SCARRED_WOMB] = Isaac.GetMusicIdByName("Scarred Womb (tainted)"),
	[Music.MUSIC_BLUE_WOMB] = Isaac.GetMusicIdByName("Blue Womb (tainted)"),
	[Music.MUSIC_UTERO] = Isaac.GetMusicIdByName("Utero (tainted)"),
	[Music.MUSIC_MOM_BOSS] = Isaac.GetMusicIdByName("Boss (Depths - Mom, tainted)"),
	[Music.MUSIC_MOMS_HEART_BOSS] = Isaac.GetMusicIdByName("Boss (Womb - Mom's Heart, tainted)"),
	[Music.MUSIC_ISAAC_BOSS] = Isaac.GetMusicIdByName("Boss (Cathedral - Isaac, tainted)"),
	[Music.MUSIC_SATAN_BOSS] = Isaac.GetMusicIdByName("Boss (Sheol - Satan, tainted)"),
	[Music.MUSIC_DARKROOM_BOSS] = Isaac.GetMusicIdByName("Boss (Dark Room, tainted)"),
	[Music.MUSIC_BLUEBABY_BOSS] = Isaac.GetMusicIdByName("Boss (Chest - ???, tainted)"),
	[Music.MUSIC_BOSS2] = Isaac.GetMusicIdByName("Boss (alternate, tainted)"),
	[Music.MUSIC_HUSH_BOSS] = Isaac.GetMusicIdByName("Boss (Blue Womb - Hush, tainted)"),
	[Music.MUSIC_ULTRAGREED_BOSS] = Isaac.GetMusicIdByName("Boss (Ultra Greed, tainted)"),
	[Music.MUSIC_LIBRARY_ROOM] = Isaac.GetMusicIdByName("Library Room (tainted)"),
	[Music.MUSIC_SECRET_ROOM] = Isaac.GetMusicIdByName("Secret Room (tainted)"),
	[Music.MUSIC_SECRET_ROOM2] = Isaac.GetMusicIdByName("Secret Room Alt (tainted)"),
	[Music.MUSIC_DEVIL_ROOM] = Isaac.GetMusicIdByName("Devil Room (tainted)"),
	[Music.MUSIC_ANGEL_ROOM] = Isaac.GetMusicIdByName("Angel Room (tainted)"),
	[Music.MUSIC_SHOP_ROOM] = Isaac.GetMusicIdByName("Shop Room (tainted)"),
	[Music.MUSIC_ARCADE_ROOM] = Isaac.GetMusicIdByName("Arcade Room (tainted)"),
	[Music.MUSIC_BOSS_OVER] = Isaac.GetMusicIdByName("Boss Room (empty, tainted)"),
	[Music.MUSIC_CHALLENGE_FIGHT] = Isaac.GetMusicIdByName("Challenge Room (fight, tainted)"),
	[Music.MUSIC_BOSS_RUSH] = Isaac.GetMusicIdByName("Boss Rush (tainted)"),
	[Music.MUSIC_JINGLE_BOSS_RUSH_OUTRO] = Isaac.GetMusicIdByName("Boss Rush Outro (jingle, tainted)"),
	[Music.MUSIC_BOSS3] = Isaac.GetMusicIdByName("Boss (alternate alternate, tainted)"),
	[Music.MUSIC_JINGLE_BOSS_OVER3] = Isaac.GetMusicIdByName("Boss Death Alternate Alternate (jingle, tainted)"),
	[Music.MUSIC_MOTHER_BOSS] = Isaac.GetMusicIdByName("Boss (Mother, tainted)"),
	--[Music.MUSIC_DOGMA_BOSS] = Isaac.GetMusicIdByName("Boss (Dogma, tainted)"),
	--[Music.MUSIC_BEAST_BOSS] = Isaac.GetMusicIdByName("Boss (Beast, tainted)"),
	[Music.MUSIC_JINGLE_MOTHER_OVER] = Isaac.GetMusicIdByName("Boss Mother Death (jingle, tainted)"),
	--[Music.MUSIC_JINGLE_DOGMA_OVER] = Isaac.GetMusicIdByName("Boss Dogma Death (jingle, tainted)"),
	--[Music.MUSIC_JINGLE_BEAST_OVER] = Isaac.GetMusicIdByName("Boss Beast Death (jingle, tainted)"),
	[Music.MUSIC_PLANETARIUM] = Isaac.GetMusicIdByName("Planetarium (tainted)"),
	[Music.MUSIC_SECRET_ROOM_ALT_ALT] = Isaac.GetMusicIdByName("Secret Room Alt Alt (tainted)"),
	[Music.MUSIC_BOSS_OVER_TWISTED] = Isaac.GetMusicIdByName("Boss Room (empty, twisted, tainted)"),
	--[Music.MUSIC_MOTHERS_SHADOW_INTRO] = Isaac.GetMusicIdByName("Mom's Shadow Intro (tainted)"),
	--[Music.MUSIC_DOGMA_INTRO] = Isaac.GetMusicIdByName("Dogma Intro (tainted)"),
	[Music.MUSIC_STRANGE_DOOR_JINGLE] = Isaac.GetMusicIdByName("Strange Door (jingle, tainted)"),
	--[Music.MUSIC_DARK_CLOSET] = Isaac.GetMusicIdByName("Echoes Reverse (tainted)"),
	--[Music.MUSIC_JINGLE_BOSS] = Isaac.GetMusicIdByName("Boss (jingle, tainted)"),
	[Music.MUSIC_JINGLE_BOSS_OVER] = Isaac.GetMusicIdByName("Boss Death (jingle, tainted)"),
	--[Music.MUSIC_JINGLE_HOLYROOM_FIND] = Isaac.GetMusicIdByName("Holy Room Find (jingle, tainted)"),
	[Music.MUSIC_JINGLE_SECRETROOM_FIND] = Isaac.GetMusicIdByName("Secret Room Find (jingle, tainted)"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_0] = Isaac.GetMusicIdByName("Treasure Room Entry (jingle, tainted) 1"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_1] = Isaac.GetMusicIdByName("Treasure Room Entry (jingle, tainted) 2"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_2] = Isaac.GetMusicIdByName("Treasure Room Entry (jingle, tainted) 3"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_3] = Isaac.GetMusicIdByName("Treasure Room Entry (jingle, tainted) 4"),
	--[Music.MUSIC_JINGLE_CHALLENGE_ENTRY] = Isaac.GetMusicIdByName("Challenge Room Entry (jingle, tainted)"),
	[Music.MUSIC_JINGLE_CHALLENGE_OUTRO] = Isaac.GetMusicIdByName("Challenge Room Outro (jingle, tainted)"),
	[Music.MUSIC_JINGLE_GAME_OVER] = Isaac.GetMusicIdByName("Game Over (jingle, tainted)"),
	--[Music.MUSIC_JINGLE_DEVILROOM_FIND] = Isaac.GetMusicIdByName("Devil Room appear (jingle, tainted)"),
	[Music.MUSIC_JINGLE_BOSS_OVER2] = Isaac.GetMusicIdByName("Boss Death Alternate (jingle, tainted)"),
	[Music.MUSIC_JINGLE_HUSH_OVER] = Isaac.GetMusicIdByName("Boss Hush Death (jingle, tainted)"),
	[Music.MUSIC_VOID] = Isaac.GetMusicIdByName("Void (tainted)"),
	[Music.MUSIC_VOID_BOSS] = Isaac.GetMusicIdByName("Boss (Void, tainted)"),
	[Music.MUSIC_DOWNPOUR] = Isaac.GetMusicIdByName("Downpour (tainted)"),
	[Music.MUSIC_MINES] = Isaac.GetMusicIdByName("Mines (tainted)"),
	[Music.MUSIC_MAUSOLEUM] = Isaac.GetMusicIdByName("Mausoleum (tainted)"),
	[Music.MUSIC_CORPSE] = Isaac.GetMusicIdByName("Corpse (tainted)"),
	[Music.MUSIC_DROSS] = Isaac.GetMusicIdByName("Downpour (tainted)"),
	[Music.MUSIC_ASHPIT] = Isaac.GetMusicIdByName("Mines (tainted)"),
	[Music.MUSIC_GEHENNA] = Isaac.GetMusicIdByName("Mausoleum (tainted)"),
	--[Music.MUSIC_MORTIS] = Isaac.GetMusicIdByName("not done (tainted)"),
	--[Music.MUSIC_ISAACS_HOUSE] = Isaac.GetMusicIdByName("Home (tainted)"),
	[Music.MUSIC_DOWNPOUR_REVERSE] = Isaac.GetMusicIdByName("Downpour (reversed, tainted)"),
	[Music.MUSIC_DROSS_REVERSE] = Isaac.GetMusicIdByName("Downpour (reversed, tainted)"),
	--[Music.MUSIC_MINESHAFT_AMBIENT] = Isaac.GetMusicIdByName("Abandoned Mineshaft (tainted)"),
	--[Music.MUSIC_MINESHAFT_ESCAPE] = Isaac.GetMusicIdByName("Mineshaft Escape (tainted)"),
	[Music.MUSIC_REVERSE_GENESIS] = Isaac.GetMusicIdByName("Genesis (reversed, tainted)"),
	[Music.MUSIC_CATACOMBS_GREED] = Isaac.GetMusicIdByName("Catacombs (tainted)"),
	[Music.MUSIC_DEPTHS_GREED] = Isaac.GetMusicIdByName("Depths (tainted)"),
	[Music.MUSIC_UTERO_GREED] = Isaac.GetMusicIdByName("Utero (tainted)"),
	[Music.MUSIC_SHEOL_GREED] = Isaac.GetMusicIdByName("Sheol (tainted)"),
	[Music.MUSIC_FLOOR_6_GREED] = Isaac.GetMusicIdByName("Genesis (reversed, tainted)"),
	[Music.MUSIC_BOSS_OVER_GREED] = Isaac.GetMusicIdByName("Boss Room (empty, tainted)"),
	[Music.MUSIC_ULTRAGREEDIER_BOSS] = Isaac.GetMusicIdByName("Ultra Greedier (tainted)"),
	[Music.MUSIC_ANGEL_BOSS] = Isaac.GetMusicIdByName("Angel Fight (tainted)"),
	[Music.MUSIC_SATAN_BOSS_ALT] = Isaac.GetMusicIdByName("Boss (Sheol - Satan, tainted)"),
	[Music.MUSIC_MEGASATAN_BOSS] = Isaac.GetMusicIdByName("Mega Satan (tainted)"),
	[Music.MUSIC_JINGLE_DELIRIUM_OVER] = Isaac.GetMusicIdByName("Delirium (tainted) outro"),
	[Music.MUSIC_JINGLE_ULTRAGREEDIER_OVER] = Isaac.GetMusicIdByName("Ultra Greedier (tainted) outro"),
	[Music.MUSIC_JINGLE_ANGEL_OVER] = Isaac.GetMusicIdByName("Angel Fight (tainted) outro"),
	[Music.MUSIC_BLACKMARKET_ROOM] = Isaac.GetMusicIdByName("Black Market (tainted)"),
	[Music.MUSIC_DEVIL_ROOM_ALT] = Isaac.GetMusicIdByName("Devil Room (tainted)"),
	[Music.MUSIC_SHOP_ROOM_ALT] = Isaac.GetMusicIdByName("Shop Room (tainted)"),
}

normaltotaintedalt1 = {
	[Music.MUSIC_BASEMENT] = Isaac.GetMusicIdByName("Basement (tainted) nointro"),
	[Music.MUSIC_CAVES] = Isaac.GetMusicIdByName("Caves (tainted) nointro"),
	[Music.MUSIC_DEPTHS] = Isaac.GetMusicIdByName("Depths (tainted) nointro"),
	[Music.MUSIC_CELLAR] = Isaac.GetMusicIdByName("Cellar (tainted) nointro"),
	[Music.MUSIC_CATACOMBS] = Isaac.GetMusicIdByName("Catacombs (tainted) nointro"),
	[Music.MUSIC_NECROPOLIS] = Isaac.GetMusicIdByName("Necropolis (tainted) nointro"),
	[Music.MUSIC_WOMB_UTERO] = Isaac.GetMusicIdByName("Womb (tainted) nointro"),
	[Music.MUSIC_CATHEDRAL] = Isaac.GetMusicIdByName("Cathedral (tainted) nointro"),
	[Music.MUSIC_SHEOL] = Isaac.GetMusicIdByName("Sheol (tainted) nointro"),
	[Music.MUSIC_DARK_ROOM] = Isaac.GetMusicIdByName("Dark Room (tainted) altloop"),
	[Music.MUSIC_CHEST] = Isaac.GetMusicIdByName("Chest (tainted) altloop"),
	[Music.MUSIC_BURNING_BASEMENT] = Isaac.GetMusicIdByName("Burning Basement (tainted) nointro"),
	[Music.MUSIC_FLOODED_CAVES] = Isaac.GetMusicIdByName("Flooded Caves (tainted) nointro"),
	[Music.MUSIC_DANK_DEPTHS] = Isaac.GetMusicIdByName("Dank Depths (tainted) nointro"),
	[Music.MUSIC_SCARRED_WOMB] = Isaac.GetMusicIdByName("Scarred Womb (tainted) altloop"),
	[Music.MUSIC_BLUE_WOMB] = Isaac.GetMusicIdByName("Blue Womb (tainted) altloop"),
	[Music.MUSIC_UTERO] = Isaac.GetMusicIdByName("Utero (tainted) nointro"),
	[Music.MUSIC_VOID] = Isaac.GetMusicIdByName("Void (tainted) nointro"),
	[Music.MUSIC_DOWNPOUR] = Isaac.GetMusicIdByName("Downpour (tainted) nointro"),
	[Music.MUSIC_MINES] = Isaac.GetMusicIdByName("Mines (tainted) nointro"),
	[Music.MUSIC_MAUSOLEUM] = Isaac.GetMusicIdByName("Mausoleum (tainted) nointro"),
	[Music.MUSIC_CORPSE] = Isaac.GetMusicIdByName("Corpse (tainted) nointro"),
	[Music.MUSIC_DROSS] = Isaac.GetMusicIdByName("Downpour (tainted) nointro"),
	[Music.MUSIC_ASHPIT] = Isaac.GetMusicIdByName("Mines (tainted) nointro"),
	[Music.MUSIC_GEHENNA] = Isaac.GetMusicIdByName("Mausoleum (tainted) nointro"),
	[Music.MUSIC_CATACOMBS_GREED] = Isaac.GetMusicIdByName("Catacombs (tainted) nointro"),
	[Music.MUSIC_DEPTHS_GREED] = Isaac.GetMusicIdByName("Depths (tainted) nointro"),
	[Music.MUSIC_UTERO_GREED] = Isaac.GetMusicIdByName("Utero (tainted) nointro"),
	[Music.MUSIC_SHEOL_GREED] = Isaac.GetMusicIdByName("Sheol (tainted) nointro"),
	[Music.MUSIC_FLOOR_6_GREED] = Isaac.GetMusicIdByName("Genesis (reversed, tainted) nointro"),
}

normaltotaintedalt2 = {
	[Music.MUSIC_BASEMENT] = Isaac.GetMusicIdByName("Basement (tainted) altloop"),
	[Music.MUSIC_CAVES] = Isaac.GetMusicIdByName("Caves (tainted) altloop"),
	[Music.MUSIC_DEPTHS] = Isaac.GetMusicIdByName("Depths (tainted) altloop"),
	[Music.MUSIC_CELLAR] = Isaac.GetMusicIdByName("Cellar (tainted) altloop"),
	[Music.MUSIC_CATACOMBS] = Isaac.GetMusicIdByName("Catacombs (tainted) altloop"),
	[Music.MUSIC_NECROPOLIS] = Isaac.GetMusicIdByName("Necropolis (tainted) altloop"),
	[Music.MUSIC_WOMB_UTERO] = Isaac.GetMusicIdByName("Womb (tainted) altloop"),
	[Music.MUSIC_CATHEDRAL] = Isaac.GetMusicIdByName("Cathedral (tainted) altloop"),
	[Music.MUSIC_SHEOL] = Isaac.GetMusicIdByName("Sheol (tainted) altloop"),
	[Music.MUSIC_DARK_ROOM] = Isaac.GetMusicIdByName("Dark Room (tainted) nointro"),
	[Music.MUSIC_CHEST] = Isaac.GetMusicIdByName("Chest (tainted) nointro"),
	[Music.MUSIC_BURNING_BASEMENT] = Isaac.GetMusicIdByName("Burning Basement (tainted) altloop"),
	[Music.MUSIC_FLOODED_CAVES] = Isaac.GetMusicIdByName("Flooded Caves (tainted) altloop"),
	[Music.MUSIC_DANK_DEPTHS] = Isaac.GetMusicIdByName("Dank Depths (tainted) altloop"),
	[Music.MUSIC_SCARRED_WOMB] = Isaac.GetMusicIdByName("Scarred Womb (tainted)"),
	[Music.MUSIC_BLUE_WOMB] = Isaac.GetMusicIdByName("Blue Womb (tainted)"),
	[Music.MUSIC_UTERO] = Isaac.GetMusicIdByName("Utero (tainted) altloop"),
	[Music.MUSIC_VOID] = Isaac.GetMusicIdByName("Void (tainted) altloop"),
	[Music.MUSIC_DOWNPOUR] = Isaac.GetMusicIdByName("Downpour (tainted) altloop"),
	[Music.MUSIC_MINES] = Isaac.GetMusicIdByName("Mines (tainted) altloop"),
	[Music.MUSIC_MAUSOLEUM] = Isaac.GetMusicIdByName("Mausoleum (tainted) altloop"),
	[Music.MUSIC_CORPSE] = Isaac.GetMusicIdByName("Corpse (tainted) altloop"),
	[Music.MUSIC_DROSS] = Isaac.GetMusicIdByName("Downpour (tainted) altloop"),
	[Music.MUSIC_ASHPIT] = Isaac.GetMusicIdByName("Mines (tainted) altloop"),
	[Music.MUSIC_GEHENNA] = Isaac.GetMusicIdByName("Mausoleum (tainted) altloop"),
	[Music.MUSIC_CATACOMBS_GREED] = Isaac.GetMusicIdByName("Catacombs (tainted) altloop"),
	[Music.MUSIC_DEPTHS_GREED] = Isaac.GetMusicIdByName("Depths (tainted) altloop"),
	[Music.MUSIC_UTERO_GREED] = Isaac.GetMusicIdByName("Utero (tainted) altloop"),
	[Music.MUSIC_SHEOL_GREED] = Isaac.GetMusicIdByName("Sheol (tainted) altloop"),
	[Music.MUSIC_FLOOR_6_GREED] = Isaac.GetMusicIdByName("Genesis (reversed, tainted) altloop"),
}

taintedjinglelength = {
	[Music.MUSIC_JINGLE_BOSS_OVER] = 250, --Invictus
	[Music.MUSIC_JINGLE_BOSS_OVER2] = 250, --not satisfied with The Flagbearer outro (200), so using Invictus instead
	[Music.MUSIC_JINGLE_BOSS_OVER3] = 320, --Tandava
}

taintedsfxid = {
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_0] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_1] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_2] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"),
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_3] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"),
	[Music.MUSIC_JINGLE_SECRETROOM_FIND] = Isaac.GetSoundIdByName("Secret Room Jingle (tainted)"),
	[Music.MUSIC_STRANGE_DOOR_JINGLE] = Isaac.GetSoundIdByName("Strange Door Jingle (tainted)"),
}

local loopversion = 0
local currentstage = 0
local currentstagetype = 0
local playingMainTrack = true
local coopMixedSoundtrack = false
local newPlayerSpawned = false --used as a flag to call a function on post render

local function normalAndTaintedPresent()
	local normalPresent = false
	local taintedPresent = false
	for i=0,7 do
		local tempPlayer = Isaac.GetPlayer(i)
		if tempPlayer and tempPlayer.Variant == 0 --0 is true player, 1 is co-op baby
		and not (tempPlayer:GetPlayerType() == PlayerType.PLAYER_THEFORGOTTEN and not tempPlayer:GetSubPlayer()) then --check for "Soul of the Forgotten"
			if tempPlayer:GetPlayerType() >= PlayerType.PLAYER_ISAAC_B then
				taintedPresent = true
			else
				normalPresent = true
			end
		end
	end
	if normalPresent and taintedPresent then
		return true
	end
	return false
end

local function CheckCoopMixOnGameStart()
	coopMixedSoundtrack = normalAndTaintedPresent()
end
custommusiccollection:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, CheckCoopMixOnGameStart)

local function CheckCoopMixOnSpawn(entityPlayer)
	newPlayerSpawned = true
end
custommusiccollection:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, CheckCoopMixOnSpawn, 0) --0 is true player, 1 is co-op baby

local function CheckCoopMixOnRender()
	if newPlayerSpawned then
		coopMixedSoundtrack = normalAndTaintedPresent()
		newPlayerSpawned = false
	end
end
custommusiccollection:AddCallback(ModCallbacks.MC_POST_RENDER, CheckCoopMixOnRender)

local function resetCoopMix()
	coopMixedSoundtrack = false
end
custommusiccollection:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, resetCoopMix)

local function resetLoopVersion()
	loopversion = 0
end
custommusiccollection:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, resetLoopVersion)
custommusiccollection:AddCallback(ModCallbacks.MC_POST_GAME_END, resetLoopVersion)

function TaintedVersion(trackId)
	if normaltotainted[trackId] then
		local level = Game():GetLevel()
		local truecurrentstage = level:GetStage()
		local truecurrentstagetype = level:GetStageType()
		if truecurrentstage ~= currentstage or truecurrentstagetype ~= currentstagetype then
			currentstage = truecurrentstage
			currentstagetype = truecurrentstagetype
			resetLoopVersion()
		end
		
		if taintedjinglelength[trackId] then
			return normaltotainted[trackId], nil, taintedjinglelength[trackId]
		elseif taintedsfxid[trackId] then
			return 0, nil, taintedsfxid[trackId]
		elseif loopversion == 2 and normaltotaintedalt2[trackId] then
			return normaltotaintedalt2[trackId]
		elseif loopversion == 1 and normaltotaintedalt1[trackId] then
			return normaltotaintedalt1[trackId]
		else
			return normaltotainted[trackId]
		end
	else
		return trackId
	end
end

local roomTypesWithMusic = {
	[RoomType.ROOM_BOSS] = true,
	[RoomType.ROOM_MINIBOSS] = true,
	[RoomType.ROOM_SECRET] = true,
	[RoomType.ROOM_SUPERSECRET] = true,
	[RoomType.ROOM_ARCADE] = true,
	[RoomType.ROOM_LIBRARY] = true,
	[RoomType.ROOM_DEVIL] = true,
	[RoomType.ROOM_ANGEL] = true,
	[RoomType.ROOM_PLANETARIUM] = true,
	[RoomType.ROOM_SECRET_EXIT] = true,
	[RoomType.ROOM_ULTRASECRET] = true,
}

local roomTypesMaybeMusic = {
	[RoomType.ROOM_SHOP] = true,
	[RoomType.ROOM_CHALLENGE] = true,
	[RoomType.ROOM_BOSSRUSH] = true,
}

if BlackMarketMusicFlag then
	roomTypesWithMusic[RoomType.ROOM_BLACK_MARKET] = true
end
if DontInterruptBlueWombFlag then
	roomTypesWithMusic[RoomType.ROOM_BOSS] = nil
	roomTypesMaybeMusic[RoomType.ROOM_BOSS] = true
end

local function changeTrackVersion()
	if loopversion == 1 then
		loopversion = 2
	else
		loopversion = 1
	end
end

--TODO: for items and effects that reset the current floor, call the function resetLoopVersion

custommusiccollection:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, function()
	local level = Game():GetLevel()
	currentstage = level:GetStage()
	currentstagetype = level:GetStageType()
end)

local function CheckMaybeRoomConditions(roomtype)
	--return true if this roomtype will play its own special music
	if roomtype == RoomType.ROOM_CHALLENGE or roomtype == RoomType.ROOM_BOSSRUSH then
		local room = Game():GetRoom()
		if room:IsAmbushActive() or room:IsAmbushDone() then
			return true
		end
	elseif roomtype == RoomType.ROOM_SHOP then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		
		if not Game():IsGreedMode() and stage ~= LevelStage.STAGE4_3 then
			return true
		elseif Game():IsGreedMode() and stage ~= LevelStage.STAGE6_GREED then
			return true
		end
	elseif roomtype == RoomType.ROOM_BOSS then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		local room = Game():GetRoom()
		
		if stage ~= LevelStage.STAGE4_3 or not room:IsClear() then
			return true
		end
	elseif roomtype == RoomType.ROOM_BLACK_MARKET then
		return true
	end
	
	return false
end

custommusiccollection:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, function()
    local room = Game():GetRoom()
	local roomtype = room:GetType()
	
	if roomTypesWithMusic[roomtype] or (roomTypesMaybeMusic[roomtype] and CheckMaybeRoomConditions(roomtype)) then
		if playingMainTrack then
			playingMainTrack = false
			changeTrackVersion()
		end
	else
		playingMainTrack = true
	end
end)

custommusiccollection:AddCallback(ModCallbacks.MC_POST_RENDER, function()
	local room = Game():GetRoom()
	local roomtype = room:GetType()
	
	if roomtype == RoomType.ROOM_CHALLENGE or roomtype == RoomType.ROOM_BOSSRUSH then
		if playingMainTrack and (room:IsAmbushActive() or room:IsAmbushDone()) then
			playingMainTrack = false
			changeTrackVersion()
		end
	end
end)

--DELETE THIS enhancement start
local random_music = { --this is for the "DELETE THIS" challenge
	[0] = Music.MUSIC_BASEMENT,
	[1] = Music.MUSIC_CELLAR,
	[2] = Music.MUSIC_BURNING_BASEMENT,
	[3] = Music.MUSIC_DOWNPOUR,
	[4] = Music.MUSIC_DROSS,
	[5] = Music.MUSIC_CAVES,
	[6] = Music.MUSIC_CATACOMBS,
	[7] = Music.MUSIC_FLOODED_CAVES,
	[8] = Music.MUSIC_MINES,
	[9] = Music.MUSIC_ASHPIT,
	[10] = Music.MUSIC_DEPTHS,
	[11] = Music.MUSIC_NECROPOLIS,
	[12] = Music.MUSIC_DANK_DEPTHS,
	[13] = Music.MUSIC_MAUSOLEUM,
	[14] = Music.MUSIC_GEHENNA,
	[15] = Music.MUSIC_WOMB_UTERO,
	[16] = Music.MUSIC_UTERO,
	[17] = Music.MUSIC_SCARRED_WOMB,
	[18] = Music.MUSIC_CORPSE,
	[19] = Music.MUSIC_MORTIS, --doesn't exist yet
	[20] = Music.MUSIC_BLUE_WOMB,
	[21] = Music.MUSIC_SHEOL,
	[22] = Music.MUSIC_CATHEDRAL,
	[23] = Music.MUSIC_DARK_ROOM,
	[24] = Music.MUSIC_CHEST,
	[25] = Music.MUSIC_VOID,
	[26] = Music.MUSIC_ISAACS_HOUSE,
	[27] = Music.MUSIC_DOWNPOUR_REVERSE,
	[28] = Music.MUSIC_DROSS_REVERSE,
	[29] = Music.MUSIC_MINESHAFT_ESCAPE,
	[30] = Music.MUSIC_REVERSE_GENESIS,
	[31] = Music.MUSIC_CREDITS,
	[32] = Music.MUSIC_TITLE,
	[33] = Music.MUSIC_TITLE_AFTERBIRTH,
	[34] = Music.MUSIC_TITLE_REPENTANCE,
	[35] = Music.MUSIC_DEPTHS_GREED,
	[36] = Music.MUSIC_CATACOMBS_GREED,
	[37] = Music.MUSIC_SHEOL_GREED,
	[38] = Music.MUSIC_UTERO_GREED,
	[39] = Music.MUSIC_FLOOR_6_GREED,
	--TAINTED START
	[40] = Music.MUSIC_BASEMENT,
	[41] = Music.MUSIC_CELLAR,
	[42] = Music.MUSIC_BURNING_BASEMENT,
	[43] = Music.MUSIC_DOWNPOUR,
	[44] = Music.MUSIC_DROSS, --doesn't exist yet
	[45] = Music.MUSIC_CAVES,
	[46] = Music.MUSIC_CATACOMBS,
	[47] = Music.MUSIC_FLOODED_CAVES,
	[48] = Music.MUSIC_MINES,
	[49] = Music.MUSIC_ASHPIT, --doesn't exist yet
	[50] = Music.MUSIC_DEPTHS,
	[51] = Music.MUSIC_NECROPOLIS,
	[52] = Music.MUSIC_DANK_DEPTHS,
	[53] = Music.MUSIC_MAUSOLEUM,
	[54] = Music.MUSIC_GEHENNA, --doesn't exist yet
	[55] = Music.MUSIC_WOMB_UTERO,
	[56] = Music.MUSIC_UTERO, --doesn't exist yet
	[57] = Music.MUSIC_SCARRED_WOMB,
	[58] = Music.MUSIC_CORPSE,
	[59] = Music.MUSIC_MORTIS, --doesn't exist yet
	[60] = Music.MUSIC_BLUE_WOMB,
	[61] = Music.MUSIC_SHEOL,
	[62] = Music.MUSIC_CATHEDRAL,
	[63] = Music.MUSIC_DARK_ROOM,
	[64] = Music.MUSIC_CHEST,
	[65] = Music.MUSIC_VOID,
	[66] = Music.MUSIC_ISAACS_HOUSE, --doesn't exist yet
	[67] = Music.MUSIC_DOWNPOUR_REVERSE,
	[68] = Music.MUSIC_DROSS_REVERSE, --doesn't exist yet
	[69] = Music.MUSIC_MINESHAFT_ESCAPE, --doesn't exist yet
	[70] = Music.MUSIC_REVERSE_GENESIS, --this is currently used as Greed floor 6 (tainted)
	--[71] = Isaac.GetMusicIdByName("Greed floor 6 (tainted)")
}
local random_music_size = 71
local random_music_tainted_threshold = 39

local random_boss_music = {
	[0] = Music.MUSIC_NULL,
	[1] = Music.MUSIC_BOSS,
	[2] = Music.MUSIC_BOSS2,
	[3] = Music.MUSIC_BOSS3,
	[4] = Music.MUSIC_CHALLENGE_FIGHT,
	[5] = Music.MUSIC_BOSS_RUSH,
	[6] = Music.MUSIC_MOM_BOSS,
	[7] = Music.MUSIC_MOMS_HEART_BOSS,
	[8] = Music.MUSIC_ISAAC_BOSS,
	[9] = Music.MUSIC_SATAN_BOSS,
	[10] = Music.MUSIC_DARKROOM_BOSS,
	[11] = Music.MUSIC_BLUEBABY_BOSS,
	[12] = Music.MUSIC_HUSH_BOSS,
	[13] = Music.MUSIC_ULTRAGREED_BOSS,
	[14] = Music.MUSIC_VOID_BOSS,
	[15] = Music.MUSIC_MOTHER_BOSS,
	[16] = Music.MUSIC_DOGMA_BOSS,
	[17] = Music.MUSIC_BEAST_BOSS,
	[18] = Music.MUSIC_ULTRAGREEDIER_BOSS,
	[19] = Music.MUSIC_ANGEL_BOSS,
	[20] = Music.MUSIC_SATAN_BOSS_ALT,
	--TAINTED START
	[21] = Music.MUSIC_BOSS,
	[22] = Music.MUSIC_BOSS2,
	[23] = Music.MUSIC_BOSS3,
	[24] = Music.MUSIC_CHALLENGE_FIGHT,
	[25] = Music.MUSIC_BOSS_RUSH,
	[26] = Music.MUSIC_MOM_BOSS,
	[27] = Music.MUSIC_MOMS_HEART_BOSS,
	[28] = Music.MUSIC_ISAAC_BOSS,
	[29] = Music.MUSIC_SATAN_BOSS,
	[30] = Music.MUSIC_DARKROOM_BOSS,
	[31] = Music.MUSIC_BLUEBABY_BOSS,
	[32] = Music.MUSIC_HUSH_BOSS,
	[33] = Music.MUSIC_ULTRAGREED_BOSS,
	[34] = Music.MUSIC_VOID_BOSS,
	[35] = Music.MUSIC_MOTHER_BOSS,
	[36] = Music.MUSIC_DOGMA_BOSS, --doesn't exist yet
	[37] = Music.MUSIC_BEAST_BOSS, --doesn't exist yet
	[38] = Music.MUSIC_ULTRAGREEDIER_BOSS,
	[39] = Music.MUSIC_ANGEL_BOSS,
	[40] = Music.MUSIC_MEGASATAN_BOSS,
}
local random_boss_music_size = 41
local random_boss_music_tainted_threshold = 20

local random_special_music = {
	[0] = Music.MUSIC_NULL,
	[1] = Music.MUSIC_GAME_OVER,
	[2] = Music.MUSIC_LIBRARY_ROOM,
	[3] = Music.MUSIC_SECRET_ROOM,
	[4] = Music.MUSIC_SECRET_ROOM2,
	[5] = Music.MUSIC_SECRET_ROOM_ALT_ALT,
	[6] = Music.MUSIC_DEVIL_ROOM,
	[7] = Music.MUSIC_ANGEL_ROOM,
	[8] = Music.MUSIC_SHOP_ROOM,
	[9] = Music.MUSIC_ARCADE_ROOM,
	[10] = Music.MUSIC_BOSS_OVER,
	[11] = Music.MUSIC_PLANETARIUM,
	[12] = Music.MUSIC_BOSS_OVER_TWISTED,
	[13] = Music.MUSIC_DARK_CLOSET,
	[14] = Music.MUSIC_MINESHAFT_AMBIENT,
	[15] = Music.MUSIC_CREDITS_ALT,
	[16] = Music.MUSIC_BLACKMARKET_ROOM,
	[17] = Music.MUSIC_DEVIL_ROOM_ALT,
	[18] = Music.MUSIC_SHOP_ROOM_ALT,
	[19] = Music.MUSIC_BOSS_OVER_GREED,
	--TAINTED START
	[20] = Music.MUSIC_GAME_OVER,
	[21] = Music.MUSIC_LIBRARY_ROOM,
	[22] = Music.MUSIC_SECRET_ROOM,
	[23] = Music.MUSIC_SECRET_ROOM2,
	[24] = Music.MUSIC_SECRET_ROOM_ALT_ALT, --doesn't exist yet
	[25] = Music.MUSIC_DEVIL_ROOM,
	[26] = Music.MUSIC_ANGEL_ROOM,
	[27] = Music.MUSIC_SHOP_ROOM,
	[28] = Music.MUSIC_ARCADE_ROOM,
	[29] = Music.MUSIC_BOSS_OVER,
	[30] = Music.MUSIC_PLANETARIUM,
	[31] = Music.MUSIC_BOSS_OVER_TWISTED,
	[32] = Music.MUSIC_DARK_CLOSET, --doesn't exist yet
	[33] = Music.MUSIC_MINESHAFT_AMBIENT, --doesn't exist yet
	[34] = Music.MUSIC_BLACKMARKET_ROOM,
}
local random_special_music_size = 35
local random_special_music_tainted_threshold = 19

local random_fight_jingle = {
	[0] = Music.MUSIC_NULL,
	[1] = Music.MUSIC_JINGLE_BOSS_OVER,
	[2] = Music.MUSIC_JINGLE_BOSS_OVER2,
	[3] = Music.MUSIC_JINGLE_BOSS_OVER3,
	[4] = Music.MUSIC_JINGLE_CHALLENGE_OUTRO,
	[5] = Music.MUSIC_JINGLE_BOSS_RUSH_OUTRO,
	[6] = Music.MUSIC_JINGLE_GAME_OVER,
	[7] = Music.MUSIC_JINGLE_HUSH_OVER,
	[8] = Music.MUSIC_JINGLE_MOTHER_OVER,
	[9] = Music.MUSIC_JINGLE_DOGMA_OVER,
	[10] = Music.MUSIC_JINGLE_BEAST_OVER,
	[11] = Music.MUSIC_MOTHERS_SHADOW_INTRO,
	[12] = Music.MUSIC_JINGLE_GAME_START,
	[13] = Music.MUSIC_JINGLE_GAME_START_ALT,
	[14] = Music.MUSIC_JINGLE_DELIRIUM_OVER,
	[15] = Music.MUSIC_JINGLE_ULTRAGREEDIER_OVER,
	--TAINTED START
	[16] = Music.MUSIC_JINGLE_BOSS_OVER,
	[17] = Music.MUSIC_JINGLE_BOSS_OVER2,
	[18] = Music.MUSIC_JINGLE_BOSS_OVER3,
	[19] = Music.MUSIC_JINGLE_CHALLENGE_OUTRO,
	[20] = Music.MUSIC_JINGLE_BOSS_RUSH_OUTRO,
	[21] = Music.MUSIC_JINGLE_GAME_OVER,
	[22] = Music.MUSIC_JINGLE_HUSH_OVER, --doesn't exist
	[23] = Music.MUSIC_JINGLE_MOTHER_OVER,
	[24] = Music.MUSIC_JINGLE_DOGMA_OVER, --doesn't exist
	[25] = Music.MUSIC_JINGLE_BEAST_OVER, --doesn't exist
	[26] = Music.MUSIC_MOTHERS_SHADOW_INTRO, --doesn't exist
	[27] = Music.MUSIC_JINGLE_ANGEL_OVER,
	[28] = Music.MUSIC_JINGLE_ULTRAGREEDIER_OVER,
	[29] = Music.MUSIC_JINGLE_DELIRIUM_OVER,
}
local random_fight_jingle_size = 30
local random_fight_jingle_tainted_threshold = 15

local random_sound_jingle = {
	[0] = SoundEffect.SOUND_NULL,
	[1] = Isaac.GetSoundIdByName("Treasure Jingle 1"),
	[2] = Isaac.GetSoundIdByName("Treasure Jingle 2"),
	[3] = Isaac.GetSoundIdByName("Treasure Jingle 3"),
	[4] = Isaac.GetSoundIdByName("Treasure Jingle 4"),
	[5] = Isaac.GetSoundIdByName("Secret Room Jingle"),
	[6] = Isaac.GetSoundIdByName("Strange Door Jingle"),
	[7] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --1
	[8] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --2
	[9] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --3
	[10] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --4
	[11] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --5
	[12] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --6
	[13] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --7
	[14] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --8
	[15] = Isaac.GetSoundIdByName("Treasure Jingle (tainted)"), --9
	[16] = Isaac.GetSoundIdByName("Secret Room Jingle (tainted)"),
	[17] = Isaac.GetSoundIdByName("Strange Door Jingle (tainted)"),
	[18] = SoundEffect.SOUND_SATAN_ROOM_APPEAR,
	[19] = SoundEffect.SOUND_CHOIR_UNLOCK,
}
local random_sound_jingle_size = 20

local function getRandomStageMusic(seed)
	local seedIndex = seed % random_music_size
	
	if seedIndex > random_music_tainted_threshold then
		return TaintedVersion(random_music[seedIndex])
	else
		return random_music[seedIndex]
	end
end

local function getRandomBossMusic(seed)
	local seedIndex = seed % random_boss_music_size
	
	if seedIndex > random_boss_music_tainted_threshold then
		return TaintedVersion(random_boss_music[seedIndex])
	else
		return random_boss_music[seedIndex]
	end
end

local function getRandomSpecialMusic(seed)
	local seedIndex = seed % random_special_music_size
	
	if seedIndex > random_special_music_tainted_threshold then
		return TaintedVersion(random_special_music[seedIndex])
	else
		return random_special_music[seedIndex]
	end
end

local function getRandomFightJingle(seed)
	local rng = math.random(0,(random_fight_jingle_size - 1))
	
	if rng > random_fight_jingle_tainted_threshold then
		return TaintedVersion(random_fight_jingle[rng])
	else
		return random_fight_jingle[rng]
	end
end

local function getRandomSoundJingle(seed)
	local rng = math.random(0,(random_sound_jingle_size - 1))
	return random_sound_jingle[rng]
end

MMC.AddMusicCallback(custommusiccollection, function()
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS then
		local room = Game():GetRoom()
		local roomseed = room:GetDecorationSeed()
		return getRandomBossMusic(roomseed)
	end
end, 
Music.MUSIC_BOSS, 
Music.MUSIC_BOSS2, 
Music.MUSIC_MOM_BOSS, 
Music.MUSIC_MOMS_HEART_BOSS, 
Music.MUSIC_ISAAC_BOSS, 
Music.MUSIC_BLUEBABY_BOSS, 
Music.MUSIC_HUSH_BOSS,
Music.MUSIC_CHALLENGE_FIGHT,
Music.MUSIC_BOSS_RUSH)

MMC.AddMusicCallback(custommusiccollection, function()
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS then
		local room = Game():GetRoom()
		local roomseed = room:GetDecorationSeed()
		return getRandomSpecialMusic(roomseed)
	end
end,
Music.MUSIC_GAME_OVER,
Music.MUSIC_LIBRARY_ROOM,
Music.MUSIC_SECRET_ROOM,
Music.MUSIC_SECRET_ROOM2,
Music.MUSIC_SECRET_ROOM_ALT_ALT,
Music.MUSIC_DEVIL_ROOM,
Music.MUSIC_ANGEL_ROOM,
Music.MUSIC_SHOP_ROOM,
Music.MUSIC_ARCADE_ROOM,
Music.MUSIC_BOSS_OVER,
Music.MUSIC_PLANETARIUM,
Music.MUSIC_DARK_CLOSET)

MMC.AddMusicCallback(custommusiccollection, function()
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS then
		return getRandomFightJingle()
	end
end,
Music.MUSIC_JINGLE_BOSS_OVER,
Music.MUSIC_JINGLE_BOSS_OVER2,
Music.MUSIC_JINGLE_BOSS_OVER3,
Music.MUSIC_JINGLE_CHALLENGE_OUTRO,
Music.MUSIC_JINGLE_BOSS_RUSH_OUTRO,
Music.MUSIC_JINGLE_GAME_OVER)

MMC.AddMusicCallback(custommusiccollection, function()
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS then
		local randomSfx = getRandomSoundJingle()
		
		return 0, nil, randomSfx
	end
end,
Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_0,
Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_1,
Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_2,
Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_3,
Music.MUSIC_JINGLE_SECRETROOM_FIND,
Music.MUSIC_JINGLE_DEVILROOM_FIND,
Music.MUSIC_JINGLE_HOLYROOM_FIND)

MMC.AddMusicCallback(custommusiccollection, function()
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS then
		local room = Game():GetRoom()
		local roomseed = room:GetDecorationSeed()
		local thisRoomBossMusic = getRandomBossMusic(roomseed)
		
		if thisRoomBossMusic == normaltotainted[Music.MUSIC_MOTHER_BOSS]
		or thisRoomBossMusic == normaltotainted[Music.MUSIC_ISAAC_BOSS]
		or thisRoomBossMusic == normaltotainted[Music.MUSIC_ULTRAGREED_BOSS]
		or thisRoomBossMusic == normaltotainted[Music.MUSIC_VOID_BOSS] then
			return thisRoomBossMusic
		end
	end
end, Music.MUSIC_JINGLE_BOSS)

MMC.AddMusicCallback(custommusiccollection, function(self, trackId)
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS and trackId ~= Music.MUSIC_JINGLE_BOSS and trackId > 0 then
		local seeds = Game():GetSeeds()
		local stage = Game():GetLevel():GetStage()
		local stageseed = seeds:GetStageSeed(stage)
		return getRandomStageMusic(stageseed)
	end
end)
--DELETE THIS enhancement end

--Co-op Mixed soundtrack start
local runSeedTrack = {
	[Music.MUSIC_GAME_OVER] = 1,
	[Music.MUSIC_JINGLE_GAME_OVER] = 2,
	[Music.MUSIC_REVERSE_GENESIS] = 3,
	[Music.MUSIC_DARK_CLOSET] = 4,
}

local stageSeedTrack = {
	[Music.MUSIC_BASEMENT] = 1,
	[Music.MUSIC_CAVES] = 1,
	[Music.MUSIC_DEPTHS] = 1,
	[Music.MUSIC_CELLAR] = 1,
	[Music.MUSIC_CATACOMBS] = 1,
	[Music.MUSIC_NECROPOLIS] = 1,
	[Music.MUSIC_WOMB_UTERO] = 1,
	[Music.MUSIC_CATHEDRAL] = 1,
	[Music.MUSIC_SHEOL] = 1,
	[Music.MUSIC_DARK_ROOM] = 1,
	[Music.MUSIC_CHEST] = 1,
	[Music.MUSIC_BURNING_BASEMENT] = 1,
	[Music.MUSIC_FLOODED_CAVES] = 1,
	[Music.MUSIC_DANK_DEPTHS] = 1,
	[Music.MUSIC_SCARRED_WOMB] = 1,
	[Music.MUSIC_BLUE_WOMB] = 1,
	[Music.MUSIC_UTERO] = 1,
	[Music.MUSIC_VOID] = 1,
	[Music.MUSIC_DOWNPOUR] = 1,
	[Music.MUSIC_MINES] = 1,
	[Music.MUSIC_MAUSOLEUM] = 1,
	[Music.MUSIC_CORPSE] = 1,
	[Music.MUSIC_DROSS] = 1,
	[Music.MUSIC_ASHPIT] = 1,
	[Music.MUSIC_GEHENNA] = 1,
	[Music.MUSIC_MORTIS] = 1,
	[Music.MUSIC_ISAACS_HOUSE] = 1,
	[Music.MUSIC_DOWNPOUR_REVERSE] = 1,
	[Music.MUSIC_DROSS_REVERSE] = 1,
	[Music.MUSIC_CATACOMBS_GREED] = 1,
	[Music.MUSIC_DEPTHS_GREED] = 1,
	[Music.MUSIC_UTERO_GREED] = 1,
	[Music.MUSIC_SHEOL_GREED] = 1,
	[Music.MUSIC_FLOOR_6_GREED] = 1,
	[Music.MUSIC_MINESHAFT_AMBIENT] = 2,
	[Music.MUSIC_MINESHAFT_ESCAPE] = 3,
}

--NOTE: since choosing between boss music 1 and 2 is already determined by the room seed, we avoid using 1 for many boss themes
local roomSeedTrack = {
	--cases to handle:
	--generic boss room (1 - MMC; 2 - boss over; 3 - Boss; 5 - Devil jingle; 6 - Angel jingle)
	--Greed Mode Main room (1 - MMC; 2 - boss over greed; 3 - Boss; 4 - Challenge; 5 - Devil jingle; 6 - Angel jingle)
	--challenge/miniboss room (2 - boss over; 4 - Challenge)
	--devil room (2 - boss over; 4 - Challenge; 5 - devil room)
	--angel room (2 - boss over; 3 - angel fight; 1 - angel room)
	--Hush (1 - Hush; 2 - boss over; 3 - BlueBaby)
	--Satan (1 - MMC; 2 - boss over; 3 - Boss; 4 - Satan boss; 5 - devil room)
	--Mega Satan (1 - MMC; 2 - boss over; 3 - Mega Satan boss; 5 - devil room)
	--Ultra Greed ( 1 - Ultra Greedier; 2 - boss over greed; 3 - Ultra Greed)
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_0] = 1,
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_1] = 1,
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_2] = 1,
	[Music.MUSIC_JINGLE_TREASUREROOM_ENTRY_3] = 1,
	[Music.MUSIC_LIBRARY_ROOM] = 1,
	[Music.MUSIC_SECRET_ROOM] = 1,
	[Music.MUSIC_SECRET_ROOM2] = 1,
	[Music.MUSIC_SHOP_ROOM] = 1,
	[Music.MUSIC_ARCADE_ROOM] = 1,
	[Music.MUSIC_ANGEL_ROOM] = 1,
	[Music.MUSIC_PLANETARIUM] = 1,
	[Music.MUSIC_SECRET_ROOM_ALT_ALT] = 1,
	[Music.MUSIC_SHOP_ROOM_ALT] = 1,
	[Music.MUSIC_BLACKMARKET_ROOM] = 1,
	[Music.MUSIC_ULTRAGREEDIER_BOSS] = 1,
	[Music.MUSIC_JINGLE_ULTRAGREEDIER_OVER] = 1,
	[Music.MUSIC_HUSH_BOSS] = 1,
	[Music.MUSIC_JINGLE_HUSH_OVER] = 1,
	[Music.MUSIC_BOSS_RUSH] = 1,
	[Music.MUSIC_JINGLE_BOSS_RUSH_OUTRO] = 1,
	[Music.MUSIC_MOTHER_BOSS] = 1,
	[Music.MUSIC_JINGLE_MOTHER_OVER] = 1,
	[Music.MUSIC_DOGMA_INTRO] = 1,
	[Music.MUSIC_DOGMA_BOSS] = 1,
	[Music.MUSIC_JINGLE_DOGMA_OVER] = 1,
	[Music.MUSIC_BEAST_BOSS] = 1,
	[Music.MUSIC_JINGLE_BEAST_OVER] = 1,
	[Music.MUSIC_MOTHERS_SHADOW_INTRO] = 1,
	[Music.MUSIC_VOID_BOSS] = 1,
	[Music.MUSIC_JINGLE_DELIRIUM_OVER] = 1,
	
	[Music.MUSIC_BOSS_OVER] = 2,
	[Music.MUSIC_BOSS_OVER_GREED] = 2,
	[Music.MUSIC_BOSS_OVER_TWISTED] = 2,
	
	[Music.MUSIC_BOSS] = 3,
	[Music.MUSIC_BOSS2] = 3,
	[Music.MUSIC_BOSS3] = 3,
	[Music.MUSIC_JINGLE_BOSS_OVER] = 3,
	[Music.MUSIC_JINGLE_BOSS_OVER2] = 3,
	[Music.MUSIC_JINGLE_BOSS_OVER3] = 3,
	[Music.MUSIC_MOM_BOSS] = 3,
	[Music.MUSIC_MOMS_HEART_BOSS] = 3,
	[Music.MUSIC_ISAAC_BOSS] = 3,
	[Music.MUSIC_ULTRAGREED_BOSS] = 3,
	[Music.MUSIC_DARKROOM_BOSS] = 3,
	[Music.MUSIC_BLUEBABY_BOSS] = 3,
	[Music.MUSIC_MEGASATAN_BOSS] = 3,
	[Music.MUSIC_ANGEL_BOSS] = 3,
	[Music.MUSIC_JINGLE_ANGEL_OVER] = 3,
	
	[Music.MUSIC_CHALLENGE_FIGHT] = 4,
	[Music.MUSIC_JINGLE_CHALLENGE_OUTRO] = 4,
	[Music.MUSIC_SATAN_BOSS] = 4,
	[Music.MUSIC_SATAN_BOSS_ALT] = 4,
	
	[Music.MUSIC_DEVIL_ROOM] = 5,
	[Music.MUSIC_DEVIL_ROOM_ALT] = 5,
	[Music.MUSIC_JINGLE_DEVILROOM_FIND] = 5,
	[Music.MUSIC_JINGLE_SECRETROOM_FIND] = 5,
	
	[Music.MUSIC_JINGLE_HOLYROOM_FIND] = 6,
	[Music.MUSIC_STRANGE_DOOR_JINGLE] = 6,
	--[Music.MUSIC_JINGLE_BOSS] = true, --handled elsewhere
}

local function modBitplaceLowerhalf(seed, bitplace)
	local moduloSeed = (seed % (1 << bitplace))
	--if bitplace is 1, (seed % 2), moduloSeed is 0 or 1, return true if value is less than 1
	--if bitplace is 2, (seed % 4), moduloSeed is 0-3, return true if value is less than 2
	--if bitplace is 3, (seed % 8), moduloSeed is 0-7, return true if value is less than 4
	--etc...
	if moduloSeed < (1 << (bitplace - 1)) then
		return true
	else
		return false
	end
end

function SeededCoopTaintedMix(trackId)
	if runSeedTrack[trackId] and runSeedTrack[trackId] > 0 then
		local seeds = Game():GetSeeds()
		local runseed = seeds:GetStartSeed()
		return modBitplaceLowerhalf(runseed, runSeedTrack[trackId])
	elseif stageSeedTrack[trackId] and stageSeedTrack[trackId] > 0 then
		local seeds = Game():GetSeeds()
		local stage = Game():GetLevel():GetStage()
		local stageseed = seeds:GetStageSeed(stage)
		return modBitplaceLowerhalf((stageseed / 10), stageSeedTrack[trackId])
	elseif roomSeedTrack[trackId] and roomSeedTrack[trackId] > 0 then
		local room = Game():GetRoom()
		local roomseed = room:GetDecorationSeed()
		return modBitplaceLowerhalf(roomseed, roomSeedTrack[trackId])
	end
	return false
end
--Co-op Mixed soundtrack end

function NormalOrTainted(trackId)
	local playTaintedVersion = false
	if coopMixedSoundtrack then
		playTaintedVersion = SeededCoopTaintedMix(trackId)
	else
		local player = Isaac.GetPlayer()
		playTaintedVersion = (player:GetPlayerType() >= PlayerType.PLAYER_ISAAC_B)
	end
	
	if playTaintedVersion then
		return TaintedVersion(trackId)
	else
		return trackId
	end
end

MMC.AddMusicCallback(custommusiccollection, function()
	if not Game():IsGreedMode() then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		if stage == LevelStage.STAGE7 then
			local room = Game():GetRoom()
			if room:GetBossID() == 70 then
				return NormalOrTainted(Music.MUSIC_JINGLE_DELIRIUM_OVER)
			end
		end
	end
end, Music.MUSIC_JINGLE_BOSS_OVER, Music.MUSIC_JINGLE_BOSS_OVER2)

MMC.AddMusicCallback(custommusiccollection, function()
	local level = Game():GetLevel()
	if level:GetStage() == LevelStage.STAGE4_3 then
		local room = Game():GetRoom()
		local roomtype = room:GetType()
		if roomtype == RoomType.ROOM_BOSS then
			return NormalOrTainted(Music.MUSIC_JINGLE_HUSH_OVER)
		end
	end
end, Music.MUSIC_JINGLE_BOSS_OVER, Music.MUSIC_JINGLE_BOSS_OVER2)

MMC.AddMusicCallback(custommusiccollection, function()
	local level = Game():GetLevel()
	if level:GetStage() == LevelStage.STAGE4_2 and level:GetStageType() >= StageType.STAGETYPE_REPENTANCE then
		local room = Game():GetRoom()
		local roomtype = room:GetType()
		if roomtype == RoomType.ROOM_BOSS then
			return NormalOrTainted(Music.MUSIC_JINGLE_MOTHER_OVER)
		end
	end
end, Music.MUSIC_JINGLE_BOSS_OVER3)

MMC.AddMusicCallback(custommusiccollection, function()
	if not Game():IsGreedMode() then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		if stage == LevelStage.STAGE6 then
			return NormalOrTainted(Music.MUSIC_MEGASATAN_BOSS)
		end
	end
end, Music.MUSIC_SATAN_BOSS)

custommusiccollection:AddCallback(ModCallbacks.MC_POST_RENDER, function()
	--we have to disable the layer every frame
	--the layer is enabled AFTER the MC_POST_NEW_ROOM callbacks are executed, and that's why MC_POST_NEW_ROOM doesn't work
	if Isaac.GetChallenge() == Challenge.CHALLENGE_DELETE_THIS then
		return
	end
	
	if musicmgr:IsLayerEnabled() then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		if stage == LevelStage.STAGE5 and not Game():IsGreedMode() then
			local stage_type = level:GetStageType()
			if stage_type == StageType.STAGETYPE_WOTL then
				local room = Game():GetRoom()
				if Isaac.CountBosses() == 0 and room:GetFrameCount() < 20 then --don't turn off the layer if we killed the boss but other enemies remain in the room
					musicmgr:DisableLayer() --we don't need to re-enable on new room
				end
			end
		end
	end
end)

custommusiccollection:AddCallback(ModCallbacks.MC_NPC_UPDATE, function(_, entity)
    if entity.Variant == 1 then
		local currentMusicID = musicmgr:GetCurrentMusicID()
		if currentMusicID == Music.MUSIC_ULTRAGREED_BOSS or currentMusicID == TaintedVersion(Music.MUSIC_ULTRAGREED_BOSS) then
			--TODO: we may not need to check for tainted here, because Crossfade will also have callbacks applied to it!
			musicmgr:Crossfade(NormalOrTainted(Music.MUSIC_ULTRAGREEDIER_BOSS), 0.1) --TODO: does this fade rate argument do anything?
			musicmgr:UpdateVolume()
		end
    end
end, EntityType.ENTITY_ULTRA_GREED)

MMC.AddMusicCallback(custommusiccollection, function()
	local level = Game():GetLevel()
	local stage = level:GetStage()
	local stage_type = level:GetStageType()
	local room = Game():GetRoom()
	
	--go straight into boss theme during VS portrait
	if (stage == LevelStage.STAGE4_2 and stage_type >= StageType.STAGETYPE_REPENTANCE) --Mother
	or (Isaac.GetChallenge() == Challenge.CHALLENGE_RED_REDEMPTION and stage == LevelStage.STAGE4_1) --Mother in Red Redemption challenge
	or (stage == LevelStage.STAGE5 and stage_type == StageType.STAGETYPE_WOTL) --Isaac in Cathedral
	or (stage == LevelStage.STAGE7 and (room:GetBossID() == 39 or room:GetBossID() == 70)) --Delirium and Isaac in Void
	or (stage == LevelStage.STAGE7_GREED and Game():IsGreedMode()) --Ultra Greed
	then
		local skipBossJingle = false
		local bosstrack = MMC.GetBossTrack()
		
		if coopMixedSoundtrack then
			skipBossJingle = SeededCoopTaintedMix(bosstrack)
		else
			local player = Isaac.GetPlayer()
			skipBossJingle = (player:GetPlayerType() >= PlayerType.PLAYER_ISAAC_B)
		end
		
		if skipBossJingle then
			return normaltotainted[bosstrack]
		end
	end
end, Music.MUSIC_JINGLE_BOSS)

MMC.AddMusicCallback(custommusiccollection, function()
	local room = Game():GetRoom()
	local roomtype = room:GetType()
	if roomtype == RoomType.ROOM_ANGEL or roomtype == RoomType.ROOM_SACRIFICE or roomtype == RoomType.ROOM_SUPERSECRET then
		return NormalOrTainted(Music.MUSIC_ANGEL_BOSS)
	end
end, Music.MUSIC_BOSS, Music.MUSIC_BOSS2, Music.MUSIC_BOSS3)

MMC.AddMusicCallback(custommusiccollection, function()
	local room = Game():GetRoom()
	local roomtype = room:GetType()
	if roomtype == RoomType.ROOM_ANGEL or roomtype == RoomType.ROOM_SACRIFICE or roomtype == RoomType.ROOM_SUPERSECRET then
		return NormalOrTainted(Music.MUSIC_JINGLE_ANGEL_OVER)
	end
end, Music.MUSIC_JINGLE_BOSS_OVER, Music.MUSIC_JINGLE_BOSS_OVER2, Music.MUSIC_JINGLE_BOSS_OVER3)

MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		return NormalOrTainted(Music.MUSIC_CHALLENGE_FIGHT)
	end
end, Music.MUSIC_SATAN_BOSS)

MMC.AddMusicCallback(custommusiccollection, function() --TODO: do not play upon continue game
	if Game():IsGreedMode() then
		local room = Game():GetRoom()
		if room:GetBossID() == 62 then
			if Game().Difficulty == Difficulty.DIFFICULTY_GREEDIER then
				return NormalOrTainted(Music.MUSIC_JINGLE_ULTRAGREEDIER_OVER), NormalOrTainted(Music.MUSIC_BOSS_OVER_GREED)
			end
		end
	end
end, Music.MUSIC_BOSS_OVER)

MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		return NormalOrTainted(Music.MUSIC_BOSS_OVER_GREED)
	end
end, Music.MUSIC_BOSS_OVER)

MMC.AddMusicCallback(custommusiccollection, function()
	local room = Game():GetRoom()
	local roomtype = room:GetType()
	if roomtype == RoomType.ROOM_BLACK_MARKET then
		return NormalOrTainted(Music.MUSIC_BLACKMARKET_ROOM)
	end
end, Music.MUSIC_SHOP_ROOM)

MMC.AddMusicCallback(custommusiccollection, function()
	local game = Game()
	local level = game:GetLevel()
	local stage = level:GetStage()
	
	if game:IsGreedMode() then
		if stage == LevelStage.STAGE4_GREED or stage == LevelStage.STAGE5_GREED then
			return NormalOrTainted(Music.MUSIC_SHOP_ROOM_ALT)
		elseif stage == LevelStage.STAGE6_GREED then
			return NormalOrTainted(Music.MUSIC_FLOOR_6_GREED)
		end
	else
		if stage > LevelStage.STAGE3_2 then
			return NormalOrTainted(Music.MUSIC_SHOP_ROOM_ALT)
		end
	end
end, Music.MUSIC_SHOP_ROOM)

MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		local room = Game():GetRoom()
		local roomtype = room:GetType()
		if roomtype ~= RoomType.ROOM_DEVIL then
			return 0
		end
	end
end, Music.MUSIC_CHALLENGE_FIGHT, Music.MUSIC_JINGLE_CHALLENGE_OUTRO)

--START CALLBACKS ORIGINALLY FROM MODS OTHER THAN TAINTED MUDETH
MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		return NormalOrTainted(Music.MUSIC_DEPTHS_GREED)
	end
end, Music.MUSIC_DEPTHS)

MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		return NormalOrTainted(Music.MUSIC_CATACOMBS_GREED)
	end
end, Music.MUSIC_CATACOMBS)

MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		return NormalOrTainted(Music.MUSIC_UTERO_GREED)
	end
end, Music.MUSIC_UTERO)

MMC.AddMusicCallback(custommusiccollection, function()
	if Game():IsGreedMode() then
		return NormalOrTainted(Music.MUSIC_SHEOL_GREED)
	end
end, Music.MUSIC_SHEOL)

MMC.AddMusicCallback(custommusiccollection, function()
	local game = Game()
	local level = game:GetLevel()
	local stage = level:GetStage()
	local room = game:GetRoom()
	
	if room:GetType() == RoomType.ROOM_DEVIL then
		if game:IsGreedMode() then
			if stage > LevelStage.STAGE4_GREED then
				return NormalOrTainted(Music.MUSIC_DEVIL_ROOM_ALT)
			end
		else
			if stage > LevelStage.STAGE4_2 then
				return NormalOrTainted(Music.MUSIC_DEVIL_ROOM_ALT)
			end
		end
	end
end, Music.MUSIC_DEVIL_ROOM)

MMC.AddMusicCallback(custommusiccollection, function()
	if not Game():IsGreedMode() then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		if stage == LevelStage.STAGE5 or stage == LevelStage.STAGE7 then
			return NormalOrTainted(Music.MUSIC_SATAN_BOSS_ALT)
		end
	end
end, Music.MUSIC_SATAN_BOSS)
--END CALLBACKS ORIGINALLY FROM MODS OTHER THAN TAINTED MUDETH

MMC.AddMusicCallback(custommusiccollection, function(self, trackId)
	if trackId > 0 then
		--local trackToReturn = NormalOrTainted(trackId)
		
		--if trackToReturn ~= trackId then
		--	return trackToReturn
		--end
		return NormalOrTainted(trackId)
	end
end)