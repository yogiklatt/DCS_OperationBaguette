# DCS_OperationBaguette
DCS mission

In order to export that mission you MUST do the following:

1) Open the mission in DCS World Editor
2) Open the trigger editor
3) Go to the second trigger from above (DoMissionSetup)
4) Add LUA comments to the Do Script part, so it reads as that: 

assert(loadfile("C:\\Users\\jklatt\\Saved Games\\DCS.openbeta\\Missions\\PGOB_scripts.lua"))()

You need the above line to do quick LUA script changes, otherwise you'd need reload the file manually via the Do Script File node

5) Create a new Action in the same trigger "Do Script File" and select PGOB_scripts.lua from this repository. This will then embed the LUA file in the miz file.

Remember you can always read all miz contents by opening it with a zip browser.
