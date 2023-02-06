local taintedmudeth = RegisterMod("Tainted Mudeth", 1)

if MMC == nil then
	return
end

local musicmgr = MMC.Manager()

Music.MUSIC_MEGASATAN_BOSS = Music.MUSIC_SATAN_BOSS

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
	[Music.MUSIC_MEGASATAN_BOSS] = Isaac.GetMusicIdByName("Mega Satan (tainted)"),
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
taintedmudeth:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, CheckCoopMixOnGameStart)

local function CheckCoopMixOnSpawn(entityPlayer)
	newPlayerSpawned = true
end
taintedmudeth:AddCallback(ModCallbacks.MC_POST_PLAYER_INIT, CheckCoopMixOnSpawn, 0) --0 is true player, 1 is co-op baby

local function CheckCoopMixOnRender()
	if newPlayerSpawned then
		coopMixedSoundtrack = normalAndTaintedPresent()
		newPlayerSpawned = false
	end
end
taintedmudeth:AddCallback(ModCallbacks.MC_POST_RENDER, CheckCoopMixOnRender)

local function resetCoopMix()
	coopMixedSoundtrack = false
end
taintedmudeth:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, resetCoopMix)

local function resetLoopVersion()
	loopversion = 0
end
taintedmudeth:AddCallback(ModCallbacks.MC_PRE_GAME_EXIT, resetLoopVersion)
taintedmudeth:AddCallback(ModCallbacks.MC_POST_GAME_END, resetLoopVersion)

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

taintedmudeth:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, function()
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

taintedmudeth:AddCallback(ModCallbacks.MC_POST_NEW_ROOM, function()
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

taintedmudeth:AddCallback(ModCallbacks.MC_POST_RENDER, function()
	local room = Game():GetRoom()
	local roomtype = room:GetType()
	
	if roomtype == RoomType.ROOM_CHALLENGE or roomtype == RoomType.ROOM_BOSSRUSH then
		if playingMainTrack and (room:IsAmbushActive() or room:IsAmbushDone()) then
			playingMainTrack = false
			changeTrackVersion()
		end
	end
end)

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
	[Music.MUSIC_MINESHAFT_AMBIENT] = 2,
	[Music.MUSIC_MINESHAFT_ESCAPE] = 3,
}

--NOTE: since choosing between boss music 1 and 2 is already determined by the room seed, we avoid using 1 for many boss themes
local roomSeedTrack = {
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
	
	[Music.MUSIC_BOSS_OVER] = 2,
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
	
	[Music.MUSIC_CHALLENGE_FIGHT] = 4,
	[Music.MUSIC_JINGLE_CHALLENGE_OUTRO] = 4,
	[Music.MUSIC_SATAN_BOSS] = 4,
	
	[Music.MUSIC_DEVIL_ROOM] = 5,
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

MMC.AddMusicCallback(taintedmudeth, function()
	if not Game():IsGreedMode() then
		local level = Game():GetLevel()
		local stage = level:GetStage()
		if stage == LevelStage.STAGE6 then
			return NormalOrTainted(Music.MUSIC_MEGASATAN_BOSS)
		end
	end
end, Music.MUSIC_SATAN_BOSS)

MMC.AddMusicCallback(taintedmudeth, function()
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

MMC.AddMusicCallback(taintedmudeth, function(self, trackId)
	if trackId > 0 then
		--local trackToReturn = NormalOrTainted(trackId)
		
		--if trackToReturn ~= trackId then
		--	return trackToReturn
		--end
		return NormalOrTainted(trackId)
	end
end)
