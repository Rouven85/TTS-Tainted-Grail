--require("ControlPanelAPI")
require("MapBuilderAPI")
require("CamPositions")
require("SetupGame")
require("CharakterControl")
require("spawnObjectwithURL")
require("choosePlayer")


function onLoad()   
    initLoadedMap()
    chooseNewPlayer()

end

function onObjectSpawn(object)
    initSpawnedMap(object)
    createSetupBtn(object)
    
end




spawnObjectFromFile()
