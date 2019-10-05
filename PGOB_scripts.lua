string_startMission = 'Start mission'

--bool_allowDebug = true // set in editor

Flag_A2A_DENSITY = '60'
Flag_A2A_DIFFICULTY = '67'
Flag_SAM = '61'
Flag_AWACS = '62'
Flag_TANKER = '63'
Flag_PRIMARY = '64'
Flag_PERKS = '65'
Flag_AWACS_RED = '68'
Flag_SAM_MISSILES = '66'
Flag_DEBUG = '69'
Flag_MISSION_START = '70'
Flag_PERKS_CRUISE_MISSILE_STRIKE_AVAILABLE = '71'
Flag_PERKS_JAMMER_ATTACK_AVAILABLE = '72'
Flag_AWACS_STARTUP = '40'
Flag_AWACS_RED_STARTUP = '41'
Flag_BLUE_IN_RED_BORDER = '95'

-- flags 80 to 89 are reserved for in-editor stuff!

Flag_PERKS_Activate_Cruise_Missile_Strike = '20'
Flag_PERKS_Activate_Satellite_Jammer = '21'
Flag_PERKS_Activate_Satellite_Jammer_Active = '22'

-- A2A THREAT
string_A2A_density_settings = 'Change A2A numbers'
string_A2A_density_none = 'A2A Density: none'
string_A2A_density_low = 'A2A Density: Low (6 to 10 hostiles)'
string_A2A_density_medium = 'A2A Density: Medium (10 to 14 hostiles)'
string_A2A_density_high = 'A2A Density: High (12 to 18 hostiles)'

string_A2A_difficulty_settings = 'Change A2A types'
string_A2A_difficulty_easy = 'A2A Difficulty: Easy (L-39)'
string_A2A_difficulty_fair = 'A2A Difficulty: Fair (F-4, F-5, MiG-21)'
string_A2A_difficulty_hard = 'A2A Difficulty: Hard (MiG-29, F-4, F-14)'

-- SAAAAAAAAAAAAAAAAms
string_SAM_settings = 'Change SAM threat setting'
string_SAM_threat_none = 'No SAM Threat'
string_SAM_threat_low = 'Low SAM Threat (SA-2, SA-15)'
string_SAM_threat_medium = 'Medium SAM Threat (SA-2, SA-10, SA-15, AAA, Ships)'
string_SAM_threat_high = 'High SAM Threat (SA-2, SA-10, SA-15, AAA, Ships)'

string_SAM_engage_missiles_settings = 'Change SAM engage missiles settings'
string_SAM_engage_missiles_on = 'SAMs engage missiles.'
string_SAM_engage_missiles_off = 'SAMs will not engage missiles.'

-- AWACS
string_AWACS_settings = 'Change Blue AWACS setting'
string_AWACS_off = 'Blue AWACS disabled'
string_AWACS_on = 'Blue AWACS available'

string_AWACS_RED_settings = 'Change Red AWACS setting'
string_AWACS_RED_off = 'Red AWACS disabled'
string_AWACS_RED_on = 'Red AWACS available'

string_TANKER_settings = 'Change Tanker setting'
string_Tankers_off = 'No tanker'
string_Tankers_west = 'West Tanker (Shell 7-1)'
string_Tankers_east = 'East Tanker (Texaco 8-1)'
string_Tankers_both = 'Both Tankers (Shell 7-1, Texaco 8-1)'

-- PRIMARY
string_PRIMARY_settings = 'Change Primary Target'
string_Primary_Yacht = 'Yacht (unarmed)'
string_Primary_Molniya = 'Molniya'

-- PERKS
string_PERK_settings = 'Change Perk settings'
string_Perks_none = 'None'
string_Perks_Cruise_Missiles = 'Cruise missile strike available'
string_Perks_Jamming_Attack = 'Satellite Jamming Attack'

-- DEBUG
string_Debug_settings = 'Change Debug setting'
string_Debug_off = 'Debug info disabled'
string_Debug_on = 'Debug info enabled (Debug planes will be spawned)'
string_Debug_spawn_hogs = 'Spawn some Hogs!'
string_Debug_spawn_harriers = 'Spawn some Harriers!'
string_Debug_spawn_hornets = 'Spawn some Hornets!'
string_Debug_spawn_tomcats = 'Spawn some Tomcats!'

string_settings_setToMax = 'Set max difficulty'

bool_blueUnitsDetectedState = false

-- if any of these two are true, SAMs wont fire
bool_mSamBorderIntact = true
bool_mSamSuppressedByJammers = false
bool_mSamsActive = true

-- There was some DCS trigger hookup when I tried merge all those handle function ... so I was too lazy to figure what was going wrong.
-- flagValue was a bigger object with both the flag and its value ... but somehow it then did not properly call setUserFlag ... dont know.
function handleA2ADensitySetting(flagValue)
	trigger.action.setUserFlag(Flag_A2A_DENSITY, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_A2A_DENSITY] = string_A2A_density_none
	elseif flagValue == 1 then
		table_settingsStore[Flag_A2A_DENSITY] = string_A2A_density_low
	elseif flagValue == 2 then
		table_settingsStore[Flag_A2A_DENSITY] = string_A2A_density_medium
	elseif flagValue == 3 then
		table_settingsStore[Flag_A2A_DENSITY] = string_A2A_density_high
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handleA2ADifficultySetting(flagValue)
	trigger.action.setUserFlag(Flag_A2A_DIFFICULTY, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_A2A_DIFFICULTY] = string_A2A_difficulty_easy
	elseif flagValue == 1 then
		table_settingsStore[Flag_A2A_DIFFICULTY] = string_A2A_difficulty_fair
	elseif flagValue == 2 then
		table_settingsStore[Flag_A2A_DIFFICULTY] = string_A2A_difficulty_hard
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handleSAMSetting(flagValue)
	trigger.action.setUserFlag(Flag_SAM, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_SAM] = string_SAM_threat_none
	elseif flagValue == 1 then
		table_settingsStore[Flag_SAM] = string_SAM_threat_low
	elseif flagValue == 2 then
		table_settingsStore[Flag_SAM] = string_SAM_threat_medium
	elseif flagValue == 3 then
		table_settingsStore[Flag_SAM] = string_SAM_threat_high
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handleSamMissileSetting(flagValue)
	trigger.action.setUserFlag(Flag_SAM_MISSILES, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_SAM_MISSILES] = string_SAM_engage_missiles_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_SAM_MISSILES] = string_SAM_engage_missiles_on
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handleAwacsSetting(flagValue)
	trigger.action.setUserFlag(Flag_AWACS, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_AWACS] = string_AWACS_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_AWACS] = string_AWACS_on
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handleAwacsRedSetting(flagValue)
	trigger.action.setUserFlag(Flag_AWACS_RED, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_AWACS_RED] = string_AWACS_RED_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_AWACS_RED] = string_AWACS_RED_on
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handleTankerSetting(flagValue)
	trigger.action.setUserFlag(Flag_TANKER, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_TANKER] = string_Tankers_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_TANKER] = string_Tankers_west
	elseif flagValue == 2 then
		table_settingsStore[Flag_TANKER] = string_Tankers_east
	elseif flagValue == 3 then
		table_settingsStore[Flag_TANKER] = string_Tankers_both
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handlePrimarySetting(flagValue)
	trigger.action.setUserFlag(Flag_PRIMARY, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_PRIMARY] = string_Primary_Yacht
	elseif flagValue == 1 then
		table_settingsStore[Flag_PRIMARY] = string_Primary_Molniya
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function handlePerkSetting(flagValue)
	trigger.action.setUserFlag(Flag_PERKS, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_PERKS] = string_Perks_none
	elseif flagValue == 1 then
		table_settingsStore[Flag_PERKS] = string_Perks_Cruise_Missiles
	elseif flagValue == 2 then
		table_settingsStore[Flag_PERKS] = string_Perks_Jamming_Attack
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function HandleDebugHogs()
	local newSacrifice = Debug_hog_spawn:Spawn()
	return nil
end

function HandleDebugHarriers()
	local newSacrifice = Debug_harrier_spawn:Spawn()
	return nil
end

function HandleDebugHornets()
	local newSacrifice = Debug_hornet_spawn:Spawn()
	return nil
end

function HandleDebugTomcats()
	local newSacrifice = Debug_tomcat_spawn:Spawn()
	return nil
end

function handleDebugSettings(flagValue)
	trigger.action.setUserFlag(Flag_DEBUG, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_DEBUG] = string_Debug_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_DEBUG] = string_Debug_on
	end
	
	PrintCurrentSettings(bool_firstRunDone)
	return nil
end

function removeSettings()
	missionCommands.removeItem(CMD_missionStart)
	
	missionCommands.removeItem(A2A_density_none)
	missionCommands.removeItem(A2A_density_low)
	missionCommands.removeItem(A2A_density_medium)
	missionCommands.removeItem(A2A_density_high)
	missionCommands.removeItem(A2A_density_setting)
	
	missionCommands.removeItem(A2A_difficulty_easy)
	missionCommands.removeItem(A2A_difficulty_fair)
	missionCommands.removeItem(A2A_difficulty_hard)
	missionCommands.removeItem(A2A_difficulty_setting)
	
	missionCommands.removeItem(SAM_none)
	missionCommands.removeItem(SAM_low)
	missionCommands.removeItem(SAM_medium)
	missionCommands.removeItem(SAM_high)
	missionCommands.removeItem(SAM_setting)
	
	missionCommands.removeItem(SAM_Missile_off)
	missionCommands.removeItem(SAM_Missile_on)
	missionCommands.removeItem(SAM_Missile_setting)
	
	missionCommands.removeItem(AWACS_off)
	missionCommands.removeItem(AWACS_on)
	missionCommands.removeItem(AWACS_setting)
	
	missionCommands.removeItem(AWACS_Red_off)
	missionCommands.removeItem(AWACS_Red_on)
	missionCommands.removeItem(AWACS_Red_setting)
	
	missionCommands.removeItem(TANKER_off)
	missionCommands.removeItem(TANKER_1)
	missionCommands.removeItem(TANKER_west)
	missionCommands.removeItem(TANKER_east)
	missionCommands.removeItem(TANKER_all)
	missionCommands.removeItem(TANKER_setting)
	
	missionCommands.removeItem(PRIMARY_Yacht)
	missionCommands.removeItem(PRIMARY_Molniya)
	missionCommands.removeItem(PRIMARY_setting)
	
	missionCommands.removeItem(PERKS_None)
	missionCommands.removeItem(PERKS_Cruise_Missiles)
	missionCommands.removeItem(PERKS_Jammer_Attack)
	missionCommands.removeItem(PERKS_setting)
	
	missionCommands.removeItem(Debug_off)
	missionCommands.removeItem(Debug_on)
	missionCommands.removeItem(Debug_setting)
	
	--missionCommands.removeItem(CMD_settingsMax)
	return nil
end

function HandleStart()
	removeSettings()
	trigger.action.setUserFlag('70', 1)
	
	-- add ability to spawn some poor plane to be shot down
	if IsDebuggingOn() then
		
		Debug_hog_spawn = SPAWN:New( "Z - Debug - Hogs" ):InitLimit(12,0)
		Debug_harrier_spawn = SPAWN:New( "Z - Debug - Harriers" ):InitLimit(12,0)
		Debug_hornet_spawn = SPAWN:New( "Z - Debug - Hornets" ):InitLimit(12,0)
		Debug_tomcat_spawn = SPAWN:New( "Z - Debug - Tomcats" ):InitLimit(12,0)
		
		CMD_DebugSpawnCommandHogs =  missionCommands.addCommand(string_Debug_spawn_hogs, nil, HandleDebugHogs)
		CMD_DebugSpawnCommandHarriers = missionCommands.addCommand(string_Debug_spawn_harriers, nil, HandleDebugHarriers)
		CMD_DebugSpawnCommandHornets =  missionCommands.addCommand(string_Debug_spawn_hornets, nil, HandleDebugHornets)
		CMD_DebugSpawnCommandTomcats = missionCommands.addCommand(string_Debug_spawn_tomcats, nil, HandleDebugTomcats)
	end
end

function HandleMaxDifficulty()
	trigger.action.outText("Settings changed to max difficulty", 10)
	bool_firstRunDone = false
	handleA2ADensitySetting(3)
	handleSAMSetting(3)
	handleSamMissileSetting(1)
	handleAwacsSetting(0)
	handleAwacsRedSetting(0)
	handlePrimarySetting(1)
	handlePerkSetting(0)
	bool_firstRunDone = true
	PrintCurrentSettings(true)
end

function createMissionSettings()
	CMD_missionStart = missionCommands.addCommand(string_startMission, nil, HandleStart)
	
	A2A_density_setting = missionCommands.addSubMenu(string_A2A_density_settings)
	A2A_density_none = missionCommands.addCommand(string_A2A_density_none, A2A_density_setting, handleA2ADensitySetting, 0)
	A2A_density_low = missionCommands.addCommand(string_A2A_density_low, A2A_density_setting, handleA2ADensitySetting, 1)
	A2A_density_medium = missionCommands.addCommand(string_A2A_density_medium, A2A_density_setting, handleA2ADensitySetting, 2)
	A2A_density_high = missionCommands.addCommand(string_A2A_density_high, A2A_density_setting, handleA2ADensitySetting, 3)
	
	A2A_difficulty_setting = missionCommands.addSubMenu(string_A2A_difficulty_settings)
	A2A_difficulty_easy = missionCommands.addCommand(string_A2A_difficulty_easy, A2A_difficulty_setting, handleA2ADifficultySetting, 0)
	A2A_difficulty_fair = missionCommands.addCommand(string_A2A_difficulty_fair, A2A_difficulty_setting, handleA2ADifficultySetting, 1)
	A2A_difficulty_hard = missionCommands.addCommand(string_A2A_difficulty_hard, A2A_difficulty_setting, handleA2ADifficultySetting, 2)
	
	SAM_setting = missionCommands.addSubMenu(string_SAM_settings)
	SAM_none = missionCommands.addCommand(string_SAM_threat_none, SAM_setting, handleSAMSetting, 0)
	SAM_low = missionCommands.addCommand(string_SAM_threat_low, SAM_setting, handleSAMSetting, 1)
	SAM_medium = missionCommands.addCommand(string_SAM_threat_medium, SAM_setting, handleSAMSetting, 2)
	SAM_high = missionCommands.addCommand(string_SAM_threat_high, SAM_setting, handleSAMSetting, 3)
	
	SAM_Missile_setting = missionCommands.addSubMenu(string_SAM_engage_missiles_settings)
	SAM_Missile_off = missionCommands.addCommand(string_SAM_engage_missiles_off, SAM_Missile_setting, handleSamMissileSetting, 0)
	SAM_Missile_on = missionCommands.addCommand(string_SAM_engage_missiles_on, SAM_Missile_setting, handleSamMissileSetting, 1)
	
	AWACS_setting = missionCommands.addSubMenu(string_AWACS_settings)
	AWACS_off = missionCommands.addCommand(string_AWACS_off, AWACS_setting, handleAwacsSetting, 0)
	AWACS_on = missionCommands.addCommand(string_AWACS_on, AWACS_setting, handleAwacsSetting, 1)
	
	AWACS_Red_setting = missionCommands.addSubMenu(string_AWACS_RED_settings)
	AWACS_Red_off = missionCommands.addCommand(string_AWACS_RED_off, AWACS_Red_setting, handleAwacsRedSetting, 0)
	AWACS_Red_on = missionCommands.addCommand(string_AWACS_RED_on, AWACS_Red_setting, handleAwacsRedSetting, 1)
	
	TANKER_setting = missionCommands.addSubMenu(string_TANKER_settings)
	TANKER_off = missionCommands.addCommand(string_Tankers_off, TANKER_setting, handleTankerSetting, 0)
	TANKER_west = missionCommands.addCommand(string_Tankers_west, TANKER_setting, handleTankerSetting, 1)
	TANKER_east = missionCommands.addCommand(string_Tankers_east, TANKER_setting, handleTankerSetting, 2)
	TANKER_all = missionCommands.addCommand(string_Tankers_both, TANKER_setting, handleTankerSetting, 3)
	
	PRIMARY_setting = missionCommands.addSubMenu(string_PRIMARY_settings)
	PRIMARY_Yacht = missionCommands.addCommand(string_Primary_Yacht, PRIMARY_setting, handlePrimarySetting, 0)
	PRIMARY_Molniya = missionCommands.addCommand(string_Primary_Molniya, PRIMARY_setting, handlePrimarySetting, 1)
	
	PERKS_setting = missionCommands.addSubMenu(string_PERK_settings)
	PERKS_None = missionCommands.addCommand(string_Perks_none, PERKS_setting, handlePerkSetting, 0)
	PERKS_Cruise_Missiles = missionCommands.addCommand(string_Perks_Cruise_Missiles, PERKS_setting, handlePerkSetting, 1)
	PERKS_Jammer_Attack = missionCommands.addCommand(string_Perks_Jamming_Attack, PERKS_setting, handlePerkSetting, 2)
	
	--CMD_settingsMax = missionCommands.addCommand(string_settings_setToMax, nil, HandleMaxDifficulty)
	
	-- reasonable defaults
	handleA2ADensitySetting(1)
	handleA2ADifficultySetting(0)
	handleSAMSetting(1)
	handleSamMissileSetting(0)
	handleAwacsSetting(1)
	handleAwacsRedSetting(0)
	handleTankerSetting(3)
	handlePrimarySetting(0)
	handlePerkSetting(1)
	
	if bool_allowDebug == true then
		Debug_setting = missionCommands.addSubMenu(string_Debug_settings)
		Debug_off = missionCommands.addCommand(string_Debug_off, Debug_setting, handleDebugSettings, 0)
		Debug_on = missionCommands.addCommand(string_Debug_on, Debug_setting, handleDebugSettings, 1)
		handleDebugSettings(1)
	end
	
	bool_firstRunDone = true
	return nil
end

-- a bit too convoluted. Let us just create a lookup table for that later.
function PrintCurrentSettings(executePrint)
	if executePrint then
		local currentSettings = "Current settings:\n"
		
		--currentSettings = currentSettings .. table_settingsStore[Flag_A2A_DENSITY] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_A2A_DIFFICULTY] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_SAM] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_SAM_MISSILES] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_PRIMARY] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_AWACS] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_TANKER] .. "\n"
		--currentSettings = currentSettings .. table_settingsStore[Flag_PERKS] .. "\n"
		--
		--if bool_allowDebug == true
		--	currentSettings = currentSettings .. table_settingsStore[Flag_DEBUG] .. "\n"
		--end
		--local testString = 'dddd' .. currentSettings[Flag_A2A_DENSITY]
		--trigger.action.outText(testString, 20)
		
		for key,value in pairs(table_settingsStore) do 
			currentSettings = currentSettings .. key .. ': ' .. value .. "\n"
		end
		
		trigger.action.outText(currentSettings, 20)
		trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	end
	
	return nil
end

function StartBandarLengehCAP_L39()
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)

	if airDensity == 1 then
		BandarCapPlaneL39 = GROUP:FindByName( "IRQ SQ L39 Bandar Lengeh" )
		
		BandarLengehL39PatrolZone = ZONE:New( "Mig21PatrolZone" )
		BandarLengehL39CapZone = AI_CAP_ZONE:New( BandarLengehL39PatrolZone, 500, 1000, 500, 600 )
		BandarLengehL39EngagePolygon = GROUP:FindByName( "IRQ ENGAGE ZONE MIG21" ) -- editor placed polygon
		BandarLengehL39CapEngageZone = ZONE_POLYGON:New( "IRQ ENGAGE ZONE MIG21", BandarLengehL39EngagePolygon )
		BandarLengehL39CapZone:SetControllable( BandarCapPlaneL39 )
		BandarLengehL39CapZone:SetEngageZone( BandarLengehL39CapEngageZone ) -- Set the Engage Zone. The AI will only engage when the bogeys are within the BandarLengehL39CapEngageZone.
		BandarLengehL39CapZone:__Start( 5 ) -- They should statup, and start patrolling in the FishbedPatrolZone.
		
		if IsDebuggingOn() == true then
			trigger.action.outText("Bandar Lengeh L39 group initiated", 10)
		end
	end
	return nil
end

function StartBandarLengehCAP_MIG21()
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)
	local airDifficulty = trigger.misc.getUserFlag(Flag_A2A_DIFFICULTY)

	if airDensity > 1 and airDifficulty > 0 then
		BandarCapPlaneMiG21 = GROUP:FindByName( "IRQ SQ MIG21 Bandar Lengeh" )
		
		BandarLengehMig21PatrolZone = ZONE:New( "Mig21PatrolZone" )
		BandarLengehMig21CapZone = AI_CAP_ZONE:New( BandarLengehMig21PatrolZone, 500, 1000, 500, 600 )
		BandarLengehMig21EngagePolygon = GROUP:FindByName( "IRQ ENGAGE ZONE MIG21" ) -- editor placed polygon
		BandarLengehMig21CapEngageZone = ZONE_POLYGON:New( "IRQ ENGAGE ZONE MIG21", BandarLengehMig21EngagePolygon )
		BandarLengehMig21CapZone:SetControllable( BandarCapPlaneMiG21 )
		BandarLengehMig21CapZone:SetEngageZone( BandarLengehMig21CapEngageZone ) -- Set the Engage Zone. The AI will only engage when the bogeys are within the BandarLengehCapEngageZone.
		BandarLengehMig21CapZone:__Start( 7 ) -- They should statup, and start patrolling in the FishbedPatrolZone.
		
		if IsDebuggingOn() == true then
			trigger.action.outText("Bandar Lengeh MIG21 group initiated", 10)
		end
	end
	return nil
end

function StartQueshmIslandCAP()
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)
	local airDifficulty = trigger.misc.getUserFlag(Flag_A2A_DIFFICULTY)

	if airDensity < 2 and airDifficulty < 1 then
		return nil
	end

	F5CapPlane = GROUP:FindByName( "IRQ SQ F5" )
	PatrolZone = ZONE:New( "F5PatrolZone" )
	F5CapZone = AI_CAP_ZONE:New( PatrolZone, 500, 1000, 500, 600 )
	EngageZoneGroupF5 = GROUP:FindByName( "IRQ ENGAGE ZONE F5" ) -- editor placed polygon
	TigerCapEngageZone = ZONE_POLYGON:New( "IRQ ENGAGE ZONE F5", EngageZoneGroupF5 )
	F5CapZone:SetControllable( F5CapPlane )
	F5CapZone:SetEngageZone( TigerCapEngageZone ) -- Set the Engage Zone. The AI will only engage when the bogeys are within the TigerCapEngageZone.
	F5CapZone:__Start( 5 ) -- They should statup, and start patrolling in the PatrolZone.
	
	trigger.action.outText("Queshm groups initiated", 10)
	return nil
end

function SpawnTankers()
	local tankerSetting = trigger.misc.getUserFlag(Flag_TANKER)
	
	if tankerSetting == 1 or tankerSetting == 3 then
		Spawn_Tanker1 = SPAWN:New( "TankerShell" ):Spawn()
		trigger.action.outText("Tanker Shell (west) spawned", 10)
	end
	
	if tankerSetting == 2 or tankerSetting == 3 then
		Spawn_Tanker2 = SPAWN:New( "TankerTexaco" ):Spawn()
		trigger.action.outText("Tanker Texaco (east) spawned", 10)
	end
	return nil
end

function SpawnAWACS()
	local awacsSetting = trigger.misc.getUserFlag(Flag_AWACS)
	
	if awacsSetting > 0 then
		trigger.action.setUserFlag(Flag_AWACS_STARTUP, true)
		trigger.action.outText("AWACS Blue activated", 10)
	end
	
	local awacsRedSetting = trigger.misc.getUserFlag(Flag_AWACS_RED)
	
	if awacsRedSetting > 0 then
		trigger.action.setUserFlag(Flag_AWACS_RED_STARTUP, true)
		trigger.action.outText("AWACS Red activated", 10)
	end
end

function SpawnSAMs()
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	
	if samThreat > 0 then
		trigger.action.outText("Spawning SAMs ... ", 10)
		
		local ZoneBandarLengeh = ZONE:New( "ZoneSamBandarLengeh" )
		Spawn_SAM_BL = SPAWN:New( "IRQ EWR SAM BANDAR LENGEH" ):SpawnInZone(ZoneBandarLengeh)
		
		-- Spawn Phalanx
		Template_SAM_PHALANX = SPAWN:New( "IRQ EWR SA-15 Phalanx" ):InitLimit(12, 0)
		
		local PhalanxSpawnZone1 = ZONE:New( "PhalanxSpawn1" )
		local PhalanxSpawnZone2 = ZONE:New( "PhalanxSpawn2" )
		local PhalanxSpawnZone3 = ZONE:New( "PhalanxSpawn3" )
		local PhalanxSpawnZone6 = ZONE:New( "PhalanxSpawn6" )
		local PhalanxSpawnZone7 = ZONE:New( "PhalanxSpawn7" )
		
		SAM_PHALANX1 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone1)
		SAM_PHALANX2 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone2)
		SAM_PHALANX3 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone3)
		SAM_PHALANX6 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone6)
		SAM_PHALANX7 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone7)
		
		local ZoneEntry = ZONE:New( "ZoneSA2Entry" )
		Spawn_SAM_ENTRY = SPAWN:New( "IRQ EWR SA-2 ENTRY" ):SpawnInZone(ZoneEntry)
		
		if samThreat == 1 then
			SamZoneTable = { ZONE:New( "SamSpawnZone2" ), ZONE:New( "SamSpawnZone3" ), ZONE:New( "SamSpawnZone5" ), ZONE:New( "SamSpawnZone6" ), ZONE:New( "SamSpawnZone7" ), ZONE:New( "SamSpawnZone8" ), ZONE:New( "SamSpawnZone9" ), ZONE:New( "SamSpawnZone10" )}
			Spawn_MAIN_SA2 = SPAWN:New( "IRQ EWR SA-2 MAIN" ):InitRandomizeZones( SamZoneTable ):Spawn()
			
		elseif samThreat > 1 then
			SamZoneTable = { ZONE:New( "SamSpawnZone2" ), ZONE:New( "SamSpawnZone3" ), ZONE:New( "SamSpawnZone5" ), ZONE:New( "SamSpawnZone6" ), ZONE:New( "SamSpawnZone7" ), ZONE:New( "SamSpawnZone8" ), ZONE:New( "SamSpawnZone9" ), ZONE:New( "SamSpawnZone10" ), ZONE:New( "SamSpawnZone11" ), ZONE:New( "SamSpawnZone12" ) }
			
			local ZoneSA2Island = ZONE:New( "ZoneSA2Island" )
			Spawn_SAM_ISLAND = SPAWN:New( "IRQ EWR SA-2 ISLAND" ):SpawnInZone(ZoneSA2Island)
			
			Spawn_MAIN_SA10 = SPAWN:New( "IRQ EWR SA-10 MAIN" ):InitRandomizeZones( SamZoneTable ):Spawn()
			
			local ZoneAAA = ZONE:New( "ZoneAAA" )
			Spawn_AAA = SPAWN:New( "IRQ EWR AAA" ):SpawnInZone(ZoneAAA)
			
			local ZoneShipDefense = Zone:New( "ZoneShipDefense" )
			Spawn_Ship = SPAWN:New( "IRQ EWR Ship defense" ):SpawnInZone(ZoneShipDefense)			
			
			local ZoneHawkEast = ZONE:New( "ZoneHawkEast" )
			Spawn_Ship2 = SPAWN:New( "IRQ EWR HAWK EAST" ):SpawnInZone(ZoneHawkEast)
			
			if samThreat > 2 then
				Spawn_MAIN_SA2_2 = SPAWN:New( "IRQ EWR SA-2 MAIN" ):InitRandomizeZones( SamZoneTable ):Spawn()
				
				local PhalanxSpawnZone4 = ZONE:New( "PhalanxSpawn4" )
				local PhalanxSpawnZone5 = ZONE:New( "PhalanxSpawn5" )
				SAM_PHALANX4 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone4)
				SAM_PHALANX5 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone5)
			end
		end
		
		trigger.action.outText("Spawn SAMs completed", 10)
	end
	return nil
end

-- this is to cache all EWR units for later reuse
function SetupEWRSet()
	Set_EWR = SET_GROUP:New():FilterPrefixes( "IRQ EWR" ):FilterStart()
	trigger.action.outText("EWR filters set.", 10)
	return nil
end

function SetupEWRNetwork()
	trigger.action.outText("Checking Detection Network", 10)
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	local debuggerEnabled = IsDebuggingOn()
	bBlueInRedZone = false
	
	if airDensity > 0 or samThreat > 0 then
		DetectionSetGroup = SET_GROUP:New()
		DetectionSetGroup:FilterPrefixes( { "IRQ EWR", "IRQ AWACS", "IRQ SQ" } )
		DetectionSetGroup:FilterStart()
		Detection = DETECTION_AREAS:New( DetectionSetGroup, 30000 )
		Detection:InitDetectRadar(true)
		--Detection:InitDetectVisual(true)
		Detection:InitDetectOptical(true)
		Detection:InitDetectIRST(false)
		Detection:InitDetectDLINK(false)
		
		CCCPBorderZone = ZONE_POLYGON:New( "IRQ Border", GROUP:FindByName( "IRQ Border" ) )
		
		if airDensity > 0 then
			local airDifficulty = trigger.misc.getUserFlag(Flag_A2A_DIFFICULTY)	
		
			A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
			A2ADispatcher:SetBorderZone( CCCPBorderZone )
			
			-- DENSITY													AIRFRAME
			-- three air bases:		Low			Medium		High	| Easy				fair				Hard
			-- Bandar Abbas			2			4			4       | 
			-- Havadarya			2			2			4       | 
			-- Lar AIRBASE			2			4			8       | 
			
			-- DIFFICULTY
			-- Bandar Abbas:
			----	Easy:	IRQ SQ Easy BandarAbbas L39
			----	Fair:	IRQ SQ Fair BandarAbbas F4, IRQ SQ Fair BandarAbbas F5, IRQ SQ Fair BandarAbbas MiG21
			----	Hard:	IRQ SQ Hard BandarAbbas F4, IRQ SQ Hard BandarAbbas MiG29, IRQ SQ Hard BandarAbbas F14
			
			-- Havadarya:
			----	Easy:	IRQ SQ Easy Havadarya L39
			----	Fair:	IRQ SQ Fair Havadarya F4, IRQ SQ Fair Havadarya MiG21
			----	Hard:	IRQ SQ Hard Havadarya MiG29, IRQ SQ Hard Havadarya F4
			
			-- Lar AIRBASE:
			----	Easy:	IRQ SQ Easy Lar L39
			----	Fair:	IRQ SQ Fair Lar F4, IRQ SQ Fair Lar F4
			----	Hard:	IRQ SQ Hard Lar F14, IRQ SQ Hard Lar F14
			
			-- set up Lar
			
			local larPlanesCount = 0
			local larPlanesTypes = {}
			if airDensity == 1 then
				larPlanesCount = 2
			elseif airDensity == 2 then
				larPlanesCount = 4
			elseif airDensity == 3 then
				larPlanesCount = 8
			end
			
			if airDifficulty == 0 then
				larPlanesTypes = { "IRQ SQ Easy Lar L39" }
			elseif airDifficulty == 1 then
				larPlanesTypes = { "IRQ SQ Fair Lar F4", "IRQ SQ Fair Lar F4" }
			elseif airDifficulty == 2 then
				larPlanesTypes = { "IRQ SQ Hard Lar F14", "IRQ SQ Hard Lar F14" }
			end
			
			A2ADispatcher:SetSquadron("LarAirbaseSq", AIRBASE.PersianGulf.Lar_Airbase, larPlanesTypes, larPlanesCount )
			A2ADispatcher:SetIntercept( 120 )
			A2ADispatcher:SetSquadronOverhead( "LarAirbaseSq", 1 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "LarAirbaseSq" )
			A2ADispatcher:SetSquadronGci( "LarAirbaseSq", 300, 600 )
			A2ADispatcher:SetSquadronGrouping( "LarAirbaseSq", 2 )
			
			local havadaryaPlanesCount = 0
			local havadaryaPlanesTypes = {}
			
			if airDensity == 1 then
				havadaryaPlanesCount = 2
			elseif airDensity == 2 then
				havadaryaPlanesCount = 2
			elseif airDensity == 3 then
				havadaryaPlanesCount = 4
			end
			
			if airDifficulty == 0 then
				havadaryaPlanesTypes = { "IRQ SQ Easy Havadarya L39" }
			elseif airDifficulty == 1 then
				havadaryaPlanesTypes = { "IRQ SQ Fair Havadarya F4", "IRQ SQ Fair Havadarya MiG21" }
			elseif airDifficulty == 2 then
				havadaryaPlanesTypes = { "IRQ SQ Hard Havadarya MiG29", "IRQ SQ Hard Havadarya F4" }
			end
			
			A2ADispatcher:SetSquadron("HavadaryaAirbaseSq", AIRBASE.PersianGulf.Havadarya, havadaryaPlanesTypes, havadaryaPlanesCount )
			A2ADispatcher:SetIntercept( 90 )
			A2ADispatcher:SetSquadronOverhead( "HavadaryaAirbaseSq", 1 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "HavadaryaAirbaseSq" )
			A2ADispatcher:SetSquadronGci( "HavadaryaAirbaseSq", 300, 800 )
			A2ADispatcher:SetSquadronGrouping( "HavadaryaAirbaseSq", 2 )
			
			-- setup CAP for havadarya on hard difficulty
			if airDensity == 3 then
				CapZoneSouth = ZONE_POLYGON:New( "IRQ CAP ZONE", GROUP:FindByName( "IRQ CAP ZONE" ) )
				A2ADispatcher:SetSquadronCap( "HavadaryaAirbaseSq", CapZoneSouth, 8000, 15000, 200, 400, 400, 700, "BARO" )
				A2ADispatcher:SetSquadronCapInterval( "HavadaryaAirbaseSq", 100, 300, 120, 1 )
			end
			
			local bandarAbbasPlanesCount = 0
			local bandarAbbasPlanesTypes = {}
			
			if airDensity == 1 then
				bandarAbbasPlanesCount = 2
			elseif airDensity == 2 then
				bandarAbbasPlanesCount = 4
			elseif airDensity == 2 then
				bandarAbbasPlanesCount = 4
			end
			
			if airDifficulty == 0 then
				bandarAbbasPlanesTypes = { "IRQ SQ Easy BandarAbbas L39" }
			elseif airDifficulty == 1 then
				bandarAbbasPlanesTypes = { "IRQ SQ Fair BandarAbbas F4", "IRQ SQ Fair BandarAbbas F5", "IRQ SQ Fair BandarAbbas MiG21" }
			elseif airDifficulty == 2 then
				bandarAbbasPlanesTypes = { "IRQ SQ Hard BandarAbbas F4", "IRQ SQ Hard BandarAbbas MiG29", "IRQ SQ Hard BandarAbbas F14" }
			end
			
			A2ADispatcher:SetSquadron("BandarAbbasAirbaseSq", AIRBASE.PersianGulf.Bandar_Abbas_Intl, bandarAbbasPlanesTypes, bandarAbbasPlanesCount )
			A2ADispatcher:SetIntercept( 120 )
			A2ADispatcher:SetSquadronOverhead( "BandarAbbasAirbaseSq", 1 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "BandarAbbasAirbaseSq" )
			A2ADispatcher:SetSquadronGci( "BandarAbbasAirbaseSq", 300, 800 )
			A2ADispatcher:SetSquadronGrouping( "BandarAbbasAirbaseSq", 2 )
						
			A2ADispatcher:SetTacticalDisplay( debuggerEnabled )
			A2ADispatcher:SetDefaultTakeoffFromParkingCold()
			A2ADispatcher:SetDefaultLandingAtEngineShutdown()
			A2ADispatcher:SetDefaultFuelThreshold( 0.20 )
			A2ADispatcher:SetDisengageRadius( 250000 )
			A2ADispatcher:SetEngageRadius( 100000 )
			A2ADispatcher:SetGciRadius( 100000 )
			A2ADispatcher:Start()
		else
			Detection:Start()
		end
		
		function Detection:OnAfterDetected( From, Event, To, DetectedUnits )
			if bool_blueUnitsDetectedState == false then
				self:E( { From, Event, To, DetectedUnits } )
				for DetectedUnitID, DetectedUnit in pairs( DetectedUnits ) do
					--trigger.action.outText("PING INSIDE", 30)
					for DetectedUnitID, DetectedUnit in pairs( DetectedUnits ) do
						--trigger.action.outText("PING UNIT", 30)
						local foundUnit = UNIT:FindByName(DetectedUnitID)
						local foundUnitGroup = foundUnit:GetGroup()
						local foundUnitCoalition = foundUnitGroup:GetCoalition()
						--trigger.action.outText("PING UNIT FOUND", 30)
						
						if bool_blueUnitsDetectedState == false then
							if foundUnit:IsAlive() == true and foundUnitCoalition == coalition.side.BLUE and foundUnit:IsInZone(CCCPBorderZone) then
								trigger.action.outText("Enemy SAM grid is now active!", 60)
								trigger.action.setUserFlag(Flag_BLUE_IN_RED_BORDER, true)
								bool_mSamBorderIntact = false
								bool_blueUnitsDetectedState = true
								UpdateSamState()
								return nil
							end
						end
					end
				end
			end
		end
	end
	
	UpdateSamState()
	trigger.action.outText("Checking Detection Network complete!", 10)
end

function IsDebuggingOn()
	local debugValue = trigger.misc.getUserFlag(Flag_DEBUG)
	if debugValue > 0 then
		return true
	else
		return false
	end
end

-- sets the SAM activation state. If false they will not fire.
--function SetSamActiveState(bSamsActive)
function UpdateSamState()
	local bDebugEnabled = IsDebuggingOn()
	local boolSamsCanFire = bool_mSamBorderIntact == false and bool_mSamSuppressedByJammers == false
	
	if bDebugEnabled == true then
		if boolSamsCanFire then
			trigger.action.outText("EWR ROE: new value is true", 60)
		else
			trigger.action.outText("EWR ROE: new value is false", 60)
		end
	end
	
	
	if boolSamsCanFire == false and bool_mSamsActive == true then
		bool_mSamsActive = false
		
		Set_EWR:ForEachGroupAlive(
		function(Set_EWR)
			Set_EWR:OptionROEHoldFire()
		end
		)
		
		if bDebugEnabled == true then
			trigger.action.outText("EWR ROE: Hold fire!", 60)
		end
		
		return nil
	elseif boolSamsCanFire == true and bool_mSamsActive == false then
		bool_mSamsActive = true
		Set_EWR:ForEachGroupAlive(
			function(Set_EWR)
				Set_EWR:OptionROEOpenFire()
			end 
		)
		
		if bDebugEnabled == true then
			trigger.action.outText("EWR ROE: OPEN FIRE!", 60)
		end
		return nil
	end
	
	if bDebugEnabled == true then
		trigger.action.outText("EWR ROE: No change!", 60)
	end
	
	return nil
end

function SetJammerEnabled(enabled)
	bool_mSamSuppressedByJammers = enabled
	UpdateSamState()
end

-- Create difficulty settings
table_settingsStore = {}
bool_firstRunDone = false
createMissionSettings()

