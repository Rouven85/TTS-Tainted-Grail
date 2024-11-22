require("ControlPanelAPI")
require("MapBuilderAPI")
require("CamPositions")

function onLoad()
    
    initLoadedMap()
end

function onObjectSpawn(object)
    initSpawnedMap(object)

end