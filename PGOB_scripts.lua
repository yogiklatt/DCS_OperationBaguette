string_startMission = 'Start mission'

--bool_allowDebug = true // set in editor

Flag_A2A = '60'
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

-- flags 80 to 89 are reserved for in-editor stuff!

Flag_PERKS_Activate_Cruise_Missile_Strike = '20'
Flag_PERKS_Activate_Satellite_Jammer = '21'
Flag_PERKS_Activate_Satellite_Jammer_Active = '22'

string_A2A_threat_none = 'Air Threat: none'
string_A2A_threat_low = 'Low A2A Threat (L39)'
string_A2A_threat_medium = 'Medium A2A Threat (MiG-21, F-4, F-5)'
string_A2A_threat_high = 'High A2A Threat (MiG-21, MiG-29, F-4, F-5)'

string_SAM_threat_none = 'No SAM Threat'
string_SAM_threat_low = 'Low SAM Threat (SA-2, SA-15)'
string_SAM_threat_medium = 'Medium SAM Threat (SA-2, SA-10, SA-15, AAA, Ships)'
string_SAM_threat_high = 'High SAM Threat (SA-2, SA-10, SA-15, AAA, Ships)'

string_SAM_engage_missiles_on = 'SAMs engage missiles.'
string_SAM_engage_missiles_off = 'SAMs will not engage missiles.'

string_AWACS_off = 'AWACS disabled'
string_AWACS_on = 'AWACS available'

string_Tankers_off = 'No tanker'
string_Tankers_1 = '1 Tanker (Shell 7-1)'
string_Tankers_2 = '2 Tankers (Shell 7-1, Texaco 8-1)'

string_Primary_Yacht = 'Yacht (unarmed)'
string_Primary_Molniya = 'Molniya'

string_Perks_none = 'None'
string_Perks_Cruise_Missiles = 'Cruise missile strike available'
string_Perks_Jamming_Attack = 'Satellite Jamming Attack'

string_Debug_off = 'Debug info disabled'
string_Debug_on = 'Debug info enabled (Debug planes will be spawned)'
string_Debug_spawn_hog = 'Spawn some Hogs!'
string_Debug_spawn_eagle = 'Spawn some Eagles!'

string_A2A_settings = 'Change A2A threat setting'
string_SAM_settings = 'Change SAM threat setting'
string_SAM_engage_missiles_settings = 'Change SAM engage missiles settings'
string_AWACS_settings = 'Change AWACS setting'
string_TANKER_settings = 'Change Tanker setting'
string_PRIMARY_settings = 'Change Primary Target'
string_PERK_settings = 'Change Perk settings'
string_Debug_settings = 'Change Debug setting'
string_settings_setToMax = 'Set max difficulty'

bool_blueUnitsDetectedState = false

-- if any of these two are true, SAMs wont fire
bool_mSamBorderIntact = true
bool_mSamSuppressedByJammers = false
bool_mSamsActive = true

-- There was some DCS trigger hookup when I tried merge all those handle function ... so I was too lazy to figure what was going wrong.
-- flagValue was a bigger object with both the flag and its value ... but somehow it then did not properly call setUserFlag ... dont know.
function handleA2ASetting(flagValue)
	trigger.action.setUserFlag(Flag_A2A, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_A2A] = string_A2A_threat_none
	elseif flagValue == 1 then
		table_settingsStore[Flag_A2A] = string_A2A_threat_low
	elseif flagValue == 2 then
		table_settingsStore[Flag_A2A] = string_A2A_threat_medium
	elseif flagValue == 3 then
		table_settingsStore[Flag_A2A] = string_A2A_threat_high
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

function handleTankerSetting(flagValue)
	trigger.action.setUserFlag(Flag_TANKER, flagValue)
	
	if flagValue == 0 then
		table_settingsStore[Flag_TANKER] = string_Tankers_off
	elseif flagValue == 1 then
		table_settingsStore[Flag_TANKER] = string_Tankers_1
	elseif flagValue == 2 then
		table_settingsStore[Flag_TANKER] = string_Tankers_2
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

function HandleDebugEagles()
	local newSacrifice = Debug_eagle_spawn:Spawn()
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
	
	missionCommands.removeItem(A2A_none)
	missionCommands.removeItem(A2A_low)
	missionCommands.removeItem(A2A_medium)
	missionCommands.removeItem(A2A_high)
	missionCommands.removeItem(A2A_setting)
	
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
	
	missionCommands.removeItem(TANKER_off)
	missionCommands.removeItem(TANKER_1)
	missionCommands.removeItem(TANKER_2)
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
	
	missionCommands.removeItem(CMD_settingsMax)
	return nil
end

function HandleStart()
	removeSettings()
	trigger.action.setUserFlag('70', 1)
	
	-- add ability to spawn some poor plane to be shot down
	if IsDebuggingOn() then
		
		Debug_hog_spawn = SPAWN:New( "Debug_Hogs" ):InitLimit(12,0)
		Debug_eagle_spawn = SPAWN:New( "Debug_Eagles" ):InitLimit(12,0)
		
		CMD_DebugSpawnCommandHogs =  missionCommands.addCommand(string_Debug_spawn_hog, nil, HandleDebugHogs)
		CMD_DebugSpawnCommandEagles = missionCommands.addCommand(string_Debug_spawn_eagle, nil, HandleDebugEagles)
	end
end

function HandleMaxDifficulty()
	trigger.action.outText("Settings changed to max difficulty", 10)
	bool_firstRunDone = false
	handleA2ASetting(3)
	handleSAMSetting(3)
	handleSamMissileSetting(1)
	handleAwacsSetting(0)
	handlePrimarySetting(1)
	handlePerkSetting(0)
	bool_firstRunDone = true
	PrintCurrentSettings(true)
end

function createMissionSettings()
	CMD_missionStart = missionCommands.addCommand(string_startMission, nil, HandleStart)
	
	A2A_setting = missionCommands.addSubMenu(string_A2A_settings)
	A2A_none = missionCommands.addCommand(string_A2A_threat_none, A2A_setting, handleA2ASetting, 0)
	A2A_low = missionCommands.addCommand(string_A2A_threat_low, A2A_setting, handleA2ASetting, 1)
	A2A_medium = missionCommands.addCommand(string_A2A_threat_medium, A2A_setting, handleA2ASetting, 2)
	A2A_high = missionCommands.addCommand(string_A2A_threat_high, A2A_setting, handleA2ASetting, 3)
	
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
	
	TANKER_setting = missionCommands.addSubMenu(string_TANKER_settings)
	TANKER_off = missionCommands.addCommand(string_Tankers_off, TANKER_setting, handleTankerSetting, 0)
	TANKER_1 = missionCommands.addCommand(string_Tankers_1, TANKER_setting, handleTankerSetting, 1)
	TANKER_2 = missionCommands.addCommand(string_Tankers_2, TANKER_setting, handleTankerSetting, 2)
	
	PRIMARY_setting = missionCommands.addSubMenu(string_PRIMARY_settings)
	PRIMARY_Yacht = missionCommands.addCommand(string_Primary_Yacht, PRIMARY_setting, handlePrimarySetting, 0)
	PRIMARY_Molniya = missionCommands.addCommand(string_Primary_Molniya, PRIMARY_setting, handlePrimarySetting, 1)
	
	PERKS_setting = missionCommands.addSubMenu(string_PERK_settings)
	PERKS_None = missionCommands.addCommand(string_Perks_none, PERKS_setting, handlePerkSetting, 0)
	PERKS_Cruise_Missiles = missionCommands.addCommand(string_Perks_Cruise_Missiles, PERKS_setting, handlePerkSetting, 1)
	PERKS_Jammer_Attack = missionCommands.addCommand(string_Perks_Jamming_Attack, PERKS_setting, handlePerkSetting, 2)
	
	CMD_settingsMax = missionCommands.addCommand(string_settings_setToMax, nil, HandleMaxDifficulty)
	
	-- reasonable defaults
	handleA2ASetting(1)
	handleSAMSetting(1)
	handleSamMissileSetting(0)
	handleAwacsSetting(1)
	handleTankerSetting(2)
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
		local airThreat = trigger.misc.getUserFlag(Flag_A2A)
		local samThreat = trigger.misc.getUserFlag(Flag_SAM)
		local awacsEnabled = trigger.misc.getUserFlag(Flag_AWACS)
		local tankerEnabled = trigger.misc.getUserFlag(Flag_TANKER)
		local debuggerEnabled = IsDebuggingOn()
		
		local currentSettings = "Current settings:\n"
		
		for key,value in pairs(table_settingsStore) do 
			currentSettings = currentSettings .. key .. ': ' .. value .. "\n"
		end
		trigger.action.outText(currentSettings, 10)
		trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	end
	
	return nil
end

function StartBandarLengehCAP_L39()
	local airThreat = trigger.misc.getUserFlag(Flag_A2A)

	if airThreat == 1 then
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
	local airThreat = trigger.misc.getUserFlag(Flag_A2A)

	if airThreat > 1 then
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
	local airThreat = trigger.misc.getUserFlag(Flag_A2A)

	if airThreat < 2 then
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
	
	if tankerSetting > 0 then
		Spawn_Tanker1 = SPAWN:New( "TankerShell7" ):Spawn()
		trigger.action.outText("Tanker spawned", 10)
	end
	
	if tankerSetting > 1 then
		Spawn_Tanker2 = SPAWN:New( "TankerShell8" ):Spawn()
		trigger.action.outText("Tankers spawned", 10)
	end
	return nil
end

function SpawnAWACS()
	local awacsSetting = trigger.misc.getUserFlag(Flag_AWACS)
	
	if awacsSetting > 0 then
		trigger.action.setUserFlag(Flag_AWACS_STARTUP, true)
		trigger.action.outText("AWACS activated", 10)
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
	local airThreat = trigger.misc.getUserFlag(Flag_A2A)
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	local debuggerEnabled = IsDebuggingOn()
	bBlueInRedZone = false
	
	if airThreat > 0 or samThreat > 0 then
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
		
		if airThreat > 0 then
			A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )
			local squadronCapacity = 0
			local interceptDelay = 0
			local overhead = 0
			local fighterType = ""
			
			-- pick L39 or F4
			if airThreat == 1 then
				squadronCapacity = 2
				interceptDelay = 300
				overhead = 1
				fighterType = "IRQ SQ L39"
			else
				squadronCapacity = 4
				interceptDelay = 150
				overhead = 1.0
				fighterType = "IRQ SQ F4"
			end
			
			-- on very hard we additionally have a MIG29 CAP squad
			if airThreat > 2 then
				-- additional MIG29 squadron
				--A2ADispatcher:SetSquadron("IRFMIG29", AIRBASE.PersianGulf.Qeshm_Island, {"IRQ SQ MIG29"}, 4 )
				A2ADispatcher:SetSquadron("IRFMIG29", AIRBASE.PersianGulf.Havadarya, {"IRQ SQ MIG29"}, 4 )
				A2ADispatcher:SetSquadronOverhead( "IRFMIG29", 1 )
				CapZoneSouth = ZONE_POLYGON:New( "IRQ CAP ZONE", GROUP:FindByName( "IRQ CAP ZONE" ) )
				A2ADispatcher:SetSquadronTakeoffFromParkingHot( "IRFMIG29" )
				A2ADispatcher:SetSquadronGci( "IRFMIG29", 400, 800 )
				A2ADispatcher:SetSquadronGrouping( "IRFMIG29", 2 )
				A2ADispatcher:SetSquadronCap( "IRFMIG29", CapZoneSouth, 8000, 15000, 200, 400, 400, 700, "BARO" )
				A2ADispatcher:SetSquadronCapInterval( "IRFMIG29", 1, 30, 120, 1 )
				
				-- additional interceptors from LAR --> IRQ SQ IF4
				A2ADispatcher:SetSquadron("IRF4Intercept", AIRBASE.PersianGulf.Lar_Airbase, "IRQ SQ IF4", 2 )
				A2ADispatcher:SetIntercept( 120 )
				A2ADispatcher:SetSquadronOverhead( "IRF4Intercept", 2 )
				A2ADispatcher:SetBorderZone( CCCPBorderZone )
				A2ADispatcher:SetSquadronTakeoffFromParkingCold( "IRF4Intercept" )
				A2ADispatcher:SetSquadronGci( "IRF4Intercept", 300, 800 )
				A2ADispatcher:SetSquadronGrouping( "IRF4Intercept", 2 )
			end
			
			A2ADispatcher:SetSquadron("IRF5", AIRBASE.PersianGulf.Bandar_Abbas_Intl, {fighterType}, squadronCapacity )
			A2ADispatcher:SetIntercept( interceptDelay )
			A2ADispatcher:SetSquadronOverhead( "IRF5", overhead )
			A2ADispatcher:SetBorderZone( CCCPBorderZone )
			A2ADispatcher:SetSquadronTakeoffFromParkingCold( "IRF5" )
			A2ADispatcher:SetSquadronGci( "IRF5", 300, 800 )
			A2ADispatcher:SetSquadronGrouping( "IRF5", 2 )
			A2ADispatcher:SetTacticalDisplay( debuggerEnabled )
			A2ADispatcher:SetDefaultTakeoffFromParkingCold()
			A2ADispatcher:SetDefaultLandingAtEngineShutdown()
			A2ADispatcher:SetDefaultFuelThreshold( 0.20 )
			A2ADispatcher:SetDisengageRadius( 250000 )
			A2ADispatcher:SetEngageRadius( 100000 )
			--A2ADispatcher:SetGciRadius( 200000 )
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
								--trigger.action.outText("Enemy SAM grid is now active!", 60)
								trigger.action.setUserFlag('95', true)
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

