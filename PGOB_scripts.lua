string_startMission = 'Start mission'

Flag_A2A = '60'
Flag_SAM = '61'
Flag_AWACS = '62'
Flag_TANKER = '63'
Flag_PRIMARY = '64'
Flag_Debug = '69'

string_A2A_thread_none = 'Air Threat: none'
string_A2A_thread_low = 'Low A2A Threat (L39)'
string_A2A_thread_medium = 'Medium A2A Threat (MiG-21, F-4, F-5)'
string_A2A_thread_high = 'High A2A Threat (MiG-21, MiG-29, F-4, F-5)'

string_SAM_thread_none = 'No SAM Threat'
string_SAM_thread_low = 'Low SAM Threat (SA-2, SA-18)'
string_SAM_thread_medium = 'Medium SAM Threat (SA-10, SA-18, AAA, Ships)'

string_AWACS_off = 'AWACS disabled'
string_AWACS_on = 'AWACS available'

string_Tankers_off = 'No tanker'
string_Tankers_1 = '1 Tanker (Shell 7-1)'
string_Tankers_2 = '2 Tankers (Shell 7-1, Shell 8-1)'

string_Primary_Yacht = 'A freaking Yacht'
string_Primary_Molniya = 'A fat boat'

string_Debug_off = 'Debug info disabled'
string_Debug_on = 'Debug info enabled (Debug planes will be spawned)'

string_A2A_settings = 'Change A2A threat setting'
string_SAM_settings = 'Change SAM threat setting'
string_AWACS_settings = 'Change AWACS setting'
string_TANKER_settings = 'Change Tanker setting'
string_PRIMARY_settings = 'Change Primary Target'
string_Debug_settings = 'Change Debug setting'

string_settings_setToMax = 'Set to max difficulty'
string_settings_setToMin = 'Set to min difficulty'

bool_blueUnitsDetectedState = false

function handleA2ASetting(flagValue)
	trigger.action.setUserFlag(Flag_A2A, flagValue)
	PrintCurrentSettings(true)
	return nil
end

function handleSAMSetting(flagValue)
	trigger.action.setUserFlag(Flag_SAM, flagValue)
	PrintCurrentSettings(true)
	return nil
end

function handleAwacsSetting(flagValue)
	trigger.action.setUserFlag(Flag_AWACS, flagValue)
	PrintCurrentSettings(true)
	return nil
end

function handleTankerSetting(flagValue)
	trigger.action.setUserFlag(Flag_TANKER, flagValue)
	PrintCurrentSettings(true)
	return nil
end

function handlePrimarySetting(flagValue)
	trigger.action.setUserFlag(Flag_PRIMARY, flagValue)
	PrintCurrentSettings(true)
	return nil
end

function handleDebugSettings(flagValue)
	trigger.action.setUserFlag(Flag_Debug, flagValue)
	PrintCurrentSettings(true)
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
	missionCommands.removeItem(SAM_setting)
	
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
	
	missionCommands.removeItem(Debug_off)
	missionCommands.removeItem(Debug_on)
	missionCommands.removeItem(Debug_setting)
	
	missionCommands.removeItem(CMD_settingsMax)
	missionCommands.removeItem(CMD_settingsMin)
	return nil
end

function HandleStart()
	removeSettings()
	trigger.action.setUserFlag('70', 1)
end

function HandleMaxDifficulty()
	trigger.action.setUserFlag(Flag_A2A, 3)
	trigger.action.setUserFlag(Flag_SAM, 2)
	trigger.action.setUserFlag(Flag_AWACS, 0)
	--trigger.action.setUserFlag(Flag_Debug, 1)
	PrintCurrentSettings(true)
end

function HandleMinDifficulty()
	trigger.action.setUserFlag(Flag_A2A, 0)
	trigger.action.setUserFlag(Flag_SAM, 0)
	trigger.action.setUserFlag(Flag_AWACS, 1)
	--trigger.action.setUserFlag(Flag_Debug, 0)
	PrintCurrentSettings(true)
end

function createDifficultySettings()
	CMD_missionStart = missionCommands.addCommand(string_startMission, nil, HandleStart)
	
	A2A_setting = missionCommands.addSubMenu(string_A2A_settings)
	A2A_none = missionCommands.addCommand(string_A2A_thread_none, A2A_setting, handleA2ASetting, 0)
	A2A_low = missionCommands.addCommand(string_A2A_thread_low, A2A_setting, handleA2ASetting, 1)
	A2A_medium = missionCommands.addCommand(string_A2A_thread_medium, A2A_setting, handleA2ASetting, 2)
	A2A_high = missionCommands.addCommand(string_A2A_thread_high, A2A_setting, handleA2ASetting, 3)
	
	SAM_setting = missionCommands.addSubMenu(string_SAM_settings)
	SAM_none = missionCommands.addCommand(string_SAM_thread_none, SAM_setting, handleSAMSetting, 0)
	SAM_low = missionCommands.addCommand(string_SAM_thread_low, SAM_setting, handleSAMSetting, 1)
	SAM_medium = missionCommands.addCommand(string_SAM_thread_medium, SAM_setting, handleSAMSetting, 2)
	
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
	
	Debug_setting = missionCommands.addSubMenu(string_Debug_settings)
	Debug_off = missionCommands.addCommand(string_Debug_off, Debug_setting, handleDebugSettings, 0)
	Debug_on = missionCommands.addCommand(string_Debug_on, Debug_setting, handleDebugSettings, 1)
	
	CMD_settingsMax = missionCommands.addCommand(string_settings_setToMax, nil, HandleMaxDifficulty)
	CMD_settingsMin = missionCommands.addCommand(string_settings_setToMin, nil, HandleMinDifficulty)
	
	return nil
end

function PrintCurrentSettings(executePrint)
	if executePrint then
		local airThreat = trigger.misc.getUserFlag(Flag_A2A)
		local samThreat = trigger.misc.getUserFlag(Flag_SAM)
		local awacsEnabled = trigger.misc.getUserFlag(Flag_AWACS)
		local tankerEnabled = trigger.misc.getUserFlag(Flag_TANKER)
		local debuggerEnabled = IsDebuggingOn()
		
		local currentSettings = "Current settings:\n"
		
		if airThreat == 0 then
			currentSettings = currentSettings .. string_A2A_thread_none .. "\n"
		elseif airThreat == 1 then
			currentSettings = currentSettings .. string_A2A_thread_low .. "\n"
		elseif airThreat == 2 then
			currentSettings = currentSettings .. string_A2A_thread_medium .. "\n"
		elseif airThreat == 3 then
			currentSettings = currentSettings .. string_A2A_thread_high .. "\n"
		end
		
		
		if samThreat == 0 then
			currentSettings = currentSettings .. string_SAM_thread_none .. "\n"
		elseif samThreat == 1 then
			currentSettings = currentSettings .. string_SAM_thread_low .. "\n"
		elseif samThreat == 2 then
			currentSettings = currentSettings .. string_SAM_thread_medium .. "\n"
		end
		
		if awacsEnabled == 0 then
			currentSettings = currentSettings .. string_AWACS_off .. "\n"
		else
			currentSettings = currentSettings .. string_AWACS_on .. "\n"
		end
		
		if tankerEnabled == 0 then
			currentSettings = currentSettings .. string_Tankers_off .. "\n"
		elseif tankerEnabled == 1 then
			currentSettings = currentSettings .. string_Tankers_1 .. "\n"
		elseif tankerEnabled == 2 then
			currentSettings = currentSettings .. string_Tankers_2 .. "\n"
		end
		
		currentSettings = currentSettings .. '\n'
		
		if debuggerEnabled == false then
			currentSettings = currentSettings .. string_Debug_off .. "\n"
		else
			currentSettings = currentSettings .. string_Debug_on .. "\n"
		end
		
		trigger.action.outText(currentSettings, 10)
		trigger.action.outSound('l10n/DEFAULT/set_bar_01.ogg')
	end
	
	return nil
end

function StartBandarLengehCAP()
	local airThreat = trigger.misc.getUserFlag(Flag_A2A)

	if airThreat > 0 then
		if airThreat == 1 then
			BandarCapPlane = GROUP:FindByName( "IRQ SQ L39 Bandar Lengeh" )
		else
			BandarCapPlane = GROUP:FindByName( "IRQ SQ MIG21" )
		end
		
		BandarLengehPatrolZone = ZONE:New( "Mig21PatrolZone" )
		BandarLengehCapZone = AI_CAP_ZONE:New( BandarLengehPatrolZone, 500, 1000, 500, 600 )
		BandarLengehEngagePolygon = GROUP:FindByName( "IRQ ENGAGE ZONE MIG21" ) -- editor placed polygon
		BandarLengehCapEngageZone = ZONE_POLYGON:New( "IRQ ENGAGE ZONE MIG21", BandarLengehEngagePolygon )
		BandarLengehCapZone:SetControllable( BandarCapPlane )
		BandarLengehCapZone:SetEngageZone( BandarLengehCapEngageZone ) -- Set the Engage Zone. The AI will only engage when the bogeys are within the BandarLengehCapEngageZone.
		BandarLengehCapZone:__Start( 5 ) -- They should statup, and start patrolling in the FishbedPatrolZone.
		
		trigger.action.outText("Bandar Lengeh groups initiated", 10)
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
		Spawn_Tanker1 = SPAWN:New( "BLUE AWACS" ):Spawn()
		trigger.action.outText("AWACS spawned", 10)
	end
end

function SpawnDebug()
	local debugSetting = trigger.misc.getUserFlag(Flag_Debug)
	
	if debugSetting > 0 then
		Spawn_DebugEages = SPAWN:New( "Debug Eagles" ):Spawn()
		trigger.action.outText("Debug Eagles spawned", 10)
	end
end

function SpawnSAMs()
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	
	-- spawn phalanx
	if samThreat > 0 then
		trigger.action.outText("Spawning SAMs ... ", 10)
		
		--Spawn_Vehicle_1 = SPAWN:New( "IRQ EWR SAM BANDAR LENGEH" )
		--Spawn_Group_1 = Spawn_Vehicle_1:Spawn()
		
		Spawn_SAM_SA11 = SPAWN:New( "IRQ EWR SA-11" ):Spawn()
		Spawn_SAM_BL = SPAWN:New( "IRQ EWR SAM BANDAR LENGEH" ):Spawn()
		
		-- Spawn Phalanx
		local PhalanxSpawnZone1 = ZONE:New( "PhalanxSpawn1" )
		local PhalanxSpawnZone2 = ZONE:New( "PhalanxSpawn2" )
		local PhalanxSpawnZone3 = ZONE:New( "PhalanxSpawn3" )
		Template_SAM_PHALANX = SPAWN:New( "IRQ EWR SA-18 Phalanx" )
		SAM_PHALANX1 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone1)
		SAM_PHALANX2 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone2)
		SAM_PHALANX3 = Template_SAM_PHALANX:SpawnInZone(PhalanxSpawnZone3)
		
		Spawn_SAM_ENTRY = SPAWN:New( "IRQ EWR SA-2 ENTRY" ):Spawn()
		
		
		if samThreat == 1 then
			SamZoneTable = { ZONE:New( "SamSpawnZone2" ), ZONE:New( "SamSpawnZone3" ), ZONE:New( "SamSpawnZone5" ), ZONE:New( "SamSpawnZone6" ), ZONE:New( "SamSpawnZone7" ), ZONE:New( "SamSpawnZone8" ), ZONE:New( "SamSpawnZone9" ), ZONE:New( "SamSpawnZone10" )}
			Spawn_MAIN_SA2 = SPAWN:New( "IRQ EWR SA-2 MAIN" ):InitRandomizeZones( SamZoneTable ):Spawn()
			
		elseif samThreat == 2 then
			SamZoneTable = { ZONE:New( "SamSpawnZone2" ), ZONE:New( "SamSpawnZone3" ), ZONE:New( "SamSpawnZone5" ), ZONE:New( "SamSpawnZone6" ), ZONE:New( "SamSpawnZone7" ), ZONE:New( "SamSpawnZone8" ), ZONE:New( "SamSpawnZone9" ), ZONE:New( "SamSpawnZone10" ), ZONE:New( "SamSpawnZone11" ), ZONE:New( "SamSpawnZone12" ) }
			
			Spawn_SAM_ISLAND = SPAWN:New( "IRQ EWR SA-2 ISLAND" ):Spawn()
			Spawn_MAIN_SA10 = SPAWN:New( "IRQ EWR SA-10 MAIN" ):InitRandomizeZones( SamZoneTable ):Spawn()
			Spawn_AAA = SPAWN:New( "IRQ EWR AAA" ):Spawn()
			Spawn_Ship = SPAWN:New( "IRQ EWR Ship defense" ):Spawn()
			Spawn_Ship = SPAWN:New( "IRQ EWR HAWK EAST" ):Spawn()
		end
		
		trigger.action.outText("Spawn SAMs completed", 10)
	end
	return nil
end

function StartA2ADispatcher()

	trigger.action.outText("Checking A2A dispatcher", 10)

	local airThreat = trigger.misc.getUserFlag(Flag_A2A)
	local samThreat = trigger.misc.getUserFlag(Flag_SAM)
	local debuggerEnabled = IsDebuggingOn()
	bBlueInRedZone = false
	
	Set_EWR = SET_GROUP:New():FilterPrefixes( "IRQ EWR" ):FilterStart()
	
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
						
						if foundUnit:IsAlive() == true and foundUnitCoalition == coalition.side.BLUE and foundUnit:IsInZone(CCCPBorderZone) then
							trigger.action.outText("Enemy SAM grid is now active!", 60)
							bool_blueUnitsDetectedState = true
							trigger.action.setUserFlag('95', true)
							
							Set_EWR:ForEachGroupAlive(
								function(Set_EWR)
									Set_EWR:OptionROEOpenFire()
								end 
							)
						end
					end
				end
			end
		end
	end
	
	Set_EWR:ForEachGroupAlive(
		function(Set_EWR)
			Set_EWR:OptionROEHoldFire()
		end 
	)
	trigger.action.outText("Dispatcher checked!", 10)
end

function IsDebuggingOn()
	local debugValue = trigger.misc.getUserFlag(Flag_Debug)
	if debugValue > 0 then
		return true
	else
		return false
	end
end

-- Create difficulty settings
createDifficultySettings()

