# DCS_OperationBaguette
DCS mission

The mission is ready to go. If you want to edit the actual script file, do the following:

1) Open the mission in DCS World Editor
2) Open the trigger editor
3) Go to the second trigger from above (DoMissionSetup)
4) Do the following changes in the Do Script part:

So instead of:

bool_allowDebug = false
--assert(loadfile("C:\\Users\\yogik\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

set it to:

bool_allowDebug = true
assert(loadfile("C:\\Users\\[USER_NAME]\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

and point it to your local copy of PGOB_scripts.lua.

The line above needs to be there during LUA scripting as it allow to execute the LUA code without having it embedded in the miz file. If you want to export it properly, just reattach the newer script via the Do Script file action in the trigger and then revert the stuff mentioned above.

Remember you can always read all miz contents by opening it with a zip browser.

The contents of the data folder need to go into the l10n folder of the mission file. So if you update the data here, please embed it in the miz file it's up to date.

This mission uses Moose which is embedded in the miz file.

Once you play the mission, after a second you will get a selection of settings to adapt the difficulty via the F-10 comms menu.

Kneeboard table:
https://docs.google.com/spreadsheets/d/1rwXwd_w2jNXq68Ji619EvZ9WDkzaay7I0BDykgDsHSk/edit#gid=0

Mission images:
https://drive.google.com/open?id=1BW-ZOhCaGU92djeHpVvfk87p5FSAIPlUi_npKceJd_g

==================================================================

The main goal of this mission is to destroy a ship and a couple of secondary targets. The mission is setup so that it is possible to play them in different ways, with different difficulty settings and air frames. You can play it completely harmless or with loads of threats around.

Supported slots:
2x F-14B
2x F/A-18C
4x AV-8B N/A
2x A-10C
2x M2000C
2x AJS-37
1x L-39C (invisible observer)

All planes are only HALF FUELLED UP AND MOSTLY UNARMED! You have quite a long way to go so you should consider taking less fuel and do A2A refuelling.

SITUATION:
Your mission is to destroy a boat (either a Yacht or a Molniya) in the harbour of Havadarya.

The secondary targets are at the airport of Havadarya:
1) An ammo store at the southern side of the airport.
2) A wing of six Chinese J-11 which are parked on the western side of the airport.

Iran's coast is littered with SAMs and an EW system is in place to keep intruders from coming in.

There are several settings you can set to adjust the difficulty and experience for you or your friends. One second after launching the mission, you will see options in the F-10 menu for:

- Air to Air Threat
- SAM threat
- Ability of SAMs to target incoming missiles
- Num of available tankers
- AWACS Availability
- Available perks (cruise missile attack or satellite jammer)
- Type of primary target (Yacht or Warship)

Do not be a dick and choose a single person to do that. Enemy units will be spawned after you selected to start the mission.

Check the kneeboards!


BRIEFING:
Primary and secondary targets have been stated.

Iranian forces will not attack unless you attack first or violate their border.

The mission will be conducted as followed:

1) Blue forces launch

2) At point Carcajou you have the option to fuel up at the available tankers for the trip to the AO (roughly 150 nm).

3) At your discretion (if the perks is available) you can via F-10:

- launch a cruise missile attack to take out the SAMs between the waypoints Carcajou and Crossaint as well as the airfield of Bandar Lengeh. The code word for this perk is "Baguetterie".

OR

- launch a one time jammer attack that will temporarily disable any SAMs for two minutes. The code word for this attack is "Fromagerie".

Both attacks are only available if they are selected during the mission setup.

4) Head to the AO. If northbound you might cover behind the mountains north of Havadarya. If south bound be aware of the SAM grid.

5) Commence le attacque!

6) Fly back and land.

USS Stennis RADIO: 127.5
USS Stennis TACAN: 25X
USS Stennis ICLS: 14

Tanker Shell 7-1 Radio: 125.250 UHF 
Tanker Shell 7-1 TACAN: 31Y

Tanker Shell 8-1 Radio: 125.500 UHF 
Tanker Shell 8-1 TACAN: 32Y

Mission frequency: 251.000
Dodge 6 Intraflight: 130.00 (AV-8B)
Ford 3 Intraflight: 130.25 (F/A-18C)
Colt 1 Intraflight: 130.50 (F-14B)
Hawg 9 Intraflight: 130.75 (A-10C)
Uzi 4 Intraflight: 140.00 (M2000)
Enfield 9 Intraflight: 140.25 (AJS37)

Exact coordinates of secondary target:

Ammo store:
LAT: 27° 9' 19" N
LONG: 56° 10' 29" E
ELEV: 30 ft

J-11s:
LAT: 27° 9' 29" N
LONG: 56° 9' 45" E
ELEV: 30 ft

Bullseye Position:
Larak Island
LAT: 26° 51' 19" N
LONG: 56° 21' 30" E´
