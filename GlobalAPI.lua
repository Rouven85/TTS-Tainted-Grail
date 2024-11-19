require("ControlPanelAPI")
require("MapBuilderAPI")

function onLoad()
    initLoadedMap()
end

function onObjectSpawn(object)
    initSpawnedMap(object)

end