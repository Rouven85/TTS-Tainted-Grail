require("ControlPanelAPI")
require("MapBuilderAPI")
require("CamPositions")
require("SetupGame")



function onLoad()    
    initLoadedMap()
end

function onObjectSpawn(object)
    initSpawnedMap(object)
    createSetupBtn(object)
end