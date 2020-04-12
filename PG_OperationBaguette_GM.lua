-- first we define all available planes, etc!
-- those are actual spawn tables!
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

list_game_drone = {
	{ name = "IRQ SQ Drone C101", label = "RED Drone C101" },
	{ name = "IRQ SQ Drone IL78", label = "RED Drone IL-78" },
	{ name = "IRQ SQ Drone SU30", label = "RED Drone SU-30" },
}

list_game_cap = {
	{ name = "IRQ SQ CAP SU30", label = "RED SU-30" },
	{ name = "IRQ SQ CAP SU33", label = "RED SU-33 Flanker" },
	{ name = "IRQ SQ CAP F14A", label = "RED F-14A Tomcat" },
	{ name = "IRQ SQ CAP F4E", label = "RED F-4E Phantom" },
	{ name = "IRQ SQ CAP F5E", label = "RED F-5 Tiger" },
	{ name = "IRQ SQ CAP I16", label = "RED I-16" },
	{ name = "IRQ SQ CAP MIG15", label = "RED MiG-15" },
	{ name = "IRQ SQ CAP MIG19", label = "RED MiG-19" },
	{ name = "IRQ SQ CAP MIG21", label = "RED MiG-21 Fishbed" },
	{ name = "IRQ SQ CAP MIG29", label = "RED MiG-29 Fulcrum" },
	{ name = "IRQ SQ CAP MIG31", label = "RED MiG-31" },
	{ name = "IRQ SQ CAP MIG25", label = "RED MIG-25" },
	{ name = "IRQ SQ CAP M2000", label = "RED Mirage 2000C" },
	{ name = "IRQ SQ CAP MIG23", label = "RED MiG-23" },
	{ name = "NATO SQ CAP F15", label = "BLUE F-15C" },
	{ name = "NATO SQ CAP F16", label = "BLUE F-16C" },
	{ name = "NATO SQ CAP M2000", label = "BLUE Mirage 2000C" },
	{ name = "NATO SQ CAP F14", label = "BLUE F-14B Tomcat" },
	{ name = "NATO SQ CAP FA18", label = "BLUE F/A-18C" },
}

list_game_cas = {
	{ name = "IRQ SQ CAS MI24", label = "RED Mi-24" },
	{ name = "IRQ SQ CAS MI28", label = "RED Mi-28" },
	{ name = "IRQ SQ CAS KA50", label = "RED Ka-50" },
	{ name = "IRQ SQ CAS SU25T", label = "RED SU-25T" },
	{ name = "IRQ SQ CAS L39", label = "RED L-39" },
	{ name = "NATO SQ CAS F15E", label = "BLUE F-15E Strike Eagle" },
	{ name = "NATO SQ CAS A-10C", label = "BLUE A-10C Warthog" },
}

list_game_antiship = {
	{ name = "IRQ SQ ANTISHIP TU142", label = "RED TU-142" },
	{ name = "IRQ SQ ANTISHIP SU24", label = "RED SU-24" },
	{ name = "IRQ SQ ANTISHIP MIG29", label = "RED MiG-29" },
}

list_game_ga = {
	{ name = "IRQ SQ A2G SU17", label = "RED SU-17" },
	{ name = "IRQ SQ A2G SU34", label = "RED SU-34" },
	{ name = "IRQ SQ A2G TU22", label = "RED TU-22" },
	{ name = "IRQ SQ A2G MI8", label = "RED Mi-8" },
}

list_game_sead = {
	{ name = "IRQ SQ SEAD SU25T", label = "RED SU-25T" },
	{ name = "IRQ SQ SEAD SU34", label = "RED SU-34" },
	{ name = "IRQ SQ SEAD MIG27", label = "RED MiG-27" },
	{ name = "NATO SQ SEAD TORNADO", label = "BLUE Tornado IDS" },
}

list_game_aa = {
	{ name = "IRQ EWR SA-2 GM", label = "RED SA-2 site" },
	{ name = "IRQ EWR SA-10 GM", label = "RED SA-10 site" },
	{ name = "IRQ EWR SA-15 GM", label = "RED SA-15" },
	{ name = "IRQ EWR SA-3 GM", label = "RED SA-3 site" },
	{ name = "IRQ EWR SA-6 GM", label = "RED SA-6 site" },
	{ name = "IRQ EWR Shilka GM", label = "RED Shilka" },
	{ name = "IRQ EWR AAA GM", label = "RED AAA Enclosed" },
	{ name = "IRQ EWR SITE ISLAND GM", label = "RED Early Warning Radar" },
	{ name = "IRQ EWR SA-8 GM", label = "RED SA-8 Osa" },
	{ name = "IRQ EWR SA-9 GM", label = "RED SA-9 Strela" },
	{ name = "IRQ EWR SA-13 GM", label = "RED SA-13 Strela" },
	{ name = "IRQ EWR SA-19 GM", label = "RED SA-19 Tunguska" },
}

list_game_ship = {
	{ name = "IRQ EWR Ship Molniya GM", label = "RED Molniya (AAA only)" },
	{ name = "IRQ EWR Ship Grisha GM", label = "RED Grisha" },
	{ name = "IRQ EWR Ship Moskva GM", label = "RED Moskva" },
	{ name = "IRQ EWR Ship Neutrashimy GM", label = "RED Neutrashimy" },
}

list_game_armor = {
	{ name = "IRQ EWR ARMOR GM", label = "RED Armored column" },
}

list_game_convoy = {
	{ name = "IRQ EWR CONVOY GM", label = "RED Convoy" },
}

-- air bases
table_airbases = {}

table_airbases[1] = { myType = AIRBASE.PersianGulf.Bandar_Abbas_Intl, myName = "Bandar Abbas"}
table_airbases[2] = { myType = AIRBASE.PersianGulf.Bandar_Lengeh, myName = "Bandar Lengeh"}
table_airbases[3] = { myType = AIRBASE.PersianGulf.Havadarya, myName = "Havadarya"}
table_airbases[4] = { myType = AIRBASE.PersianGulf.Lar_Airbase, myName = "Lar"}
table_airbases[5] = { myType = AIRBASE.PersianGulf.Qeshm_Island, myName = "Qeshm_Island"}
table_airbases[6] = { myType = AIRBASE.PersianGulf.Shiraz_International_Airport, myName = "Shiraz"}

-- SAM tables for easy
table_AI_SAM_Easy_Zones_West = {
	ZONE:New( "Zone_SAM_Easy_West_01" ),
	ZONE:New( "Zone_SAM_Easy_West_02" ),
	ZONE:New( "Zone_SAM_Easy_West_03" ),
	ZONE:New( "Zone_SAM_Easy_West_04" ),
	ZONE:New( "Zone_SAM_Easy_West_05" ), }

table_AI_SAM_Easy_Zones_Central = {
	ZONE:New( "Zone_SAM_Easy_Central_01" ),
	ZONE:New( "Zone_SAM_Easy_Central_02" ),
	ZONE:New( "Zone_SAM_Easy_Central_03" ),
	ZONE:New( "Zone_SAM_Easy_Central_04" ),
	ZONE:New( "Zone_SAM_Easy_Central_05" ), }

table_AI_SAM_Easy_Zones_East = {
	ZONE:New( "Zone_SAM_Easy_East_01" ),
	ZONE:New( "Zone_SAM_Easy_East_02" ) }
	
table_AI_SAM_Easy_Units = 
{
	"IRQ EWR SA-2 AI", "IRQ EWR SA-3 AI","IRQ EWR HAWK AI", "IRQ EWR RAPIER AI"
}

-- SAM tables for med
table_AI_SAM_Medium_West_Zones = {
	ZONE:New( "Zone_SAM_Medium_West_01" ),
	ZONE:New( "Zone_SAM_Medium_West_02" ),
	ZONE:New( "Zone_SAM_Medium_West_03" ),
	ZONE:New( "Zone_SAM_Medium_West_04" ),}

table_AI_SAM_Medium_East_Zones = {
	ZONE:New( "Zone_SAM_Medium_East_01" ),
	ZONE:New( "Zone_SAM_Medium_East_02" ),
	ZONE:New( "Zone_SAM_Medium_East_03" ),
	ZONE:New( "Zone_SAM_Medium_East_04" ),}

table_AI_SAM_Medium_Units = 
{
	"IRQ EWR SA-10 AI", "IRQ EWR SA-6 AI"
}

-- SAM tables for hard

table_AI_Zones_SAM_Hard = {
	ZONE:New( "Zone_SAM_Hard_01" ),
	ZONE:New( "Zone_SAM_Hard_02" ),
	ZONE:New( "Zone_SAM_Hard_03" ),
	ZONE:New( "Zone_SAM_Hard_04" ),
	ZONE:New( "Zone_SAM_Hard_05" ),
	ZONE:New( "Zone_SAM_Hard_06" ),
	ZONE:New( "Zone_SAM_Hard_07" ),
	ZONE:New( "Zone_SAM_Hard_08" ),
	ZONE:New( "Zone_SAM_Hard_09" ),
	ZONE:New( "Zone_SAM_Hard_10" ),
	ZONE:New( "Zone_SAM_Hard_11" ),
	ZONE:New( "Zone_SAM_Hard_12" ),
	ZONE:New( "Zone_SAM_Hard_13" ),
	ZONE:New( "Zone_SAM_Hard_14" ),
	ZONE:New( "Zone_SAM_Hard_15" ),
	ZONE:New( "Zone_SAM_Hard_16" ),
	ZONE:New( "Zone_SAM_Hard_17" ),
	ZONE:New( "Zone_SAM_Hard_18" ),}

table_AI_SAM_Hard_Units = 
{
	"IRQ EWR SA-15 AI", "IRQ EWR SA-8 AI"
}

table_AI_ZONES_AAA = {
	ZONE:New( "Zone_AAA_01" ),
	ZONE:New( "Zone_AAA_02" ),
	ZONE:New( "Zone_AAA_03" ),
	ZONE:New( "Zone_AAA_04" ),
	ZONE:New( "Zone_AAA_05" ),
	ZONE:New( "Zone_AAA_06" ),
	ZONE:New( "Zone_AAA_07" ),
	ZONE:New( "Zone_AAA_08" ),
	ZONE:New( "Zone_AAA_09" ),
	ZONE:New( "Zone_AAA_10" ),
	ZONE:New( "Zone_AAA_11" ),
	ZONE:New( "Zone_AAA_12" ),
	ZONE:New( "Zone_AAA_13" ),
	ZONE:New( "Zone_AAA_14" ),
	ZONE:New( "Zone_AAA_15" ),
	ZONE:New( "Zone_AAA_16" ),
	ZONE:New( "Zone_AAA_17" ),
	ZONE:New( "Zone_AAA_18" ),
	ZONE:New( "Zone_AAA_19" ),
	ZONE:New( "Zone_AAA_20" ),
	ZONE:New( "Zone_AAA_21" ),
	ZONE:New( "Zone_AAA_22" ),
	ZONE:New( "Zone_AAA_23" ),
	ZONE:New( "Zone_AAA_24" ),
	ZONE:New( "Zone_AAA_25" ),
	ZONE:New( "Zone_AAA_26" ),
	ZONE:New( "Zone_AAA_27" ),
	ZONE:New( "Zone_AAA_28" ),
	ZONE:New( "Zone_AAA_29" ),
	ZONE:New( "Zone_AAA_30" ),}

table_AI_AAA_Units = 
{
	"IRQ EWR ZU23 AI", "IRQ EWR Shilka AI", "IRQ EWR AAA Ural AI"
}

table_AI_IR_SAM_Units = 
{
	"IRQ EWR SA-19 GM", "IRQ EWR SA-9 AI", "IRQ EWR SA-13 AI"
}

-- AI SEA side
table_AI_ZONES_ships = {
	ZONE:New( "Zone_Ships_01" ),
	ZONE:New( "Zone_Ships_02" ),
	ZONE:New( "Zone_Ships_03" ),
	ZONE:New( "Zone_Ships_04" ),}

table_AI_Ship_Units = 
{
	"IRQ EWR Ship Molniya AI", "IRQ EWR Ship Neutrashimy AI"
}

string_startMission = 'Start mission'

--bool_allowDebug = true // set in editor

Flag_A2A_GENERAL_SETUP = '60'
Flag_A2A_DIFFICULTY = '67'
Flag_SAM = '61'
Flag_AWACS = '62'
Flag_TANKER = '63'
Flag_SAM_MISSILES = '66'
Flag_DEBUG = '69'
Flag_MISSION_START = '70'
Flag_AWACS_STARTUP = '40'
Flag_AWACS_RED_STARTUP = '41'
Flag_BLUE_IN_RED_BORDER = '95'

Flag_GM_SETUP = '555'

-- flags 80 to 90 are reserved for in-editor stuff!

-- A2A THREAT
string_A2A_density_settings = 'AI - Air Density:'
string_A2A_density_none = 'No Air to Air Threat'
string_A2A_density_low = 'AI - Low Density'
string_A2A_density_medium = 'AI - Medium Density'
string_A2A_density_high = 'AI - High Density#'

string_A2A_difficulty_settings = 'AI - Air Threat Level'
string_A2A_difficulty_easy = 'Easy'
string_A2A_difficulty_fair = 'Fair'
string_A2A_difficulty_hard = 'Hard'

-- SAAAAAAAAAAAAAAAAms
string_SAM_setup = 'AI - Ground Setup'

string_SAM_settings = 'AI - SAM threat setting'
string_SAM_threat_none = 'No Threat'
string_SAM_threat_low = 'Low Threat(SA-2, SA-15)'
string_SAM_threat_medium = 'Medium Threat (SA-2, SA-10, SA-15, AAA, Ships)'
string_SAM_threat_high = 'High Threat (SA-2, SA-10, SA-15, AAA, Ships)'

string_SAM_engage_missiles_settings = 'SAM Missile settings'
string_SAM_engage_missiles_on = 'SAMs engage missiles.'
string_SAM_engage_missiles_off = 'SAMs will not engage missiles.'

string_GM = 'Game Master Setup'
string_GM_off = 'No Game master'
string_GM_red = 'Red Game master only'
string_GM_all = 'All Player'

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

string_print_settings = "Print Settings"

bool_blueUnitsDetectedState = false

bool_mSamControl_allowedByGM = false
bool_mSamControl_borderBreached = false;
bool_mSamControl_weaponsFree = false;
bool_mSamControl_firstCallDone = false;

-- Create difficulty settings
table_settingsStore = {}
table_AI_SAMs_hard = {}
table_AI_AAAs = {}
table_AI_SAMs_IR = {}
table_AI_ships = {}
table_airbases = {}
table_airbaseCmds = {}
--bool_firstRunDone = false

int_settingsGM = 0 -- 0: off, 1 red only, 2 all

customEventHandler = {}

function PrintCurrentSettings()
	local currentSettings = "Current settings:\n"
	
		local airDensity = trigger.misc.getUserFlag(Flag_A2A_GENERAL_SETUP)
	
		currentSettings = currentSettings .. "--------------------- \n"
		currentSettings = currentSettings .. "1. Air to air: \n"
		currentSettings = currentSettings .. '          AI Setup: ' .. table_settingsStore[Flag_A2A_GENERAL_SETUP] .. "\n"
		currentSettings = currentSettings .. '          AI Types: ' .. table_settingsStore[Flag_A2A_DIFFICULTY] .. "\n"
	
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "2. Ground threat: \n"
		currentSettings = currentSettings .. '          AI Setup: ' .. table_settingsStore[Flag_SAM] .. "\n"
		currentSettings = currentSettings .. '          AI Missile behaviour: ' .. table_settingsStore[Flag_SAM_MISSILES] .. "\n"
		currentSettings = currentSettings .. "\n"

		currentSettings = currentSettings .. '3. Game Master: ' .. table_settingsStore[Flag_GM_SETUP] .. "\n"
	
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "4. AWACS setup: " .. table_settingsStore[Flag_AWACS] .. "\n"
		currentSettings = currentSettings .. "\n"
	
		currentSettings = currentSettings .. "5. Tankers: " .. table_settingsStore[Flag_TANKER] .. " \n"
		currentSettings = currentSettings .. "\n"
	
		trigger.action.outText(currentSettings, 30)
		trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	
	return nil
end

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
	end
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
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
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
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
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	return nil
end

function handleSamMissileSetting(flagValue)
	trigger.action.setUserFlag(Flag_SAM_MISSILES, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_SAM_MISSILES] = string_SAM_engage_missiles_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_SAM_MISSILES] = string_SAM_engage_missiles_on
	end
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	return nil
end

function handleGmSetting(value)
	int_settingsGM  = value
	
	if int_settingsGM == 0 then
		table_settingsStore[Flag_GM_SETUP] = string_GM
	elseif int_settingsGM == 1 then
		table_settingsStore[Flag_GM_SETUP] = string_GM_red
	elseif int_settingsGM == 2 then
		table_settingsStore[Flag_GM_SETUP] = string_GM_all
	end
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
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
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
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
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
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
	
	trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
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

	missionCommands.removeItem(GM_off)
	missionCommands.removeItem(GM_red)
	missionCommands.removeItem(GM_all)
	missionCommands.removeItem(GM_setting)

	missionCommands.removeItem(SAM_none)
	missionCommands.removeItem(SAM_low)
	missionCommands.removeItem(SAM_medium)
	missionCommands.removeItem(SAM_high)
	missionCommands.removeItem(SAM_Missile_off)
	missionCommands.removeItem(SAM_Missile_on)

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
	missionCommands.removeItem(PRINT_Settings)
	return nil
end

function HandleStart()
	removeSettings()
	trigger.action.setUserFlag('70', 1)
end

function HandlePrintSettings()
	PrintCurrentSettings()
end

function CreateSpawnableUnitsFromList(sourceList, targetList)
	for unitIndex = 1, #sourceList do
		targetList[unitIndex] = { mySpawnType = SPAWN:New( sourceList[unitIndex].name):InitGrouping(2), mySpawnName = sourceList[unitIndex].label }
	end
	return nil
end

function PrepareSpawnableUnits()
	-- air
	CreateSpawnableUnitsFromList(list_game_drone, table_gm_drone)
	CreateSpawnableUnitsFromList(list_game_cap, table_gm_cap)
	CreateSpawnableUnitsFromList(list_game_cas, table_gm_cas)
	CreateSpawnableUnitsFromList(list_game_antiship, table_gm_antiship)
	CreateSpawnableUnitsFromList(list_game_ga, table_gm_ga)
	CreateSpawnableUnitsFromList(list_game_sead, table_gm_sead)
	
	-- ground
	CreateSpawnableUnitsFromList(list_game_aa, table_gm_ground_aa)
	CreateSpawnableUnitsFromList(list_game_ship, table_gm_ground_ship)
	CreateSpawnableUnitsFromList(list_game_armor, table_gm_ground_armor)
	CreateSpawnableUnitsFromList(list_game_convoy, table_gm_ground_convoy)
	
	return nil
end

function CreateMissionOptions()
	-- reasonable defaults
	handleA2ADensitySetting(0)
	handleA2ADifficultySetting(0)
	handleSAMSetting(0)
	handleSamMissileSetting(0)
	handleAwacsSetting(0)
	handleTankerSetting(0)
	handleGmSetting(1) -- red commander spawn abilty on by default
	HandlePrintSettings()

	CMD_missionStart = missionCommands.addCommand(string_startMission, nil, HandleStart)

	GM_setting = missionCommands.addSubMenu(string_GM, SAM_setup_setting)
	GM_off = missionCommands.addCommand(string_GM_off, GM_setting, handleGmSetting, 0)
	GM_red = missionCommands.addCommand(string_GM_red, GM_setting, handleGmSetting, 1)
	GM_all = missionCommands.addCommand(string_GM_all, GM_setting, handleGmSetting, 2)

	A2A_density_setting = missionCommands.addSubMenu(string_A2A_density_settings)
	A2A_density_none = missionCommands.addCommand(string_A2A_density_none, A2A_density_setting, handleA2ADensitySetting, 0)
	A2A_density_low = missionCommands.addCommand(string_A2A_density_low, A2A_density_setting, handleA2ADensitySetting, 1)
	A2A_density_medium = missionCommands.addCommand(string_A2A_density_medium, A2A_density_setting, handleA2ADensitySetting, 2)
	A2A_density_high = missionCommands.addCommand(string_A2A_density_high, A2A_density_setting, handleA2ADensitySetting, 3)
	
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
	
	PRINT_Settings = missionCommands.addCommand(string_print_settings, nil, HandlePrintSettings)

	--bool_firstRunDone = true
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
	
	local counter_sams_hard = 0
	local counter_aaa = 0
	local counter_sams_ir  = 0
	local counter_ships = 0
	
	if samThreat > 0 then
		trigger.action.outText("Setting up SAMs 1. Threat setting is " .. samThreat, 10)
	
		if samThreat > 0 then
			counter_sams_hard = 2
			counter_aaa = 5
			
			AI_SAM_Easy_West = SPAWN:New( "IRQ EWR AI EASY SPAWN 1" ):InitRandomizeTemplate(table_AI_SAM_Easy_Units ):InitRandomizeZones(table_AI_SAM_Easy_Zones_West):Spawn()
			
			AI_SAM_Easy_Central = SPAWN:New( "IRQ EWR AI EASY SPAWN 2" ):InitRandomizeTemplate(table_AI_SAM_Easy_Units ):InitRandomizeZones(table_AI_SAM_Easy_Zones_Central):Spawn()
			
			AI_SAM_Easy_East = SPAWN:New( "IRQ EWR AI EASY SPAWN 3" ):InitRandomizeTemplate(table_AI_SAM_Easy_Units ):InitRandomizeZones(table_AI_SAM_Easy_Zones_East):Spawn()
		end
	
		if samThreat > 1 then
			-- spawn 2 SA-10s
		
			counter_sams_hard = 6
			counter_aaa = 10
			counter_sams_ir = 4
		
			AI_SAM_Medium_West = SPAWN:New( "IRQ EWR AI MEDIUM SPAWN 1" ):InitRandomizeTemplate(table_AI_SAM_Medium_Units ):InitRandomizeZones(table_AI_SAM_Medium_West_Zones):Spawn()
			
			AI_SAM_Medium_East = SPAWN:New( "IRQ EWR AI MEDIUM SPAWN 2" ):InitRandomizeTemplate(table_AI_SAM_Medium_Units ):InitRandomizeZones(table_AI_SAM_Medium_East_Zones):Spawn()
		end
		
		if samThreat > 2 then
			counter_sams_hard = 12
			counter_aaa = 20
			counter_sams_ir = 8
			counter_ships = 1
		end
	
		-- "Hard" SAMs (not hard ones, but a lot of medium range ones!
		AI_SAM_HARD = SPAWN:New( "IRQ EWR AI HARD SPAWN" ):InitRandomizeTemplate(table_AI_SAM_Hard_Units ):InitRandomizeZones(table_AI_Zones_SAM_Hard)
	
		for i=1,counter_sams_hard,1 do
			if bool_allowDebug == true then
				trigger.action.outText("Spawn hard SAM units " .. i, 10)
			end
			table_AI_SAMs_hard[i] = AI_SAM_HARD:Spawn()
		end
		
		-- AAA
		AI_AAA = SPAWN:New( "IRQ EWR AI AAA" ):InitRandomizeTemplate(table_AI_AAA_Units ):InitRandomizeZones(table_AI_ZONES_AAA)
		
		for i=1,counter_aaa,1 do
			if bool_allowDebug == true then
				trigger.action.outText("Spawn AAA units " .. i, 10)
			end
			table_AI_AAAs[i] = AI_AAA:Spawn()
		end
		
		-- IR SAM
		AI_IR_SAM = SPAWN:New( "IRQ EWR AI IR SAM" ):InitRandomizeTemplate(table_AI_IR_SAM_Units ):InitRandomizeZones(table_AI_ZONES_AAA)
		
		for i=1,counter_sams_ir,1 do
			if bool_allowDebug == true then
				trigger.action.outText("Spawn IR SAM units " .. i, 10)
			end
			table_AI_SAMs_IR[i] = AI_IR_SAM:Spawn()
		end
		
		-- SHIPS
		AI_Ships = SPAWN:New( "IRQ EWR Ship Unit" ):InitRandomizeTemplate(table_AI_Ship_Units ):InitRandomizeZones(table_AI_ZONES_ships)
		
		for i=1,counter_ships,1 do
			if bool_allowDebug == true then
				trigger.action.outText("Spawn Ship units " .. i, 10)
			end
			table_AI_ships[i] = AI_Ships:Spawn()
		end
		trigger.action.outText("SAM setup completed", 10)
	end
	
	if int_settingsGM > 0 then
		if int_settingsGM == 1 then
			CMD_GM_LIST_GROUND = missionCommands.addSubMenuForCoalition(coalition.side.RED, "Ground Unit Control")
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print Anti-air units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_aa)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print armor units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_armor)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print sea units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_ship)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print convoys", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_convoy)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Print use", CMD_GM_LIST_GROUND, HandleGameMasterPrintGroundManual)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Set Weapons Free", CMD_GM_LIST_GROUND, HandleROESwap, 1)
			missionCommands.addCommandForCoalition(coalition.side.RED, "Set Weapons Hold", CMD_GM_LIST_GROUND, HandleROESwap, 0)
		elseif int_settingsGM == 2 then
			CMD_GM_LIST_GROUND = missionCommands.addSubMenu("Air Units Contro")
			missionCommands.addCommand("Print Anti-air units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_aa)
			missionCommands.addCommand("Print armor units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_armor)
			missionCommands.addCommand("Print sea units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_ship)
			missionCommands.addCommand("Print convoys", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_convoy)
			missionCommands.addCommand("Print use", CMD_GM_LIST_GROUND, HandleGameMasterPrintGroundManual)
			missionCommands.addCommand("Set Weapons Free", CMD_GM_LIST_GROUND, HandleROESwap, 1)
			missionCommands.addCommand("Set Weapons Hold", CMD_GM_LIST_GROUND, HandleROESwap, 0)
		end
	end
	
	return nil
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
	--PrintAirForCoalition("Trying to spawn " .. spawn.mySpawnName .. " at selected pos " .. vec3_position.x .. " " .. vec3_position.y .. " " .. vec3_position.z , 30)
	local vec3_corrected = vec3_position
	vec3_corrected.y = vec3_corrected.y + 500 -- add a couple of meters above ground
	lastSpawnCoordinate = COORDINATE:NewFromVec3(vec3_corrected)
	spawn.mySpawnType:SpawnFromCoordinate(lastSpawnCoordinate)
end

function HandleGameMasterSpawnPlaneAtBase(spawn, airbase, startup)
	--PrintAirForCoalition("Trying to spawn " .. spawn.mySpawnName .. " at selected airbase " .. airbase.myName , 30)
	spawn.mySpawnType:SpawnAtAirbase( AIRBASE:FindByName( airbase.myType ), startup )
end

function HandleGameMasterSpawnGroundUnit(spawn, vec3_position)
	--PrintGroundForCoalition("Trying to spawn " ..spawn.mySpawnName .. " at selected pos " .. vec3_position.x .. " " .. vec3_position.y .. " " .. vec3_position.z , 30)
	lastSpawnCoordinate = COORDINATE:NewFromVec3(vec3_position)
	spawn.mySpawnType:SpawnFromCoordinate(lastSpawnCoordinate)
end

function PrintAirForCoalition(textContent, duration)
	if int_settingsGM == 1 then
		trigger.action.outTextForCoalition(coalition.side.RED, textContent, duration)
	elseif int_settingsGM == 2 then
		trigger.action.outText(textContent, duration)
	end
end

function PrintGroundForCoalition(textContent, duration)
	if int_settingsGM == 1 then
		trigger.action.outTextForCoalition(coalition.side.RED, textContent, duration)
	elseif int_settingsGM == 2 then
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
		
		if airDensity > 0 then
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
				larPlanesCount = 4
			elseif airDensity == 3 then
				larPlanesCount = 8
			end
			
			if airDifficulty == 0 then
				enemyPlanesTypes = { "IRQ SQ Easy L39", "IRQ SQ Easy MIG15" }
			elseif airDifficulty == 1 then
				enemyPlanesTypes = { "IRQ SQ Fair F5", "IRQ SQ Fair F4", "IRQ SQ Fair MIG23", "IRQ SQ Fair MIG21", "IRQ SQ Fair L39" }
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
			
			local queshmPlanesCount = 2
			
			if airDensity == 1 then
				queshmPlanesCount = 2
			elseif airDensity == 2 then
				queshmPlanesCount = 4
			elseif airDensity == 3 then
				queshmPlanesCount = 6
			end
			
			A2ADispatcher:SetSquadron("QueshmSq", AIRBASE.PersianGulf.Qeshm_Island, enemyPlanesTypes, queshmPlanesCount )
			A2ADispatcher:SetIntercept( 120 )
			A2ADispatcher:SetSquadronOverhead( "QueshmSq", 0.75 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "QueshmSq" )
			A2ADispatcher:SetSquadronGci( "QueshmSq", 300, 600 )
			A2ADispatcher:SetSquadronGrouping( "QueshmSq", 2 )

			local lengehPlanesCount = 2
			if airDensity == 1 then
				lengehPlanesCount = 2
			elseif airDensity == 2 then
				lengehPlanesCount = 3
			elseif airDensity == 3 then
				lengehPlanesCount = 4
			end

			A2ADispatcher:SetSquadron("BandarLengehSq", AIRBASE.PersianGulf.Bandar_Lengeh, enemyPlanesTypes, lengehPlanesCount )
			A2ADispatcher:SetIntercept( 120 )
			A2ADispatcher:SetSquadronOverhead( "BandarLengehSq", 0.75 )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "BandarLengehSq" )
			A2ADispatcher:SetSquadronGci( "BandarLengehSq", 300, 600 )
			A2ADispatcher:SetSquadronGrouping( "BandarLengehSq", 2 )

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
								
								trigger.action.outText("RED Border has been breached!!", 60)
								bool_mSamControl_borderBreached = true
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
	
	-- add helpers for game master
	if int_settingsGM == 1 then
		CMD_GM_LIST_FLIGHTS = missionCommands.addSubMenuForCoalition(coalition.side.RED, "Print flight info")
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available drone flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_drone)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available cap flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cap)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available ground attack flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_ga)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available SEAD flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_sead)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available anti-ship flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_antiship)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available CAS flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cas)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print available air bases", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirports)
		missionCommands.addCommandForCoalition(coalition.side.RED, "Print use", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirManual)
		
	elseif int_settingsGM == 2 then
		CMD_GM_LIST_FLIGHTS = missionCommands.addSubMenu("Print flight info")
		missionCommands.addCommand("Print available drone flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_drone)
		missionCommands.addCommand("Print available cap flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cap)
		missionCommands.addCommand("Print available ground attack flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_ga)
		missionCommands.addCommand("Print available SEAD flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_sead)
		missionCommands.addCommand("Print available anti-ship flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_antiship)
		missionCommands.addCommand("Print available CAS flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cas)
		missionCommands.addCommand("Print available air bases", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirports)
		missionCommands.addCommand("Print Manual", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirManual)
	end
	
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

function HandleROESwap(val)
	if val == 1 then
		bool_mSamControl_allowedByGM = true
	else
		bool_mSamControl_allowedByGM = false
	end
	
	UpdateSamState()
end

-- sets the SAM activation state. If false they will not fire.
--function SetSamActiveState(bSamsActive)
function UpdateSamState()
	local bDebugEnabled = IsDebuggingOn()
	local bool_weaponsFree = false
	
	
	-- allow only fi game master says yay (if we do not have one) the border has been breached
	if int_settingsGM > 0 then
		if bool_mSamControl_allowedByGM == true then
			bool_weaponsFree = true
		end
	else
		if bool_mSamControl_borderBreached then
			bool_weaponsFree = true
		end
	end
		
	bool_updateState = 
	(bool_weaponsFree == false and bool_mSamControl_weaponsFree == true) or
	(bool_weaponsFree == true and bool_mSamControl_weaponsFree == false) or
	bool_mSamControl_firstCallDone == false
	
	bool_mSamControl_firstCallDone = true;
	
	if bool_updateState then
		bool_mSamControl_weaponsFree = bool_weaponsFree
	
		if bool_mSamControl_weaponsFree then			
			PrintAirForCoalition("EWR ROE: new value is true", 60)
			Set_EWR:ForEachGroupAlive(
			function(Set_EWR)
				Set_EWR:OptionROEOpenFire()
			end 
		)
		else
			PrintAirForCoalition("EWR ROE: new value is false", 60)
			Set_EWR:ForEachGroupAlive(
			function(Set_EWR)
				Set_EWR:OptionROEHoldFire()
			end
			)
		end
		
		
		return nil
	end
	
	if bDebugEnabled == true then
		trigger.action.outText("EWR ROE: No change!", 60)
	end
	
	return nil
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
			if int_settingsGM == 2 or (int_settingsGM == 1 and mark.coalition == coalition.side.RED) or true then
			
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
							--PrintAirForCoalition("Spawn found: " .. foundSpawn.mySpawnName .. ". Requested category is " .. string_spawn_air_category, 10)
							-- we got a good plane, now we need to figure out how we spawn it ... air or airport
							if string_spawn_air_category == string_spawn_air_cmd_spawnair then
								--PrintAirForCoalition("Trying air spawn", 10)
								HandleGameMasterSpawnPlaneInWorld(foundSpawn, mark.pos)
								trigger.action.removeMark(mark.idx)
								break
							elseif string_spawn_air_category == string_spawn_air_cmd_spawnairport then
								
								--PrintAirForCoalition("Trying airport spawn", 10)
								
								-- we expect and index and a string
								if splitString[3] ~= nil and splitString[4]~= nil then
									local int_airportIndex = tonumber(splitString[3])
									
									if table_airbases[int_airportIndex] ~= nil then
										--PrintAirForCoalition("Airport index found", 10)
										
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
											--PrintAirForCoalition("No valid takeoff type found", 10)
										end
									else
										--PrintAirForCoalition("Airport index not found", 10)
									end
								end
							else
								--PrintAirForCoalition("Spawn cancelled", 10)
							end
						elseif foundSpawn == nil then
							--PrintAirForCoalition("No spawn found", 10)
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
							--PrintGroundForCoalition("Spawn found: " .. foundSpawn.mySpawnName .. ". Requested category is " .. string_ground_category, 10)
							HandleGameMasterSpawnGroundUnit(foundSpawn, mark.pos)
							trigger.action.removeMark(mark.idx)
						elseif foundSpawn == nil then
							--PrintGroundForCoalition("No spawn found", 10)
						end
					elseif bool_isGround == false then
						--PrintGroundForCoalition("No spawn found", 10)
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

PrepareSpawnableUnits()
CreateMissionOptions()