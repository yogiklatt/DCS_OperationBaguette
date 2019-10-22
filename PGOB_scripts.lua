string_startMission = 'Start mission'

--bool_allowDebug = true // set in editor

Flag_A2A_DENSITY = '60'
Flag_A2A_DIFFICULTY = '67'
Flag_SAM = '61'
Flag_AWACS = '62'
Flag_TANKER = '63'
Flag_PRIMARY = '64'
Flag_PERKS = '65'
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
string_A2A_density_settings = 'Change A2A setup:'
string_A2A_density_none = 'No Air to Air Threat'
string_A2A_density_low = 'AI - Low Threat (up to 6)'
string_A2A_density_medium = 'AI - Medium Threat (up to 10)'
string_A2A_density_high = 'AI - High Threat (up to 16)'
string_A2A_density_game_master_red = 'HUMAN - Red Commander (eeek!)'
string_A2A_density_game_master_all = 'HUMAN - Blue and Red (aka everybody)'

string_A2A_difficulty_settings = 'Change AI A2A types (AI ONLY!)'
string_A2A_difficulty_easy = 'Easy'
string_A2A_difficulty_fair = 'Fair'
string_A2A_difficulty_hard = 'Hard'

-- SAAAAAAAAAAAAAAAAms
string_SAM_setup = 'Change SAM setup'

string_SAM_settings = 'Change basic SAM threat setting'
string_SAM_threat_none = 'No Threat'
string_SAM_threat_low = 'Low Threat(SA-2, SA-15)'
string_SAM_threat_medium = 'Medium Threat (SA-2, SA-10, SA-15, AAA, Ships)'
string_SAM_threat_high = 'High Threat (SA-2, SA-10, SA-15, AAA, Ships)'

string_SAM_engage_missiles_settings = 'Change SAM engage missiles settings'
string_SAM_engage_missiles_on = 'SAMs engage missiles.'
string_SAM_engage_missiles_off = 'SAMs will not engage missiles.'

string_SAM_GM = 'Change SAM game master settings'
string_SAM_GM_on = 'Game master can spawn SAMs'
string_SAM_GM_off = 'Game master cannot spawn SAMs.'

-- AWACS
string_AWACS_settings = 'Change AWACS setting'
string_AWACS_NONE = 'No AWACS'
string_AWACS_BLUE = 'Blue AWACS'
string_AWACS_RED = 'Red AWACS'
string_AWACS_BLUE_AND_RED = 'Blue and red AWACS'

string_TANKER_settings = 'Change Tanker setting'
string_Tankers_off = 'No tanker'
string_Tankers_west = 'West Tankers (Shell)'
string_Tankers_east = 'East Tankers (Arco)'
string_Tankers_both = 'All Tankers'

-- PRIMARY
string_PRIMARY_settings = 'Change Primary Target'
string_Primary_Yacht = 'Yacht (static, unarmed)'
string_Primary_Yacht_Moving = 'Yacht (moving, unarmed)'
string_Primary_Molniya = 'Molniya (static, armed)'
string_Primary_Molniya_Moving = 'Molniya (moving, unarmed)'

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

-- RED GAME Master
string_GM_SELECT_FLIGHT = 'Select flight'

string_GM_Select_Drone = 'Drones'
string_GM_Select_Easy = 'Easy'
string_GM_Select_Fair = 'Fair'
string_GM_Select_Hard = 'Hard'
string_GM_Select_A2G = 'Ground Attack'

string_GM_airbase_startup = 'Select spawn airbase type'
string_GM_airbase_startup_COLD = 'Cold ground spawn'
string_GM_airbase_startup_HOT = 'Hot ground spawn'
string_GM_airbase_startup_AIR = 'Air spawn'

string_GM_select_airbase = 'Select spawn airbase'

string_GM_select_air_zone = 'Select air spawn zone'

string_GM_select_SAM_zone = 'Select SAM spawn zone'
string_GM_spawn_SAM = 'Spawn SAM at zone'

string_GM_Spawn_Flight = 'Spawn selected plane at ...'
string_GM_Spawn_Flight_AIRBASE = 'Airbase'
string_GM_Spawn_Flight_ZONE = 'Zone'

string_GM_Spawn_AntiAir = 'Spawn anti air'
string_GM_Select_AntiAir = 'Select anti air spawn zone'

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
	elseif flagValue == 4 then
		table_settingsStore[Flag_A2A_DENSITY] = string_A2A_density_game_master_red
	elseif flagValue == 5 then
		table_settingsStore[Flag_A2A_DENSITY] = string_A2A_density_game_master_all
	end
	
	PrintCurrentSettings()
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
	
	PrintCurrentSettings()
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
	
	PrintCurrentSettings()
	return nil
end

function handleSamMissileSetting(flagValue)
	trigger.action.setUserFlag(Flag_SAM_MISSILES, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_SAM_MISSILES] = string_SAM_engage_missiles_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_SAM_MISSILES] = string_SAM_engage_missiles_on
	end
	
	PrintCurrentSettings()
	return nil
end

function handleSamGmSetting(value)
	int_settingsSamsGm = value
	trigger.action.outText("Game master SAM setting set to  " .. int_settingsSamsGm, 30)
	
	PrintCurrentSettings()
	return nil
end

function handleAwacsSetting(flagValue)
	trigger.action.setUserFlag(Flag_AWACS, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_AWACS] = string_AWACS_NONE
	elseif flagValue == 1 then
		table_settingsStore[Flag_AWACS] = string_AWACS_BLUE
	elseif flagValue == 2 then
		table_settingsStore[Flag_AWACS] = string_AWACS_RED
	elseif flagValue == 3 then
		table_settingsStore[Flag_AWACS] = string_AWACS_BLUE_AND_RED
	end
	
	PrintCurrentSettings()
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
	
	PrintCurrentSettings()
	return nil
end

function handlePrimarySetting(flagValue)
	trigger.action.setUserFlag(Flag_PRIMARY, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_PRIMARY] = string_Primary_Yacht
	elseif flagValue == 1 then
		table_settingsStore[Flag_PRIMARY] = string_Primary_Yacht_Moving
	elseif flagValue == 2 then
		table_settingsStore[Flag_PRIMARY] = string_Primary_Molniya
	elseif flagValue == 3 then
		table_settingsStore[Flag_PRIMARY] = string_Primary_Molniya_Moving
	end
	
	PrintCurrentSettings()
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
	
	PrintCurrentSettings()
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
	
	PrintCurrentSettings()
	return nil
end

function removeSettings()
	missionCommands.removeItem(CMD_missionStart)
	
	missionCommands.removeItem(A2A_density_none)
	missionCommands.removeItem(A2A_density_low)
	missionCommands.removeItem(A2A_density_medium)
	missionCommands.removeItem(A2A_density_high)
	missionCommands.removeItem(A2A_density_game_master_red)
	missionCommands.removeItem(A2A_density_game_master_all)
	missionCommands.removeItem(A2A_density_setting)
	
	missionCommands.removeItem(A2A_difficulty_easy)
	missionCommands.removeItem(A2A_difficulty_fair)
	missionCommands.removeItem(A2A_difficulty_hard)
	missionCommands.removeItem(A2A_difficulty_setting)
		
	missionCommands.removeItem(SAM_none)
	missionCommands.removeItem(SAM_low)
	missionCommands.removeItem(SAM_medium)
	missionCommands.removeItem(SAM_high)
	missionCommands.removeItem(SAM_Missile_off)
	missionCommands.removeItem(SAM_Missile_on)
	--missionCommands.removeItem(SAM_gm_off)
	--missionCommands.removeItem(SAM_gm_on)
	--missionCommands.removeItem(SAM_gm_setting)
	missionCommands.removeItem(SAM_missile_setting)
	missionCommands.removeItem(SAM_threat_setting)
	missionCommands.removeItem(SAM_setup_setting)
	
	missionCommands.removeItem(AWACS_off)
	missionCommands.removeItem(AWACS_blue)
	missionCommands.removeItem(AWACS_red)
	missionCommands.removeItem(AWACS_blueAndRed)
	missionCommands.removeItem(AWACS_setting)
	
	
	missionCommands.removeItem(TANKER_off)
	missionCommands.removeItem(TANKER_1)
	missionCommands.removeItem(TANKER_west)
	missionCommands.removeItem(TANKER_east)
	missionCommands.removeItem(TANKER_all)
	missionCommands.removeItem(TANKER_setting)
	
	missionCommands.removeItem(PRIMARY_Yacht)
	missionCommands.removeItem(PRIMARY_Yacht_Moving)
	missionCommands.removeItem(PRIMARY_Molniya)
	missionCommands.removeItem(PRIMARY_Molniya_Moving)
	missionCommands.removeItem(PRIMARY_setting)
	
	--missionCommands.removeItem(PERKS_None)
	--missionCommands.removeItem(PERKS_Cruise_Missiles)
	--missionCommands.removeItem(PERKS_Jammer_Attack)
	--missionCommands.removeItem(PERKS_setting)
	
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

function createMissionSettings()
	CMD_missionStart = missionCommands.addCommand(string_startMission, nil, HandleStart)
	
	A2A_density_setting = missionCommands.addSubMenu(string_A2A_density_settings)
	A2A_density_none = missionCommands.addCommand(string_A2A_density_none, A2A_density_setting, handleA2ADensitySetting, 0)
	A2A_density_low = missionCommands.addCommand(string_A2A_density_low, A2A_density_setting, handleA2ADensitySetting, 1)
	A2A_density_medium = missionCommands.addCommand(string_A2A_density_medium, A2A_density_setting, handleA2ADensitySetting, 2)
	A2A_density_high = missionCommands.addCommand(string_A2A_density_high, A2A_density_setting, handleA2ADensitySetting, 3)
	A2A_density_game_master_red = missionCommands.addCommand(string_A2A_density_game_master_red, A2A_density_setting, handleA2ADensitySetting, 4)
	A2A_density_game_master_all = missionCommands.addCommand(string_A2A_density_game_master_all, A2A_density_setting, handleA2ADensitySetting, 5)
	
	A2A_difficulty_setting = missionCommands.addSubMenu(string_A2A_difficulty_settings)
	A2A_difficulty_easy = missionCommands.addCommand(string_A2A_difficulty_easy, A2A_difficulty_setting, handleA2ADifficultySetting, 0)
	A2A_difficulty_fair = missionCommands.addCommand(string_A2A_difficulty_fair, A2A_difficulty_setting, handleA2ADifficultySetting, 1)
	A2A_difficulty_hard = missionCommands.addCommand(string_A2A_difficulty_hard, A2A_difficulty_setting, handleA2ADifficultySetting, 2)
	
	
	SAM_setup_setting = missionCommands.addSubMenu(string_SAM_setup)
	
	SAM_threat_setting = missionCommands.addSubMenu(string_SAM_settings, SAM_setup_setting)
	SAM_none = missionCommands.addCommand(string_SAM_threat_none, SAM_threat_setting, handleSAMSetting, 0)
	SAM_low = missionCommands.addCommand(string_SAM_threat_low, SAM_threat_setting, handleSAMSetting, 1)
	SAM_medium = missionCommands.addCommand(string_SAM_threat_medium, SAM_threat_setting, handleSAMSetting, 2)
	SAM_high = missionCommands.addCommand(string_SAM_threat_high, SAM_threat_setting, handleSAMSetting, 3)
	
	SAM_mis_setting = missionCommands.addSubMenu(string_SAM_engage_missiles_settings, SAM_setup_setting)
	SAM_mis_off = missionCommands.addCommand(string_SAM_engage_missiles_off, SAM_mis_setting, handleSamMissileSetting, 0)
	SAM_mis_on = missionCommands.addCommand(string_SAM_engage_missiles_on, SAM_mis_setting, handleSamMissileSetting, 1)
	
	--SAM_gm_setting = missionCommands.addSubMenu(string_SAM_GM, SAM_setup_setting)
	--SAM_gm_off = missionCommands.addCommand(string_SAM_GM_off, SAM_gm_setting, handleSamGmSetting, 0)
	--SAM_gm_on = missionCommands.addCommand(string_SAM_GM_on, SAM_gm_setting, handleSamGmSetting, 1)
		
	AWACS_setting = missionCommands.addSubMenu(string_AWACS_settings)
	AWACS_off = missionCommands.addCommand(string_AWACS_NONE, AWACS_setting, handleAwacsSetting, 0)
	AWACS_blue = missionCommands.addCommand(string_AWACS_BLUE, AWACS_setting, handleAwacsSetting, 1)
	AWACS_red = missionCommands.addCommand(string_AWACS_RED, AWACS_setting, handleAwacsSetting, 2)
	AWACS_blueAndRed = missionCommands.addCommand(string_AWACS_BLUE_AND_RED, AWACS_setting, handleAwacsSetting, 3)
		
	TANKER_setting = missionCommands.addSubMenu(string_TANKER_settings)
	TANKER_off = missionCommands.addCommand(string_Tankers_off, TANKER_setting, handleTankerSetting, 0)
	TANKER_west = missionCommands.addCommand(string_Tankers_west, TANKER_setting, handleTankerSetting, 1)
	TANKER_east = missionCommands.addCommand(string_Tankers_east, TANKER_setting, handleTankerSetting, 2)
	TANKER_all = missionCommands.addCommand(string_Tankers_both, TANKER_setting, handleTankerSetting, 3)
	
	PRIMARY_setting = missionCommands.addSubMenu(string_PRIMARY_settings)
	PRIMARY_Yacht = missionCommands.addCommand(string_Primary_Yacht, PRIMARY_setting, handlePrimarySetting, 0)
	PRIMARY_Yacht_Moving = missionCommands.addCommand(string_Primary_Yacht_Moving, PRIMARY_setting, handlePrimarySetting, 1)
	PRIMARY_Molniya = missionCommands.addCommand(string_Primary_Molniya, PRIMARY_setting, handlePrimarySetting, 2)
	PRIMARY_Molniya_Moving = missionCommands.addCommand(string_Primary_Molniya_Moving, PRIMARY_setting, handlePrimarySetting, 3)
	
	--PERKS_setting = missionCommands.addSubMenu(string_PERK_settings)
	--PERKS_None = missionCommands.addCommand(string_Perks_none, PERKS_setting, handlePerkSetting, 0)
	--PERKS_Cruise_Missiles = missionCommands.addCommand(string_Perks_Cruise_Missiles, PERKS_setting, handlePerkSetting, 1)
	--PERKS_Jammer_Attack = missionCommands.addCommand(string_Perks_Jamming_Attack, PERKS_setting, handlePerkSetting, 2)
	
	-- reasonable defaults
	handleA2ADensitySetting(1)
	handleA2ADifficultySetting(0)
	handleSAMSetting(1)
	handleSamMissileSetting(0)
	handleAwacsSetting(1)
	handleTankerSetting(3)
	handlePrimarySetting(0)
	handleSamGmSetting(0)
	--handlePerkSetting(0)
	
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
function PrintCurrentSettings()
	if bool_firstRunDone == true then
		local currentSettings = "Current settings:\n"
		
		local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)
		
		currentSettings = currentSettings .. "--------------------- \n"
		currentSettings = currentSettings .. "1. Air to air: \n"
		currentSettings = currentSettings .. '          Setup: ' .. table_settingsStore[Flag_A2A_DENSITY] .. "\n"
		if airDensity == 4 then
			currentSettings = currentSettings .. "          Types: Under human control (muahahahar) \n"
		else
			currentSettings = currentSettings .. '          Types: ' .. table_settingsStore[Flag_A2A_DIFFICULTY] .. "\n"
		end
		
		currentSettings = currentSettings .. "\n"
		currentSettings = currentSettings .. "\n"
		
		currentSettings = currentSettings .. "2. SAM threat: \n"
		currentSettings = currentSettings .. '          Setup: ' .. table_settingsStore[Flag_SAM] .. "\n"
		currentSettings = currentSettings .. '          Missile behaviour: ' .. table_settingsStore[Flag_SAM_MISSILES] .. "\n"
		
		if int_settingsSamsGm == 0 then
			currentSettings = currentSettings .. '          Game Master: - \n'
		else
			currentSettings = currentSettings .. '          Game Master: Anti Air Spawn Allowed! \n'
		end
		
		currentSettings = currentSettings .. "\n"
		currentSettings = currentSettings .. "\n"
		
		currentSettings = currentSettings .. "3. AWACS setup: " .. table_settingsStore[Flag_AWACS] .. "\n"
		currentSettings = currentSettings .. "\n"
		currentSettings = currentSettings .. "\n"
		
		currentSettings = currentSettings .. "4. Tankers: " .. table_settingsStore[Flag_TANKER] .. " \n"
		currentSettings = currentSettings .. "\n"
		currentSettings = currentSettings .. "\n"
		
		currentSettings = currentSettings .. "5. Primary Target: " .. table_settingsStore[Flag_PRIMARY] .. " \n"
		currentSettings = currentSettings .. "\n"
		currentSettings = currentSettings .. "\n"
		
		--currentSettings = currentSettings .. "6. Available Perk: " .. table_settingsStore[Flag_PERKS] .. " \n"
		--currentSettings = currentSettings .. "\n"
		--currentSettings = currentSettings .. "\n"
		
		trigger.action.outText(currentSettings, 30)
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
	
	--trigger.action.outText("Queshm groups initiated", 10)
	return nil
end

function StartJ11CAP()
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)
	local airDifficulty = trigger.misc.getUserFlag(Flag_A2A_DIFFICULTY)

	if airDensity < 0 and airDifficulty == 2 then
		return nil
	end

	J11CapPlane = GROUP:FindByName( "IRQ SQ J-11 Secondaries" )
	J11PatrolZone = ZONE:New( "J11PatrolZone" )
	J11CapZone = AI_CAP_ZONE:New( J11PatrolZone, 500, 1000, 500, 600 )
	J11EngageZoneGroup = GROUP:FindByName( "IRQ ENGAGE ZONE F5" ) -- editor placed polygon
	J11CapEngageZone = ZONE_POLYGON:New( "IRQ ENGAGE ZONE J11", J11EngageZoneGroup )
	J11CapZone:SetControllable( J11CapPlane )
	J11CapZone:SetEngageZone( J11CapEngageZone ) -- Set the Engage Zone. The AI will only engage when the bogeys are within the TigerCapEngageZone.
	F5CapZone:__Start( 5 ) -- They should statup, and start patrolling in the PatrolZone.
	
	--trigger.action.outText("J-11s starting up ...", 10)
	return nil
end

function SpawnTankers()
	local tankerSetting = trigger.misc.getUserFlag(Flag_TANKER)
	
	if tankerSetting == 1 or tankerSetting == 3 then
		Spawn_Tanker1a = SPAWN:New( "TankerShell1" ):Spawn()
		Spawn_Tanker1b = SPAWN:New( "TankerShell2" ):Spawn()
		if IsDebuggingOn() == true then
			trigger.action.outText("Tankers Shell (west) spawned", 10)
		end
	end
	
	if tankerSetting == 2 or tankerSetting == 3 then
		Spawn_Tanker2a = SPAWN:New( "TankerArco1" ):Spawn()
		Spawn_Tanker2b = SPAWN:New( "TankerArco2" ):Spawn()
		if IsDebuggingOn() == true then
			trigger.action.outText("Tankers Arco (east) spawned", 10)
		end
	end
	return nil
end

function SpawnAWACS()
	local awacsSetting = trigger.misc.getUserFlag(Flag_AWACS)
	
	if awacsSetting == 1 or awacsSetting == 3 then
		trigger.action.setUserFlag(Flag_AWACS_STARTUP, true)
		if IsDebuggingOn() == true then
			trigger.action.outText("AWACS Blue activated", 10)
		end
	end
	
	if awacsSetting == 2 or awacsSetting == 3 then
		trigger.action.setUserFlag(Flag_AWACS_RED_STARTUP, true)
		if IsDebuggingOn() == true then
			trigger.action.outText("AWACS Red activated", 10)
		end
	end
end

function SpawnSAMs()
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	
	local iPhalanxCounter = 0
	
	if samThreat > 0 then
		trigger.action.outText("Setting up SAMs 1. Threat setting is " .. samThreat, 10)
	
		if samThreat == 1 then
			iPhalanxCounter = 4
			MainSamZones = { ZONE:New( "SamSpawnZone2" ), ZONE:New( "SamSpawnZone3" ), ZONE:New( "SamSpawnZone5" ), ZONE:New( "SamSpawnZone6" ), ZONE:New( "SamSpawnZone7" ), ZONE:New( "SamSpawnZone8" ), ZONE:New( "SamSpawnZone9" ), ZONE:New( "SamSpawnZone10" )}
			
			Spawn_MAIN_SA2 = SPAWN:New( "IRQ EWR SA-2" ):InitRandomizeZones( MainSamZones ):Spawn()
			
		elseif samThreat > 1 then
			iPhalanxCounter = 6
			SamZoneTable = { ZONE:New( "SamSpawnZone2" ), ZONE:New( "SamSpawnZone3" ), ZONE:New( "SamSpawnZone5" ), ZONE:New( "SamSpawnZone6" ), ZONE:New( "SamSpawnZone7" ), ZONE:New( "SamSpawnZone8" ), ZONE:New( "SamSpawnZone9" ), ZONE:New( "SamSpawnZone10" ), ZONE:New( "SamSpawnZone11" ), ZONE:New( "SamSpawnZone12" ) }
			
			-- spawn an SA-10
			SAM6 = SPAWN:New( "IRQ EWR SA-10" ):InitRandomizeZones( SamZoneTable ):Spawn()
			
			-- spawn lots of AAA
			SpawnZU23 = SPAWN:New('IRQ EWR ZU23')
			ZoneAAA_01 = ZONE:New( "ZoneAAA_01" )
			ZoneAAA_02 = ZONE:New( "ZoneAAA_02" )
			ZoneAAA_03 = ZONE:New( "ZoneAAA_03" )
			ZoneAAA_04 = ZONE:New( "ZoneAAA_04" )
			
			SpawnZU23:SpawnInZone(ZoneAAA_01)
			SpawnZU23:SpawnInZone(ZoneAAA_02)
			SpawnZU23:SpawnInZone(ZoneAAA_03)
			SpawnZU23:SpawnInZone(ZoneAAA_04)
			
			if samThreat > 2 then
				iPhalanxCounter = 8
				SAM4 = SPAWN:New( "IRQ EWR SA-2" ):InitRandomizeZones( SamZoneTable ):Spawn()
			end
		end
		
		if IsDebuggingOn() == true then
			trigger.action.outText("Phalanx size is " .. iPhalanxCounter, 10)
		end
		
		PhalanxSpawnTable = { ZONE:New( "SamPhalanx1" ), ZONE:New( "SamPhalanx2" ), ZONE:New( "SamPhalanx3" ), ZONE:New( "SamPhalanx4" ), ZONE:New( "SamPhalanx5" ), ZONE:New( "SamPhalanx6" ), ZONE:New( "SamPhalanx7" ), ZONE:New( "SamPhalanx8" ), ZONE:New( "SamPhalanx9" ), ZONE:New( "SamPhalanx10" ), ZONE:New( "SamPhalanx11" ), ZONE:New( "SamPhalanx12" ), ZONE:New( "SamPhalanx13" ), ZONE:New( "SamPhalanx14" ), ZONE:New( "SamPhalanx15" ), ZONE:New( "SamPhalanx16" ), ZONE:New( "SamPhalanx17" ), ZONE:New( "SamPhalanx18" ), ZONE:New( "SamPhalanx19" ), ZONE:New( "SamPhalanx20" ), ZONE:New( "SamPhalanx21" ), ZONE:New( "SamPhalanx22" ), ZONE:New( "SamPhalanx23" ), ZONE:New( "SamPhalanx24" ), ZONE:New( "SamPhalanx25" )}
		
		SA_15_Randomized = SPAWN:New( "IRQ EWR SA-15" ):InitRandomizeZones( PhalanxSpawnTable )
		
		for i=1,iPhalanxCounter,1 do
			if bool_allowDebug == true then
				trigger.action.outText("Spawn Phalanx " .. i, 10)
			end
			table_phalanx[i] = SA_15_Randomized:Spawn()
		end
		
		trigger.action.outText("SAM setup completed", 10)
	end
	
	if int_settingsSamsGm == 1 then
		
		--	Spawn_SAM_SA2 = SPAWN:New( "IRQ EWR SA-2" )
		--	Spawn_SAM_SA10 = SPAWN:New( "IRQ EWR SA-10" )
		--	Spawn_SAM_SA15 = SPAWN:New( "IRQ EWR SA-15" )
		--	Spawn_SAM_HAWK = SPAWN:New('IRQ EWR HAWK')
		--	Spawn_SAM_ZU23 = SPAWN:New('IRQ EWR ZU23')
		--	Spawn_Shilka = SPAWN:New('IRQ EWR Shilka')
		--	
		--	trigger.action.outText("Setting up SAM control for game master", 30)
		--	
		--	CMD_GAME_MASTER_SELECT_SAM_ZONE = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_select_SAM_zone, nil)
		--	
		--	--table_sam_zones = {}
		--	--table_sam_zonesCmds = {}
		--	
		--	table_sam_zones[0] = {myZoneName = "GM_SAM_01", myZone = ZONE:New( "GM_SAM_01" )}
		--	table_sam_zones[1] = {myZoneName = "GM_SAM_02", myZone = ZONE:New( "GM_SAM_02" )}
		--	table_sam_zones[2] = {myZoneName = "GM_SAM_03", myZone = ZONE:New( "GM_SAM_03" )}
		--	table_sam_zones[3] = {myZoneName = "GM_SAM_04", myZone = ZONE:New( "GM_SAM_04" )}
		--	table_sam_zones[4] = {myZoneName = "GM_SAM_05", myZone = ZONE:New( "GM_SAM_05" )}
		--	table_sam_zones[5] = {myZoneName = "GM_SAM_06", myZone = ZONE:New( "GM_SAM_06" )}
		--	table_sam_zones[6] = {myZoneName = "GM_SAM_07", myZone = ZONE:New( "GM_SAM_07" )}
		--	
		--	for key, tableValue in pairs(table_sam_zones) do
		--		--trigger.action.outText("Key: " .. key .. " / Name: " .. tableValue.myZoneName, 14 )
		--		
		--		table_sam_zonesCmds[key] = missionCommands.addCommandForCoalition(coalition.side.RED, tableValue.myZoneName, CMD_GAME_MASTER_SELECT_SAM_ZONE, HandleGameMasterSelectSamZone, key)
		--	end
		--	
		--	table_gameMasterSpawns[0] = { mySpawnType = Spawn_SAM_SA2, mySpawnName = "IRQ EWR SA-2"}
		--	table_gameMasterSpawns[1] = { mySpawnType = Spawn_SAM_SA10, mySpawnName = "IRQ EWR SA-10"}
		--	table_gameMasterSpawns[2] = { mySpawnType = Spawn_SAM_SA15, mySpawnName = "IRQ EWR SA-15"}
		--	table_gameMasterSpawns[3] = { mySpawnType = Spawn_SAM_HAWK, mySpawnName = "IRQ EWR HAWK"}
		--	table_gameMasterSpawns[4] = { mySpawnType = Spawn_SAM_ZU23, mySpawnName = "IRQ EWR ZU23"}
		--	table_gameMasterSpawns[5] = { mySpawnType = Spawn_Shilka, mySpawnName = "IRQ EWR Shilka"}
		--	
		--	CMD_GAME_MASTER_SELECT_SAM_TYPE = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_spawn_SAM, nil)
		--	
		--	for key, value in pairs(table_gameMasterSpawns) do
		--		table_airbaseCmds[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value.mySpawnName, CMD_GAME_MASTER_SELECT_SAM_TYPE, HandleGameMasterSpawnSAM, key)
		--	end
		--	bool_samCommanderInitComplete = true
		--	trigger.action.outText("Game master SAM control established", 30)
	end
	
	return nil
end

function SpawnSAMsFixed()
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	
	if samThreat > 0 then
		trigger.action.outText("Setting up SAMs 1. Threat setting is " .. samThreat, 10)
		
		Spawn_SA2_Fixed = SPAWN:New("IRQ EWR SA-2 Fixed")
		SA15_fixed = SPAWN:New( "IRQ EWR SA-15 Fixed" )
	
		PhalanxSpawnZoneFixed1 = ZONE:New( "PhalanxSpawnFixed1" )
		PhalanxSpawnZoneFixed2 = ZONE:New( "PhalanxSpawnFixed2" )
		ZoneBandarLengeh = ZONE:New( "ZoneSamBandarLengeh" )
		ZoneEntry = ZONE:New( "ZoneSA2Entry" )
		
		Spawn_SA2_Fixed:SpawnInZone(ZoneBandarLengeh, true)
		Spawn_SA2_Fixed:SpawnInZone(ZoneEntry, true)
		SA15_fixed:SpawnInZone(PhalanxSpawnZoneFixed1, true)
		SA15_fixed:SpawnInZone(PhalanxSpawnZoneFixed2, true)
		
		if samThreat > 1 then
			ZoneSA2Island = ZONE:New( "ZoneSA2Island" )
			Spawn_SA2_Fixed:SpawnInZone(ZoneSA2Island, true)
		end
	end
	
end

-- this is to cache all EWR units for later reuse
function SetupEWRSet()
	Set_EWR = SET_GROUP:New():FilterPrefixes( "IRQ EWR" ):FilterStart()
	trigger.action.outText("EWR filters set", 10)
	return nil
end

function HandleGameMasterPlaneSelection(flagValue)
	int_selectedPlaneToSpawn = flagValue
	PrintcommanderInfoLabel()
	return nil
end

function HandleGameMasterSelectSamZone(flagValue)
	int_selectedSamZone = flagValue
	PrintcommanderInfoLabel()
	return nil
end

function HandleGameMasterSpawnSAM(givenValue)
	int_selectedSamSpawn = givenValue
	
	table_gameMasterSpawns[int_selectedSamSpawn].mySpawnType:SpawnInZone( table_sam_zones[int_selectedSamZone].myZone, true )
	
	PrintcommanderInfoLabel()
	return nil
end

function HandleGameMasterSelectAirSpawnZone(givenValue)
	int_spawnSelectedZone = givenValue
	PrintcommanderInfoLabel()
	return nil
end

function HandleGameMasterPlaneSpawn(airbaseOrZone)
	
	
	if airbaseOrZone == 0 then
		trigger.action.outText("Trying to spawn " .. table_gameMasterSpawns[int_selectedPlaneToSpawn].mySpawnName .. " at selected airbase " .. int_selectedAirbaseToSpawn , 3000)
		
		table_gameMasterSpawns[int_selectedPlaneToSpawn].mySpawnType:SpawnAtAirbase( AIRBASE:FindByName( int_selectedAirbaseToSpawn ), int_selectedStartupType )
	elseif airbaseOrZone == 1 then
	
		trigger.action.outText("Trying to spawn " .. table_gameMasterSpawns[int_selectedPlaneToSpawn].mySpawnName .. " at zone " .. table_zones[int_spawnSelectedZone].myZoneName , 3000)
		
		table_gameMasterSpawns[int_selectedPlaneToSpawn].mySpawnType:SpawnInZone( table_zones[int_spawnSelectedZone].myZone , true, 2000, 4000 )  
	end
	PrintcommanderInfoLabel()
	
end

function HandleGameMasterAirBase(flagValue)
	int_selectedAirbaseToSpawn = flagValue
	PrintcommanderInfoLabel()
	return nil
end

function HandleStartupType(flagValue)
	int_selectedStartupType = flagValue
	PrintcommanderInfoLabel()
	return nil
end

function PrintcommanderInfoLabel()
	local commanderInfoLabel = "-----------------------\n"
	commanderInfoLabel = commanderInfoLabel .. "Red commander overview:\n"
	local commanderInfoLabel = "-----------------------\n"
	commanderInfoLabel = commanderInfoLabel .. "\n"
	trigger.action.outTextForCoalition(coalition.side.RED, commanderInfoLabel, 3000)
	
	PrintcommanderInfoLabelSAM()
	PrintcommanderInfoLabelAIR()
	
	return nil
end

function PrintcommanderInfoLabelSAM()

	if bool_SamCommanderInitComplete == false then
		return nil
	end
	
	local commanderInfoLabel = "-----------------------\n"
	commanderInfoLabel = commanderInfoLabel .. "Selected SAM Zone:"
	commanderInfoLabel = commanderInfoLabel ..table_sam_zones[int_spawnSelectedZone].myZoneName .. " \n"
	commanderInfoLabel = commanderInfoLabel .. "\n"
	
	commanderInfoLabel = commanderInfoLabel .. "\n"
	
	trigger.action.outTextForCoalition(coalition.side.RED, commanderInfoLabel, 3000)
	return nil
end

function PrintcommanderInfoLabelAIR()

	if bool_airCommanderInitComplete == false then
		return nil
	end

	local commanderInfoLabel = "-----------------------\n"
	commanderInfoLabel = commanderInfoLabel .. "Red commander overview:\n"
	local commanderInfoLabel = "-----------------------\n"
	commanderInfoLabel = commanderInfoLabel .. "\n"
	
	-- airbase
	commanderInfoLabel = commanderInfoLabel .. "1. Selected spawn airbase: \n" .. table_airbases[int_selectedAirbaseToSpawn] .. "\n"
	commanderInfoLabel = commanderInfoLabel .. "\n"
	
	commanderInfoLabel = commanderInfoLabel .. "2. Selected airbase spawn type: \n"
	-- spawn type at air base
	if int_selectedStartupType == SPAWN.Takeoff.Cold then
		commanderInfoLabel = commanderInfoLabel .. "Cold \n"
	elseif int_selectedStartupType == SPAWN.Takeoff.Hot then
		commanderInfoLabel = commanderInfoLabel .. "Hot \n"
	elseif int_selectedStartupType == SPAWN.Takeoff.Air then
		commanderInfoLabel = commanderInfoLabel .. "Air \n"
	end
	commanderInfoLabel = commanderInfoLabel .. "\n"
	
	-- zones
	commanderInfoLabel = commanderInfoLabel .. "3. Selecteded spawn zone: " .. table_zones[int_spawnSelectedZone].myZoneName .. "\n"
	commanderInfoLabel = commanderInfoLabel .. "\n"
		
	--selected spawn airplane
	commanderInfoLabel = commanderInfoLabel .. "4. Selected group to spawn:"
	commanderInfoLabel = commanderInfoLabel ..table_gameMasterSpawns[int_selectedPlaneToSpawn].mySpawnName .. " \n"	
	commanderInfoLabel = commanderInfoLabel .. "\n"
	commanderInfoLabel = commanderInfoLabel .. "\n"
	trigger.action.outTextForCoalition(coalition.side.RED, commanderInfoLabel, 3000)
	return nil
end



function SetupEWRNetwork()
	trigger.action.outText("Checking Detection Network", 10)
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_DENSITY)
	--trigger.action.outText("DENSITY VALUE IS " .. airDensity, 10)
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
		
		if airDensity > 0 and airDensity < 4 then
			-- do not execute this action on player control
		
			local airDifficulty = trigger.misc.getUserFlag(Flag_A2A_DIFFICULTY)	
		
			A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
			A2ADispatcher:SetBorderZone( CCCPBorderZone )
			
			-- DENSITY													AIRFRAME
			-- three air bases:		Low			Medium		High	| Easy				fair				Hard
			-- Bandar Abbas			2			4			4       | 
			-- Havadarya			2			2			4       | 
			-- Lar AIRBASE			2			4			8       | 
			
			local larPlanesCount = 0
			local enemyPlanesTypes = {}
			if airDensity == 1 then
				larPlanesCount = 2
			elseif airDensity == 2 then
				larPlanesCount = 2
			elseif airDensity == 3 then
				larPlanesCount = 4
			end
			
			if airDifficulty == 0 then
				enemyPlanesTypes = { "IRQ SQ Easy L39", "IRQ SQ Easy MIG15" }
			elseif airDifficulty == 1 then
				enemyPlanesTypes = { "IRQ SQ Fair F5", "IRQ SQ Fair F4", "IRQ SQ Fair MIG23" }
			elseif airDifficulty == 2 then
				enemyPlanesTypes = { "IRQ SQ Hard F14", "IRQ SQ Hard MIG29", "IRQ SQ Hard Mirage", "IRQ SQ Hard F4", "IRQ SQ Hard MIG31", "IRQ SQ HARD MIG23" }
			end
			
			A2ADispatcher:SetSquadron("LarAirbaseSq", AIRBASE.PersianGulf.Lar_Airbase, enemyPlanesTypes, larPlanesCount )
			A2ADispatcher:SetIntercept( 120 )
			A2ADispatcher:SetSquadronOverhead( "LarAirbaseSq", 1 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "LarAirbaseSq" )
			A2ADispatcher:SetSquadronGci( "LarAirbaseSq", 300, 600 )
			A2ADispatcher:SetSquadronGrouping( "LarAirbaseSq", 2 )
			
			local bandarAbbasPlanesCount = 2
			
			if airDensity == 1 then
				bandarAbbasPlanesCount = 2
			elseif airDensity == 2 then
				bandarAbbasPlanesCount = 4
			elseif airDensity == 3 then
				bandarAbbasPlanesCount = 6
			end
						
			--trigger.action.outText("Squadrons set: Plane count " .. bandarAbbasPlanesCount .. ", difficulty " .. airDifficulty .. " " .. "!!!", 100)
			
			A2ADispatcher:SetSquadron("BandarAbbasSq", AIRBASE.PersianGulf.Bandar_Abbas_Intl, enemyPlanesTypes, bandarAbbasPlanesCount )
			A2ADispatcher:SetIntercept( 120 )
			A2ADispatcher:SetSquadronOverhead( "BandarAbbasSq", 0.75 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "BandarAbbasSq" )
			A2ADispatcher:SetSquadronGci( "BandarAbbasSq", 300, 600 )
			A2ADispatcher:SetSquadronGrouping( "BandarAbbasSq", 2 )
			
			--setup CAP for havadarya on hard difficulty
			if airDensity == 3 then
				CapZoneSouth = ZONE_POLYGON:New( "CapZoneSouth", GROUP:FindByName( "IRQ CAP ZONE" ) )
				A2ADispatcher:SetSquadronCap( "BandarAbbasSq", CapZoneSouth, 8000, 15000, 200, 400, 400, 700, "BARO" )
				A2ADispatcher:SetSquadronCapInterval( "BandarAbbasSq", 100, 300, 120, 1 )
			end
			
			A2ADispatcher:SetTacticalDisplay( debuggerEnabled )
			A2ADispatcher:SetDefaultTakeoffFromParkingCold()
			A2ADispatcher:SetDefaultLandingAtEngineShutdown()
			A2ADispatcher:SetDefaultFuelThreshold( 0.20 )
			A2ADispatcher:SetDisengageRadius( 250000 )
			A2ADispatcher:SetEngageRadius( 100000 )
			A2ADispatcher:SetGciRadius( 150000 )
			A2ADispatcher:Start()
		else
			Detection:Start()
			
			if airDensity > 3 then
				-- red is under enemy control
				
				-- airplanes
				
				table_gameMasterSpawns[1] = { myCategory = 0,mySpawnType = SPAWN:New( "IRQ SQ Drone C101" ):InitGrouping(2), mySpawnName = "IRQ SQ Drone C101"}
				table_gameMasterSpawns[2] = { myCategory = 0,mySpawnType = SPAWN:New( "IRQ SQ Drone IL78" ):InitGrouping(2), mySpawnName = "IRQ SQ Drone IL78"}
				table_gameMasterSpawns[3] = { myCategory = 0,mySpawnType = SPAWN:New( "IRQ SQ Drone SU30" ):InitGrouping(2), mySpawnName = "IRQ SQ Drone SU30"}
				table_gameMasterSpawns[11] = { myCategory = 1,mySpawnType = SPAWN:New( "IRQ SQ Easy L39" ):InitGrouping(2), mySpawnName = "IRQ SQ Easy L39"}
				table_gameMasterSpawns[11] = { myCategory = 1,mySpawnType = SPAWN:New( "IRQ SQ Easy L39" ):InitGrouping(2), mySpawnName = "IRQ SQ Easy L39"}
				table_gameMasterSpawns[12] = { myCategory = 1,mySpawnType = SPAWN:New( "IRQ SQ Easy MIG15" ):InitGrouping(2), mySpawnName = "IRQ SQ Easy MIG15"}
				table_gameMasterSpawns[21] = { myCategory = 2,mySpawnType = SPAWN:New( "IRQ SQ Fair F5" ):InitGrouping(2), mySpawnName = "IRQ SQ Fair F5"}
				table_gameMasterSpawns[22] = { myCategory = 2,mySpawnType = SPAWN:New( "IRQ SQ Fair F4" ):InitGrouping(2), mySpawnName = "IRQ SQ Fair F4"}
				table_gameMasterSpawns[23] = { myCategory = 2,mySpawnType = SPAWN:New( "IRQ SQ Fair MIG23" ):InitGrouping(2), mySpawnName = "IRQ SQ Fair MIG23"}
				table_gameMasterSpawns[31] = { myCategory = 3,mySpawnType = SPAWN:New( "IRQ SQ Hard F14" ):InitGrouping(2), mySpawnName = "IRQ SQ Hard F14"}
				table_gameMasterSpawns[32] = { myCategory = 3,mySpawnType = SPAWN:New( "IRQ SQ Hard MIG29" ):InitGrouping(2), mySpawnName = "IRQ SQ Hard MIG29"}
				table_gameMasterSpawns[33] = { myCategory = 3,mySpawnType = SPAWN:New( "IRQ SQ Hard Mirage" ):InitGrouping(2), mySpawnName = "IRQ SQ Hard Mirage"}
				table_gameMasterSpawns[34] = { myCategory = 3,mySpawnType = SPAWN:New( "IRQ SQ Hard F4" ):InitGrouping(2), mySpawnName = "IRQ SQ Hard F4"}
				table_gameMasterSpawns[35] = { myCategory = 3,mySpawnType = SPAWN:New( "IRQ SQ Hard MIG31" ):InitGrouping(2), mySpawnName = "IRQ SQ Hard MIG31"}
				table_gameMasterSpawns[36] = { myCategory = 3,mySpawnType = SPAWN:New( "IRQ SQ HARD MIG23" ):InitGrouping(2), mySpawnName = "IRQ SQ HARD MIG23"}
				table_gameMasterSpawns[41] = { myCategory = 4,mySpawnType = SPAWN:New( "IRQ SQ A2G SU25T" ):InitGrouping(2), mySpawnName = "IRQ SQ A2G SU25T"}
				table_gameMasterSpawns[42] = { myCategory = 4,mySpawnType = SPAWN:New( "IRQ SQ A2G SU34 SEAD" ):InitGrouping(2), mySpawnName = "IRQ SQ A2G SU34 SEAD"}
				table_gameMasterSpawns[43] = { myCategory = 4,mySpawnType = SPAWN:New( "IRQ SQ A2G SU34" ):InitGrouping(2), mySpawnName = "IRQ SQ A2G SU34"}
				table_gameMasterSpawns[44] = { myCategory = 4,mySpawnType = SPAWN:New( "IRQ SQ A2G TU22" ):InitGrouping(2), mySpawnName = "IRQ SQ A2G TU22"}
				
				-- airbases
				table_airbases[AIRBASE.PersianGulf.Bandar_Abbas_Intl] = "Bandar Abbas"
				table_airbases[AIRBASE.PersianGulf.Bandar_Lengeh] = "Bandar Lengeh"
				table_airbases[AIRBASE.PersianGulf.Havadarya] = "Havadarya"
				table_airbases[AIRBASE.PersianGulf.Lar_Airbase] = "Lar"
				table_airbases[AIRBASE.PersianGulf.Qeshm_Island] = "Qeshm_Island"
				table_airbases[AIRBASE.PersianGulf.Shiraz_International_Airport] = "Shiraz"
				
								-- zones
				table_zones[0] = {myZoneName = "NorthEastOfKhasab", myZone = ZONE:New( "GameMaster_NorthEastOfKhasab" )}
				table_zones[1] = {myZoneName = "NorthOfLar", myZone =ZONE:New( "GameMaster_NorthOfLar" )}
				table_zones[2] = {myZoneName = "WestOfKhasab_Sea", myZone = ZONE:New( "GameMaster_WestOfKhasab_Sea" )}
				table_zones[3] = {myZoneName = "NorthOfBandarAbbas", myZone = ZONE:New( "GameMaster_NorthOfBandarAbbas" )}
				
				if airDensity == 4 then
					CMD_GM_SPAWN = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_Spawn_Flight, nil)
					CMD_GM_SPAWN_AT_AIRBASE = missionCommands.addCommandForCoalition(coalition.side.RED, string_GM_Spawn_Flight_AIRBASE, CMD_GM_SPAWN, HandleGameMasterPlaneSpawn, 0)
					CMD_GM_SPAWN_AT_ZONE = missionCommands.addCommandForCoalition(coalition.side.RED, string_GM_Spawn_Flight_ZONE, CMD_GM_SPAWN, HandleGameMasterPlaneSpawn, 1)
					
					CMD_GAME_MASTER_SELECT_AIRBASE = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_select_airbase, nil)
					
					for key, value in pairs(table_airbases) do
						table_airbaseCmds[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value, CMD_GAME_MASTER_SELECT_AIRBASE, HandleGameMasterAirBase, key)
					end
					
					CMD_GAME_MASTER_SELECT_TYPE = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_airbase_startup, nil)
					CMD_GAME_MASTER_SELECT_TYPE_COLD = missionCommands.addCommandForCoalition(coalition.side.RED, string_GM_airbase_startup_COLD, CMD_GAME_MASTER_SELECT_TYPE, HandleStartupType, SPAWN.Takeoff.Cold)
					CMD_GAME_MASTER_SELECT_TYPE_HOT = missionCommands.addCommandForCoalition(coalition.side.RED, string_GM_airbase_startup_HOT, CMD_GAME_MASTER_SELECT_TYPE, HandleStartupType, SPAWN.Takeoff.Hot)
					CMD_GAME_MASTER_SELECT_TYPE_AIR = missionCommands.addCommandForCoalition(coalition.side.RED, string_GM_airbase_startup_AIR, CMD_GAME_MASTER_SELECT_TYPE, HandleStartupType, SPAWN.Takeoff.Air)
					
					CMD_GAME_MASTER_SELECT_ZONE = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_select_air_zone, nil)
					for key, tableValue in pairs(table_zones) do
						table_zonesCmds[key] = missionCommands.addCommandForCoalition(coalition.side.RED, tableValue.myZoneName, CMD_GAME_MASTER_SELECT_ZONE, HandleGameMasterSelectAirSpawnZone, key)
					end
					
					CMD_GM_SELECT_FLIGHT = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_SELECT_FLIGHT, nil)
					CMD_GM_SELECT_FLIGHT_DRONE = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_Select_Drone, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_EASY = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_Select_Easy, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_FAIR = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_Select_Fair, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_HARD = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_Select_Hard, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_A2G = missionCommands.addSubMenuForCoalition(coalition.side.RED, string_GM_Select_A2G, CMD_GM_SELECT_FLIGHT)
					
					for key, value in pairs(table_gameMasterSpawns) do
						if value.myCategory == 0 then
							table_gameMasterSpawnsCmdDrone[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value.mySpawnName, CMD_GM_SELECT_FLIGHT_DRONE, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 1 then
							table_gameMasterSpawnsCmdEasy[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value.mySpawnName, CMD_GM_SELECT_FLIGHT_EASY, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 2 then
							table_gameMasterSpawnsCmdFair[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value.mySpawnName, CMD_GM_SELECT_FLIGHT_FAIR, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 3 then
							table_gameMasterSpawnsCmdHard[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value.mySpawnName, CMD_GM_SELECT_FLIGHT_HARD, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 4 then
							table_gameMasterSpawnsCmdA2G[key] = missionCommands.addCommandForCoalition(coalition.side.RED, value.mySpawnName, CMD_GM_SELECT_FLIGHT_A2G, HandleGameMasterPlaneSelection, key)
						end
					end
					bool_airCommanderInitComplete = true -- only red commander gets debug info
				else
					CMD_GM_SPAWN = missionCommands.addSubMenu(string_GM_Spawn_Flight, nil)
					CMD_GM_SPAWN_AT_AIRBASE = missionCommands.addCommand( string_GM_Spawn_Flight_AIRBASE, CMD_GM_SPAWN, HandleGameMasterPlaneSpawn, 0)
					CMD_GM_SPAWN_AT_ZONE = missionCommands.addCommand( string_GM_Spawn_Flight_ZONE, CMD_GM_SPAWN, HandleGameMasterPlaneSpawn, 1)
					
					CMD_GAME_MASTER_SELECT_AIRBASE = missionCommands.addSubMenu(string_GM_select_airbase, nil)
					
					for key, value in pairs(table_airbases) do
						table_airbaseCmds[key] = missionCommands.addCommand( value, CMD_GAME_MASTER_SELECT_AIRBASE, HandleGameMasterAirBase, key)
					end
					
					CMD_GAME_MASTER_SELECT_TYPE = missionCommands.addSubMenu(string_GM_airbase_startup, nil)
					CMD_GAME_MASTER_SELECT_TYPE_COLD = missionCommands.addCommand( string_GM_airbase_startup_COLD, CMD_GAME_MASTER_SELECT_TYPE, HandleStartupType, SPAWN.Takeoff.Cold)
					CMD_GAME_MASTER_SELECT_TYPE_HOT = missionCommands.addCommand( string_GM_airbase_startup_HOT, CMD_GAME_MASTER_SELECT_TYPE, HandleStartupType, SPAWN.Takeoff.Hot)
					CMD_GAME_MASTER_SELECT_TYPE_AIR = missionCommands.addCommand( string_GM_airbase_startup_AIR, CMD_GAME_MASTER_SELECT_TYPE, HandleStartupType, SPAWN.Takeoff.Air)
					
					CMD_GAME_MASTER_SELECT_ZONE = missionCommands.addSubMenu(string_GM_select_air_zone, nil)
					for key, tableValue in pairs(table_zones) do
						table_zonesCmds[key] = missionCommands.addCommand( tableValue.myZoneName, CMD_GAME_MASTER_SELECT_ZONE, HandleGameMasterSelectAirSpawnZone, key)
					end
					
					CMD_GM_SELECT_FLIGHT = missionCommands.addSubMenu(string_GM_SELECT_FLIGHT, nil)
					CMD_GM_SELECT_FLIGHT_DRONE = missionCommands.addSubMenu(string_GM_Select_Drone, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_EASY = missionCommands.addSubMenu(string_GM_Select_Easy, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_FAIR = missionCommands.addSubMenu(string_GM_Select_Fair, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_HARD = missionCommands.addSubMenu(string_GM_Select_Hard, CMD_GM_SELECT_FLIGHT)
					CMD_GM_SELECT_FLIGHT_A2G = missionCommands.addSubMenu(string_GM_Select_A2G, CMD_GM_SELECT_FLIGHT)
					
					for key, value in pairs(table_gameMasterSpawns) do
						if value.myCategory == 0 then
							table_gameMasterSpawnsCmdDrone[key] = missionCommands.addCommand( value.mySpawnName, CMD_GM_SELECT_FLIGHT_DRONE, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 1 then
							table_gameMasterSpawnsCmdEasy[key] = missionCommands.addCommand( value.mySpawnName, CMD_GM_SELECT_FLIGHT_EASY, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 2 then
							table_gameMasterSpawnsCmdFair[key] = missionCommands.addCommand( value.mySpawnName, CMD_GM_SELECT_FLIGHT_FAIR, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 3 then
							table_gameMasterSpawnsCmdHard[key] = missionCommands.addCommand( value.mySpawnName, CMD_GM_SELECT_FLIGHT_HARD, HandleGameMasterPlaneSelection, key)
						elseif value.myCategory == 4 then
							table_gameMasterSpawnsCmdA2G[key] = missionCommands.addCommand( value.mySpawnName, CMD_GM_SELECT_FLIGHT_A2G, HandleGameMasterPlaneSelection, key)
						end
					end
				end
				
				
				-- set default airbase
				HandleGameMasterAirBase(AIRBASE.PersianGulf.Bandar_Abbas_Intl)
				HandleStartupType(SPAWN.Takeoff.Hot)
				HandleGameMasterPlaneSelection(11)
				trigger.action.outText("Gave a shit ton of powah to the game master ... !", 10)
			end
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
								if IsDebuggingOn() == true then
									trigger.action.outText("Enemy SAM grid is now active!", 60)
								end
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
table_phalanx = {}
table_gameMasterSpawns = {}
table_gameMasterSpawnsCmdDrone = {}
table_gameMasterSpawnsCmdEasy = {}
table_gameMasterSpawnsCmdFair = {}
table_gameMasterSpawnsCmdHard = {}
table_gameMasterSpawnsCmdA2G = {}
table_samTemplates = {}
table_airbases = {}
table_airbaseCmds = {}
table_zones = {}
table_zonesCmds = {}

table_sam_zones = {}
table_sam_zonesCmds = {}

bool_firstRunDone = false

bool_airCommanderInitComplete = false
bool_SamCommanderInitComplete = false

int_selectedAirbaseToSpawn = 0
int_spawnSelectedZone = 0
int_selectedStartupType = 0
int_selectedPlaneToSpawn = 0
int_selectedSamZone = 0
int_selectedSamSpawn = 0
int_settingsSamsGm = 0

createMissionSettings()

