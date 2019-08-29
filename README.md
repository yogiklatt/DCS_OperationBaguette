# DCS_OperationBaguette
DCS mission

In order to export that mission you MUST do the following:

1) Open the mission in DCS World Editor
2) Open the trigger editor
3) Go to the second trigger from above (DoMissionSetup)
4) You need comment out the following line in the Do Script part:

So instead of 
assert(loadfile("C:\\Users\\jklatt\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

it reads
--assert(loadfile("C:\\Users\\jklatt\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

The line above needs to be there during LUA scripting as it allow to execute the LUA code without having it embedded in the miz file.

5) Create a new Action in the same trigger "Do Script File" and select PGOB_scripts.lua from this repository. This will then embed the LUA file in the miz file.

Remember you can always read all miz contents by opening it with a zip browser.

The contents of the data folder need to go into the l10n folder of the mission file. So if you update the data here, please embed it in the miz file it's up to date.

This mission uses Moose which is embedded in the miz file.
