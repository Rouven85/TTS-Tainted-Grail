require("ControlPanelAPI")
require("MapBuilderAPI")
require("CamPositions")

function onLoad()
    --createCamMenu()
    initLoadedMap()
    
end

function onObjectSpawn(object)
    initSpawnedMap(object)

end