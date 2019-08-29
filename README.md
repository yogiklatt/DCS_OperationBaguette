# DCS_OperationBaguette
DCS mission

The mission is ready to go. For quick editing do the following:

1) Open the mission in DCS World Editor
2) Open the trigger editor
3) Go to the second trigger from above (DoMissionSetup)
4) You need comment in the following line in the Do Script part:

So instead of:

--assert(loadfile("C:\\Users\\jklatt\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

it reads:

assert(loadfile("C:\\Users\\[WINDOWS_USERNAME]\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

Then remove the contents of the Do Script File part in the same trigger.

The line above needs to be there during LUA scripting as it allow to execute the LUA code without having it embedded in the miz file. If you want to export it properly, you need to reattach it via the Do Script File action.

Remember you can always read all miz contents by opening it with a zip browser.

The contents of the data folder need to go into the l10n folder of the mission file. So if you update the data here, please embed it in the miz file it's up to date.

This mission uses Moose which is embedded in the miz file.

Once you play the mission, after a second you will get a selection of settings to adapt the difficulty via the F-10 comms menu.

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


BRIEFING CONTENTS
Primary and secondary targets have been stated.

Iranian forces will not attack unless you attack first or violate their border (which we totally will do).

The mission will be conducted as followed:

1) Blue forces launch

2) At point Carcajou you have the option to fuel up at the available tankers for the trip to the AO (roughly 150 nm).

3) At your discretion launch a cruise missile strike to knock out the SAMs between waypoints Carcajou and Crossaint (time to impact is roughly 6 to 8 minutes). The code word for the launch is "Baguetterie" (F-10).

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
