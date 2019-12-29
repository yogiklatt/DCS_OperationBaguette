string_startMission = 'Start mission'

--bool_allowDebug = true // set in editor

Flag_A2A_GENERAL_SETUP = '60'
Flag_A2A_DIFFICULTY = '67'
Flag_SAM = '61'
Flag_AWACS = '62'
Flag_TANKER = '63'
Flag_PRIMARY = '64'
Flag_SAM_MISSILES = '66'
Flag_DEBUG = '69'
Flag_MISSION_START = '70'
Flag_AWACS_STARTUP = '40'
Flag_AWACS_RED_STARTUP = '41'
Flag_BLUE_IN_RED_BORDER = '95'

Flag_GM_SAM_SPAWN = '555'

-- flags 80 to 89 are reserved for in-editor stuff!

-- A2A THREAT
string_A2A_density_settings = 'Change A2A setup:'
string_A2A_density_none = 'No Air to Air Threat'
string_A2A_density_low = 'AI - Low Density (up to 6)'
string_A2A_density_medium = 'AI - Medium Density (up to 10)'
string_A2A_density_high = 'AI - High Density (up to 16)'
string_A2A_density_game_master_red = 'HUMAN - Red Commander (eeek!)'
string_A2A_density_game_master_all = 'HUMAN - Blue and Red (aka everybody)'

string_A2A_difficulty_settings = 'Change AI A2A types (AI ONLY!)'
string_A2A_difficulty_easy = 'Easy'
string_A2A_difficulty_fair = 'Fair'
string_A2A_difficulty_hard = 'Hard'

-- SAAAAAAAAAAAAAAAAms
string_SAM_setup = 'Change SAM / Ground setup'

string_SAM_settings = 'Change basic SAM threat setting'
string_SAM_threat_none = 'No Threat'
string_SAM_threat_low = 'Low Threat(SA-2, SA-15)'
string_SAM_threat_medium = 'Medium Threat (SA-2, SA-10, SA-15, AAA, Ships)'
string_SAM_threat_high = 'High Threat (SA-2, SA-10, SA-15, AAA, Ships)'

string_SAM_engage_missiles_settings = 'Change SAM engage missiles settings'
string_SAM_engage_missiles_on = 'SAMs engage missiles.'
string_SAM_engage_missiles_off = 'SAMs will not engage missiles.'

string_SAM_GM = 'Change Ground Unit game master settings'
string_SAM_GM_off = 'No ground unit spawns.'
string_SAM_GM_red = 'Red can spawn ground units'
string_SAM_GM_all = 'All players can spawn ground units'

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

-- Game master
string_spawn_air_cmd_spawnair = "spawnair"
string_spawn_air_cmd_spawnairport = "spawnairport"
string_spawn_air_drone = "drone"
string_spawn_air_cap = "cap"
string_spawn_air_ga = "ga"
string_spawn_air_antiship = "antiship"
string_spawn_air_cas = "cas"
string_spawn_air_sead = "sead"
string_spawn_airfield_startup_cold = "cold"
string_spawn_airfield_startup_hot = "hot"
string_spawn_airfield_startup_air = "air"

string_spawn_ground_cmd = "spawnground"
string_spawn_ground_cmd_aa = "aa"
string_spawn_ground_cmd_armor = "armor"
string_spawn_ground_cmd_ship = "ship"
string_spawn_ground_cmd_convoy = "convoy"

string_gm_killzone = "kill"

bool_blueUnitsDetectedState = false

-- if any of these two are true, SAMs wont fire
bool_mSamBorderIntact = true
bool_mSamSuppressedByJammers = false
bool_mSamsActive = true

-- Create difficulty settings
table_settingsStore = {}
table_phalanx = {}
table_airbases = {}
table_airbaseCmds = {}
bool_firstRunDone = false

table_gm_drone = {}
table_gm_cap = {}
table_gm_ga = {}
table_gm_sead = {}
table_gm_antiship = {}
table_gm_cas = {}

table_gm_ground_aa = {}
table_gm_ground_armor = {}
table_gm_ground_ship = {}
table_gm_ground_convoy = {}

bool_airCommanderInitComplete = false
bool_SamCommanderInitComplete = false

bool_airCommanderIsRed = false
bool_airCommanderIsEveryone = false

int_settingsSamsGm = 0 -- 0: off, 1 red only, 2 all

customEventHandler = {}

function PrintCurrentSettings()
	if bool_firstRunDone == true then
		local currentSettings = "Current settings:\n"
	
		local airDensity = trigger.misc.getUserFlag(Flag_A2A_GENERAL_SETUP)
	
		currentSettings = currentSettings .. "--------------------- \n"
		currentSettings = currentSettings .. "1. Air to air: \n"
		currentSettings = currentSettings .. '          Setup: ' .. table_settingsStore[Flag_A2A_GENERAL_SETUP] .. "\n"
		if airDensity == 4 then
			currentSettings = currentSettings .. "          Types: Under human control (red) \n"
		elseif airDensity == 5 then
			currentSettings = currentSettings .. "          Types: Under human control (all) \n"
		else
			currentSettings = currentSettings .. '          Types: ' .. table_settingsStore[Flag_A2A_DIFFICULTY] .. "\n"
		end
	
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "2. Ground threat: \n"
		currentSettings = currentSettings .. '          Setup: ' .. table_settingsStore[Flag_SAM] .. "\n"
		currentSettings = currentSettings .. '          Missile behaviour: ' .. table_settingsStore[Flag_SAM_MISSILES] .. "\n"
		currentSettings = currentSettings .. '          Game Master: ' .. table_settingsStore[Flag_GM_SAM_SPAWN] .. "\n"
	
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "3. AWACS setup: " .. table_settingsStore[Flag_AWACS] .. "\n"
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "4. Tankers: " .. table_settingsStore[Flag_TANKER] .. " \n"
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "5. Primary Target: " .. table_settingsStore[Flag_PRIMARY] .. " \n"
		currentSettings = currentSettings .. "\n"
	
		trigger.action.outText(currentSettings, 30)
		trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	end
	
	return nil
end

-- There was some DCS trigger hookup when I tried merge all those handle function ... so I was too lazy to figure what was going wrong.
-- flagValue was a bigger object with both the flag and its value ... but somehow it then did not properly call setUserFlag ... dont know.
function handleA2ADensitySetting(flagValue)
	trigger.action.setUserFlag(Flag_A2A_GENERAL_SETUP, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_A2A_GENERAL_SETUP] = string_A2A_density_none
	elseif flagValue == 1 then
		table_settingsStore[Flag_A2A_GENERAL_SETUP] = string_A2A_density_low
	elseif flagValue == 2 then
		table_settingsStore[Flag_A2A_GENERAL_SETUP] = string_A2A_density_medium
	elseif flagValue == 3 then
		table_settingsStore[Flag_A2A_GENERAL_SETUP] = string_A2A_density_high
	elseif flagValue == 4 then
		table_settingsStore[Flag_A2A_GENERAL_SETUP] = string_A2A_density_game_master_red
	elseif flagValue == 5 then
		table_settingsStore[Flag_A2A_GENERAL_SETUP] = string_A2A_density_game_master_all
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
	
	if int_settingsSamsGm == 0 then
		table_settingsStore[Flag_GM_SAM_SPAWN] = string_SAM_GM_off
	elseif int_settingsSamsGm == 1 then
		table_settingsStore[Flag_GM_SAM_SPAWN] = string_SAM_GM_red
	elseif int_settingsSamsGm == 2 then
		table_settingsStore[Flag_GM_SAM_SPAWN] = string_SAM_GM_all
	end
	
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
	missionCommands.removeItem(SAM_gm_off)
	missionCommands.removeItem(SAM_gm_red)
	missionCommands.removeItem(SAM_gm_all)
	missionCommands.removeItem(SAM_gm_setting)
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
	return nil
end

function HandleStart()
	removeSettings()
	trigger.action.setUserFlag('70', 1)
end

function createMissionSettings()
	-- reasonable defaults
	handleA2ADensitySetting(0)
	handleA2ADifficultySetting(0)
	handleSAMSetting(0)
	handleSamMissileSetting(0)
	handleAwacsSetting(0)
	handleTankerSetting(0)
	handlePrimarySetting(0)
	handleSamGmSetting(0)

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
	
	SAM_gm_setting = missionCommands.addSubMenu(string_SAM_GM, SAM_setup_setting)
	SAM_gm_off = missionCommands.addCommand(string_SAM_GM_off, SAM_gm_setting, handleSamGmSetting, 0)
	SAM_gm_red = missionCommands.addCommand(string_SAM_GM_red, SAM_gm_setting, handleSamGmSetting, 1)
	SAM_gm_all = missionCommands.addCommand(string_SAM_GM_all, SAM_gm_setting, handleSamGmSetting, 2)
		
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
	
	bool_firstRunDone = true
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
	
	if int_settingsSamsGm > 0 then
		trigger.action.outText("Setting up SAM controls for game master", 30)
	
		table_gm_ground_aa[0] = { mySpawnType = SPAWN:New("IRQ EWR SA-2 GM"), mySpawnName = "SA-2 site"}
		table_gm_ground_aa[1] = { mySpawnType = SPAWN:New("IRQ EWR SA-10 GM"), mySpawnName = "SA-10 site"}
		table_gm_ground_aa[2] = { mySpawnType = SPAWN:New("IRQ EWR SA-15 GM"), mySpawnName = "SA-15"}
		table_gm_ground_aa[3] = { mySpawnType = SPAWN:New("IRQ EWR SA-3 GM"), mySpawnName = "SA-3 site"}
		table_gm_ground_aa[4] = { mySpawnType = SPAWN:New("IRQ EWR SA-6 GM"), mySpawnName = "SA-6 site"}
		table_gm_ground_aa[5] = { mySpawnType = SPAWN:New("IRQ EWR Shilka GM"), mySpawnName = "Shilka"}
		table_gm_ground_aa[5] = { mySpawnType = SPAWN:New("IRQ EWR AAA GM"), mySpawnName = "AAA Enclosed"}
		table_gm_ground_aa[6] = { mySpawnType = SPAWN:New("IRQ EWR SITE ISLAND GM"), mySpawnName = "EW site"}
		
		table_gm_ground_ship[0] = { mySpawnType = SPAWN:New("IRQ EWR Ship Molniya GM"), mySpawnName = "Molniya"}
		table_gm_ground_ship[1] = { mySpawnType = SPAWN:New("IRQ EWR Ship Grisha GM"), mySpawnName = "Grisha"}
		table_gm_ground_ship[2] = { mySpawnType = SPAWN:New("IRQ EWR Ship Moskva GM"), mySpawnName = "Moskva"}
		table_gm_ground_ship[3] = { mySpawnType = SPAWN:New("IRQ EWR Ship Neutrashimy GM"), mySpawnName = "Neutrashimy"}
		
		table_gm_ground_armor[0] = { mySpawnType = SPAWN:New("IRQ EWR ARMOR GM"), mySpawnName = "Armored column"}
		
		table_gm_ground_convoy[0] = { mySpawnType = SPAWN:New("IRQ EWR CONVOY GM"), mySpawnName = "Convoy"}
		
		bool_SamCommanderInitComplete = true
	
		if int_settingsSamsGm == 1 then
			CMD_GM_LIST_GROUND = missionCommands.addSubMenuForCoalition(coalition.side.RED, "Print Ground Unit info")
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print Anti-air units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_aa)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print armor units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_armor)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print sea units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_ship)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print convoys", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_convoy)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print use", CMD_GM_LIST_GROUND, HandleGameMasterPrintGroundManual)
		elseif int_settingsSamsGm == 2 then
			CMD_GM_LIST_GROUND = missionCommands.addSubMenu("Print Ground Unit info")
			missionCommands.addCommand("Print Anti-air units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_aa)
			missionCommands.addCommand("Print armor units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_armor)
			missionCommands.addCommand("Print sea units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_ship)
			missionCommands.addCommand("Print convoys", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_convoy)
			missionCommands.addCommand("Print use", CMD_GM_LIST_GROUND, HandleGameMasterPrintGroundManual)
		end
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

function HandleGameMasterPrintAirManual()
	local useLabel = "\nTo spawn a flight create a marker with the following labels:\n"
	useLabel = useLabel .."\n spawnair [type] [flight index] --> e.g. spawnair sead 1 \n"
	useLabel = useLabel .."\n spawnairport [type] [flight index] [airbase index] [hot, cold, air] \n--> e.g. spawnairport sead 1 1 cold\n"
	useLabel = useLabel .."\n\nThe available labels are:\n"
	useLabel = useLabel .. string_spawn_air_drone .. "\n"
	useLabel = useLabel .. string_spawn_air_cap .. "\n"
	useLabel = useLabel .. string_spawn_air_ga .. "\n"
	useLabel = useLabel .. string_spawn_air_antiship .. "\n"
	useLabel = useLabel .. string_spawn_air_cas .. "\n"
	useLabel = useLabel .. string_spawn_air_sead .. "\n"
	useLabel = useLabel .. "\n\nYou can also use 'kill xxx' to kill ANY unit within a radius of xxx meters (max 2000!)\n"
	PrintAirForCoalition(useLabel, 15)
end

function HandleGameMasterPrintFlights(usedTable)
	HandleGameMasterPrintAirManual()
	local string_flightOverview = ""
	string_flightOverview = string_flightOverview .. "\n" .. string_spawn_air_drone .. ":\n"
	for key, value in pairs(usedTable) do
		string_flightOverview = string_flightOverview .. "[" .. key .. "] " .. value.mySpawnName .. "\n"
	end
	
	PrintAirForCoalition(string_flightOverview, 15)
end

function HandleGameMasterPrintAirports()
	local airbasesLabel = "\nAirports:\n"
	for key, value in pairs(table_airbases) do
		airbasesLabel = airbasesLabel .. "[" .. key .. "] " .. value.myName .. "\n"
	end
	PrintAirForCoalition(airbasesLabel, 15)
end

function HandleGameMasterPrintGroundManual()
	local useLabel = "\nTo spawn a ground unit a marker with the following labels:\n"
	useLabel = useLabel .."\n" .. string_spawn_ground_cmd .. " [type] [index] --> e.g. spawnground aa 0 \n"
	useLabel = useLabel .."\n\nThe available labels are:\n"
	useLabel = useLabel .. string_spawn_ground_cmd_aa .. "\n"
	useLabel = useLabel .. string_spawn_ground_cmd_armor .. "\n"
	useLabel = useLabel .. string_spawn_ground_cmd_ship .. "\n"
	useLabel = useLabel .. string_spawn_ground_cmd_convoy .. "\n"
	useLabel = useLabel .. "\n\nYou can also use 'kill xxx' to kill ANY unit within a radius of xxx meters (max 2000!)\n"
	PrintGroundForCoalition(useLabel, 15)
end

function HandleGameMasterPrintGround(usedTable)
	HandleGameMasterPrintGroundManual()
	local sting_overview = ""
	for key, value in pairs(usedTable) do
		sting_overview = sting_overview .. "[" .. key .. "] " .. value.mySpawnName .. "\n"
	end
	
	PrintGroundForCoalition(sting_overview, 15)
end

function HandleGameMasterSpawnPlaneInWorld(spawn, vec3_position)
	PrintAirForCoalition("Trying to spawn " .. spawn.mySpawnName .. " at selected pos " .. vec3_position.x .. " " .. vec3_position.y .. " " .. vec3_position.z , 30)
	local vec3_corrected = vec3_position
	vec3_corrected.y = vec3_corrected.y + 500 -- add a couple of meters above ground
	lastSpawnCoordinate = COORDINATE:NewFromVec3(vec3_corrected)
	spawn.mySpawnType:SpawnFromCoordinate(lastSpawnCoordinate)
end

function HandleGameMasterSpawnPlaneAtBase(spawn, airbase, startup)
	PrintAirForCoalition("Trying to spawn " .. spawn.mySpawnName .. " at selected airbase " .. airbase.myName , 30)
	spawn.mySpawnType:SpawnAtAirbase( AIRBASE:FindByName( airbase.myType ), startup )
end

function HandleGameMasterSpawnGroundUnit(spawn, vec3_position)
	PrintGroundForCoalition("Trying to spawn " ..spawn.mySpawnName .. " at selected pos " .. vec3_position.x .. " " .. vec3_position.y .. " " .. vec3_position.z , 30)
	lastSpawnCoordinate = COORDINATE:NewFromVec3(vec3_position)
	spawn.mySpawnType:SpawnFromCoordinate(lastSpawnCoordinate)
end

function PrintAirForCoalition(textContent, duration)
	if bool_airCommanderIsRed == true then
		trigger.action.outTextForCoalition(coalition.side.RED, textContent, duration)
	elseif bool_airCommanderIsEveryone == true then
		trigger.action.outText(textContent, duration)
	end
end

function PrintGroundForCoalition(textContent, duration)
	if int_settingsSamsGm == 1 then
		trigger.action.outTextForCoalition(coalition.side.RED, textContent, duration)
	elseif int_settingsSamsGm == 2 then
		trigger.action.outText(textContent, duration)
	end
end

function SetupEWRNetwork()
	local airDensity = trigger.misc.getUserFlag(Flag_A2A_GENERAL_SETUP)
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
			
			if airDensity == 4 then
				bool_airCommanderIsRed = true
			elseif airDensity == 5 then
				bool_airCommanderIsEveryone = true
			end
			
			if bool_airCommanderIsRed == true or bool_airCommanderIsEveryone == true then
			
				table_gm_drone[0] = { mySpawnType = SPAWN:New( "IRQ SQ Drone C101" ):InitGrouping(2), mySpawnName = "Drone C101"}
				table_gm_drone[1] = { mySpawnType = SPAWN:New( "IRQ SQ Drone IL78" ):InitGrouping(2), mySpawnName = "Drone IL-78"}
				table_gm_drone[2] = { mySpawnType = SPAWN:New( "IRQ SQ Drone SU30" ):InitGrouping(2), mySpawnName = "Drone SU-30"}
				
				table_gm_cap[0] = { mySpawnType = SPAWN:New( "IRQ SQ CAP SU30" ):InitGrouping(2), mySpawnName = "SU-30"}
				table_gm_cap[1] = { mySpawnType = SPAWN:New( "IRQ SQ CAP SU33" ):InitGrouping(2), mySpawnName = "SU-33 Flanker"}
				table_gm_cap[2] = { mySpawnType = SPAWN:New( "IRQ SQ CAP F14A" ):InitGrouping(2), mySpawnName = "F-14A Tomcat"}
				table_gm_cap[3] = { mySpawnType = SPAWN:New( "IRQ SQ CAP F4E" ):InitGrouping(2), mySpawnName = "F-4E Phantom"}
				table_gm_cap[4] = { mySpawnType = SPAWN:New( "IRQ SQ CAP F5E" ):InitGrouping(2), mySpawnName = "F-5 Tiger"}
				table_gm_cap[5] = { mySpawnType = SPAWN:New( "IRQ SQ CAP I16" ):InitGrouping(2), mySpawnName = "I-16"}
				table_gm_cap[6] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG15" ):InitGrouping(2), mySpawnName = "MiG-15"}
				table_gm_cap[7] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG19" ):InitGrouping(2), mySpawnName = "MiG-19"}
				table_gm_cap[8] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG21" ):InitGrouping(2), mySpawnName = "MiG-21 Fishbed"}
				table_gm_cap[9] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG29" ):InitGrouping(2), mySpawnName = "MiG-29 Fulcrum"}
				table_gm_cap[10] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG31" ):InitGrouping(2), mySpawnName = "MiG-31"}
				table_gm_cap[11] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG25" ):InitGrouping(2), mySpawnName = "MIG-25"}
				table_gm_cap[12] = { mySpawnType = SPAWN:New( "IRQ SQ CAP M2000" ):InitGrouping(2), mySpawnName = "Mirage 2000C"}
				table_gm_cap[14] = { mySpawnType = SPAWN:New( "IRQ SQ CAP MIG23" ):InitGrouping(2), mySpawnName = "MiG-23"}
				
				table_gm_cas[0] = { mySpawnType = SPAWN:New( "IRQ SQ CAS MI24" ):InitGrouping(2), mySpawnName = "Mi-24"}
				table_gm_cas[1] = { mySpawnType = SPAWN:New( "IRQ SQ CAS MI28" ):InitGrouping(2), mySpawnName = "Mi-28"}
				table_gm_cas[2] = { mySpawnType = SPAWN:New( "IRQ SQ CAS KA50" ):InitGrouping(2), mySpawnName = "Ka-50"}
				table_gm_cas[3] = { mySpawnType = SPAWN:New( "IRQ SQ CAS SU25T" ):InitGrouping(2), mySpawnName = "SU-25T"}
				table_gm_cas[4] = { mySpawnType = SPAWN:New( "IRQ SQ CAS L39" ):InitGrouping(2), mySpawnName = "L-39"}
								
				table_gm_antiship[0] = { mySpawnType = SPAWN:New( "IRQ SQ ANTISHIP TU142" ):InitGrouping(2), mySpawnName = "TU-142"}
				table_gm_antiship[1] = { mySpawnType = SPAWN:New( "IRQ SQ ANTISHIP SU24" ):InitGrouping(2), mySpawnName = "SU-24"}
				table_gm_antiship[2] = { mySpawnType = SPAWN:New( "IRQ SQ ANTISHIP MIG29" ):InitGrouping(2), mySpawnName = "MiG-29"}
				
				table_gm_ga[0] = { mySpawnType = SPAWN:New( "IRQ SQ A2G SU17" ):InitGrouping(2), mySpawnName = "SU-17"}
				table_gm_ga[1] = { mySpawnType = SPAWN:New( "IRQ SQ A2G SU34" ):InitGrouping(2), mySpawnName = "SU-34"}
				table_gm_ga[2] = { mySpawnType = SPAWN:New( "IRQ SQ A2G TU22" ):InitGrouping(2), mySpawnName = "TU-22"}
				table_gm_ga[3] = { mySpawnType = SPAWN:New( "IRQ SQ A2G MI8" ):InitGrouping(2), mySpawnName = "Mi-8"}
				
				table_gm_sead[0] = { mySpawnType = SPAWN:New( "IRQ SQ SEAD SU25T" ):InitGrouping(2), mySpawnName = "SU-25T"}
				table_gm_sead[1] = { mySpawnType = SPAWN:New( "IRQ SQ SEAD SU34" ):InitGrouping(2), mySpawnName = "SU-34"}
				table_gm_sead[2] = { mySpawnType = SPAWN:New( "IRQ SQ SEAD MIG27" ):InitGrouping(2), mySpawnName = "MiG-27"}
				
				-- airbases
				table_airbases[1] = { myType = AIRBASE.PersianGulf.Bandar_Abbas_Intl, myName = "Bandar Abbas"}
				table_airbases[2] = { myType = AIRBASE.PersianGulf.Bandar_Lengeh, myName = "Bandar Lengeh"}
				table_airbases[3] = { myType = AIRBASE.PersianGulf.Havadarya, myName = "Havadarya"}
				table_airbases[4] = { myType = AIRBASE.PersianGulf.Lar_Airbase, myName = "Lar"}
				table_airbases[5] = { myType = AIRBASE.PersianGulf.Qeshm_Island, myName = "Qeshm_Island"}
				table_airbases[6] = { myType = AIRBASE.PersianGulf.Shiraz_International_Airport, myName = "Shiraz"}
				
				if bool_airCommanderIsRed == true then
					CMD_GM_LIST_FLIGHTS = missionCommands.addSubMenuForCoalition(coalition.side.RED, "Print flight info")
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available drone flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_drone)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available cap flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cap)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available ground attack flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_ga)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available SEAD flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_sead)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available anti-ship flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_antiship)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available CAS flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cas)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print available air bases", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirports)
					missionCommands.addCommandForCoalition(coalition.side.RED, "Print use", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirManual)
					bool_airCommanderInitComplete = true
					
				elseif bool_airCommanderIsEveryone == true then
					CMD_GM_LIST_FLIGHTS = missionCommands.addSubMenu("Print flight info")
					missionCommands.addCommand("Print available drone flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_drone)
					missionCommands.addCommand("Print available cap flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cap)
					missionCommands.addCommand("Print available ground attack flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_ga)
					missionCommands.addCommand("Print available SEAD flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_sead)
					missionCommands.addCommand("Print available anti-ship flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_antiship)
					missionCommands.addCommand("Print available CAS flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cas)
					missionCommands.addCommand("Print available air bases", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirports)
					missionCommands.addCommand("Print Manual", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirManual)
					bool_airCommanderInitComplete = true
				end
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

function mysplit (inputstr, sep)
	if sep == nil then
			sep = "%s"
	end
	local t={}
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
			table.insert(t, str)
	end
	return t
end

function customEventHandler:onEvent(event)
	if (world.event.S_EVENT_MARK_ADDED   == event.id) then
		--trigger.action.outText("Mark added", 60)
	end
	
	if (world.event.S_EVENT_MARK_CHANGE == event.id) then
		
		--trigger.action.outText("Mark edit", 60)
		--			[1] ={
		--	   idx = idxMark(IDMark),
		--	   time = Time,
		--	   initiator = Unit,
		--	   coalition = -1 (or RED/BLUE),
		--	   groupID = -1 (or ID),
		--	   text = markText,
		--	   pos = vec3
		--	 }
		table_markPanels = world.getMarkPanels()
		
		for key, mark in pairs(table_markPanels) do
			if bool_airCommanderIsEveryone == true or (bool_airCommanderIsRed == true and mark.coalition == coalition.side.RED) or true then
			
				local splitString = {}
				local counter = 0
				for content in (string.gmatch(mark.text, "[^%s]+")) do
					splitString[counter] = content
					counter = counter + 1
				end
				
				bool_isAir = splitString[0] ~= nil and (splitString[0] == string_spawn_air_cmd_spawnair or splitString[0] == string_spawn_air_cmd_spawnairport)
				
				bool_isGround = splitString[0] ~= nil and (splitString[0] == string_spawn_ground_cmd)
				
				bool_isKillZone = splitString[0] ~= nil and (splitString[0] == string_gm_killzone)
				
				if bool_isAir == true then
					if splitString[1] ~= nil and splitString[2] ~= nil then
						local string_spawn_air_category = splitString[0]
						local string_plane_category = splitString[1]
						local int_plane_index = tonumber(splitString[2])
						
						-- find the right plane
						local foundSpawn = nil
						if string_plane_category == string_spawn_air_drone then
							PrintAirForCoalition("Drone category found", 10)
							if table_gm_drone[int_plane_index] ~= nil then
								foundSpawn = table_gm_drone[int_plane_index]
							end
						elseif string_plane_category == string_spawn_air_cap then
							PrintAirForCoalition("Cap category found", 10)
							if table_gm_cap[int_plane_index] ~= nil then
								foundSpawn = table_gm_cap[int_plane_index]
							end
						elseif string_plane_category == string_spawn_air_ga then
							PrintAirForCoalition("Ground attack category found", 10)
							if table_gm_ga[int_plane_index] ~= nil then
								foundSpawn = table_gm_ga[int_plane_index]
							end
						elseif string_plane_category == string_spawn_air_antiship then
							PrintAirForCoalition("Anti-ship category found", 10)
							if table_gm_antiship[int_plane_index] ~= nil then
								foundSpawn = table_gm_antiship[int_plane_index]
							end
						elseif string_plane_category == string_spawn_air_sead then
							PrintAirForCoalition("SEAD category found", 10)
							if table_gm_sead[int_plane_index] ~= nil then
								foundSpawn = table_gm_sead[int_plane_index]
							end
						elseif string_plane_category == string_spawn_air_cas then
							PrintAirForCoalition("CAS category found", 10)
							if table_gm_cas[int_plane_index] ~= nil then
								foundSpawn = table_gm_cas[int_plane_index]
							end
						end
							
						if foundSpawn ~= nil then
							PrintAirForCoalition("Spawn found: " .. foundSpawn.mySpawnName .. ". Requested category is " .. string_spawn_air_category, 10)
							-- we got a good plane, now we need to figure out how we spawn it ... air or airport
							if string_spawn_air_category == string_spawn_air_cmd_spawnair then
								PrintAirForCoalition("Trying air spawn", 10)
								HandleGameMasterSpawnPlaneInWorld(foundSpawn, mark.pos)
								trigger.action.removeMark(mark.idx)
								break
							elseif string_spawn_air_category == string_spawn_air_cmd_spawnairport then
								
								PrintAirForCoalition("Trying airport spawn", 10)
								
								-- we expect and index and a string
								if splitString[3] ~= nil and splitString[4]~= nil then
									local int_airportIndex = tonumber(splitString[3])
									
									if table_airbases[int_airportIndex] ~= nil then
										PrintAirForCoalition("Airport index found", 10)
										
										foundAirbase = table_airbases[int_airportIndex]
										
										if splitString[4] == string_spawn_airfield_startup_cold then
											HandleGameMasterSpawnPlaneAtBase(foundSpawn, foundAirbase, SPAWN.Takeoff.Cold)
											trigger.action.removeMark(mark.idx)
											break
										elseif splitString[4] == string_spawn_airfield_startup_hot then
											HandleGameMasterSpawnPlaneAtBase(foundSpawn, foundAirbase, SPAWN.Takeoff.Hot)
											trigger.action.removeMark(mark.idx)
											break
										elseif splitString[4] == string_spawn_airfield_startup_air then
											HandleGameMasterSpawnPlaneAtBase(foundSpawn, foundAirbase, SPAWN.Takeoff.Air)
											trigger.action.removeMark(mark.idx)
											break
										else
											PrintAirForCoalition("No valid takeoff type found", 10)
										end
									else
										PrintAirForCoalition("Airport index not found", 10)
									end
								end
							else
								PrintAirForCoalition("Spawn cancelled", 10)
							end
						elseif foundSpawn == nil then
							PrintAirForCoalition("No spawn found", 10)
						end
					end
				elseif bool_isGround == true then
					if splitString[1] ~= nil and splitString[2] ~= nil then
						local string_ground_category = splitString[1]
						local int_ground_index = tonumber(splitString[2])
						
						local foundSpawn = nil
						if string_ground_category == string_spawn_ground_cmd_aa then
							PrintGroundForCoalition("Anti-Air category found", 10)
							if table_gm_ground_aa[int_ground_index] ~= nil then
								foundSpawn = table_gm_ground_aa[int_ground_index]
							end
						elseif string_ground_category == string_spawn_ground_cmd_armor then
							PrintGroundForCoalition("Armor category found", 10)
							if table_gm_ground_armor[int_ground_index] ~= nil then
								foundSpawn = table_gm_ground_armor[int_ground_index]
							end
						elseif string_ground_category == string_spawn_ground_cmd_ship then
							PrintGroundForCoalition("ship category found", 10)
							if table_gm_ground_ship[int_ground_index] ~= nil then
								foundSpawn = table_gm_ground_ship[int_ground_index]
							end
						elseif string_ground_category == string_spawn_ground_cmd_convoy then
							PrintGroundForCoalition("convoy category found", 10)
							if table_gm_ground_convoy[int_ground_index] ~= nil then
								foundSpawn = table_gm_ground_convoy[int_ground_index]
							end
						end
							
						if foundSpawn ~= nil then
							PrintGroundForCoalition("Spawn found: " .. foundSpawn.mySpawnName .. ". Requested category is " .. string_ground_category, 10)
							HandleGameMasterSpawnGroundUnit(foundSpawn, mark.pos)
							trigger.action.removeMark(mark.idx)
						elseif foundSpawn == nil then
							PrintGroundForCoalition("No spawn found", 10)
						end
					elseif bool_isGround == false then
						PrintGroundForCoalition("No spawn found", 10)
					end
				elseif bool_isKillZone == true then
					if splitString[1] ~= nil then
						local killradius = tonumber(splitString[1])
						
						if killradius > 1 and killradius < 2000 then
							trigger.action.outText("Creating kill zone", 60)
							local coords = COORDINATE:NewFromVec3(mark.pos)
							
							local KillZone = ZONE_RADIUS:New( "KillZone", coords:GetVec2(), killradius )
							KillZone:Scan({ Object.Category.UNIT })
							
							for _, DCSUnit in pairs( KillZone:GetScannedUnits() ) do
								trigger.action.outText("Unit found", 60)
								local NearUnit = UNIT:Find( DCSUnit )
								NearUnit:Destroy( true )
							end
							
							
							trigger.action.removeMark(mark.idx)
						end
					end
				end
			end
		end
	end
	
	if (world.event.S_EVENT_MARK_REMOVED == event.id) then
		--trigger.action.outText("Mark removed", 60)
	end
end

world.addEventHandler(customEventHandler);

createMissionSettings()