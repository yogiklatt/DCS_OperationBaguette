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
	{ name = "IRQ SQ CAP MIG29 Guns", label = "RED MiG-29A Guns Only" },
	{ name = "IRQ SQ CAP SU33 Guns", label = "RED SU-33 Guns Only" },
	{ name = "IRQ SQ CAP F-16 Guns", label = "RED F-16C Guns Only" },
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
Flag_SCUD_TRANSMISSION_BEACON_1 = '96'	-- used in editor only!
Flag_SCUD_TRANSMISSION_BEACON_2 = '97'	-- used in editor only!

Flag_GM_SETUP = '555'

-- flags 80 to 90 are reserved for in-editor stuff!

-- A2A THREAT
string_A2A_density_settings = 'AI - Air Density:'
string_A2A_density_none = 'No Air to Air Threat'
string_A2A_density_low = 'AI - Low Density'
string_A2A_density_medium = 'AI - Medium Density'
string_A2A_density_high = 'AI - High Density'

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
string_GM_all = 'All Players'

-- AWACS
string_AWACS_settings = 'Change AWACS setting'
string_AWACS_NONE = 'No AWACS'
string_AWACS_BLUE = 'Blue AWACS'
string_AWACS_RED = 'Red AWACS'
string_AWACS_BLUE_AND_RED = 'Blue and Red AWACS'

string_TANKER_settings = 'Change Tanker setting'
string_Tankers_off = 'No tanker'
string_Tankers_west = 'West Navy Tankers (Texaco, Shell)'
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

int_settingsGM = 2 -- 0: off, 1 red only, 2 all

customEventHandler = {}

function HandleStart()
	trigger.action.setUserFlag('70', 1)
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

function SetupGameMaster()

	Set_EWR = SET_GROUP:New():FilterPrefixes( "IRQ EWR" ):FilterStart()

	CMD_GM_LIST_GROUND = missionCommands.addSubMenu("Ground Unit Control")
	missionCommands.addCommand("Print Anti-air units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_aa)
	missionCommands.addCommand("Print armor units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_armor)
	missionCommands.addCommand("Print sea units", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_ship)
	missionCommands.addCommand("Print convoys", CMD_GM_LIST_GROUND, HandleGameMasterPrintGround, table_gm_ground_convoy)
	missionCommands.addCommand("Print use", CMD_GM_LIST_GROUND, HandleGameMasterPrintGroundManual)
	missionCommands.addCommand("Set Weapons Free", CMD_GM_LIST_GROUND, HandleROESwap, 1)
	missionCommands.addCommand("Set Weapons Hold", CMD_GM_LIST_GROUND, HandleROESwap, 0)
	
	CMD_GM_LIST_FLIGHTS = missionCommands.addSubMenu("Air units")
	missionCommands.addCommand("Print available drone flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_drone)
	missionCommands.addCommand("Print available cap flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cap)
	missionCommands.addCommand("Print available ground attack flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_ga)
	missionCommands.addCommand("Print available SEAD flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_sead)
	missionCommands.addCommand("Print available anti-ship flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_antiship)
	missionCommands.addCommand("Print available CAS flights", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintFlights, table_gm_cas)
	missionCommands.addCommand("Print available air bases", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirports)
	missionCommands.addCommand("Print Manual", CMD_GM_LIST_FLIGHTS, HandleGameMasterPrintAirManual)
	
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
	
	if bool_mSamControl_allowedByGM == true then
		bool_weaponsFree = true
	end
		
	bool_updateState = 
	(bool_weaponsFree == false and bool_mSamControl_weaponsFree == true) or
	(bool_weaponsFree == true and bool_mSamControl_weaponsFree == false) or
	bool_mSamControl_firstCallDone == false
	
	bool_mSamControl_firstCallDone = true;
	
	if bool_updateState then
		bool_mSamControl_weaponsFree = bool_weaponsFree
	
		if bool_mSamControl_weaponsFree then
			PrintAirForCoalition("EWR ROE: Weapons Free", 60)
			Set_EWR:ForEachGroupAlive(
			function(Set_EWR)
				Set_EWR:OptionROEOpenFire()
			end 
		)
		else
			PrintAirForCoalition("EWR ROE: Weapons Hold", 60)
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
HandleStart()