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

The flight plan is NOT a flight plan but just marks several points of interest in the mission. Check the briefing and the kneeboard!
