require("tableUI")
require ("/Libraries/CharakterParams")
local playerBoard = {}

function chooseNewPlayer()
    local objects = getAllObjects()
    for _, obj in ipairs(objects) do
        local objName = obj.getName()
        if obj.hasTag("CharakterBeschreibung") and objName == "Sloan" then
            local playerID = objName
            createPlayerButton(obj, playerID)
            playerBoard[objName] = obj
        end
        if obj.hasTag("CharakterBeschreibung") and objName == "Fyul" then
            local playerID = objName
            createPlayerButton(obj, playerID )
            playerBoard[objName] = obj
        end
        if obj.hasTag("CharakterBeschreibung") and objName == "Dagan" then
            local playerID = objName
            createPlayerButton(obj, playerID)
            playerBoard[objName] = obj
        end
        if obj.hasTag("CharakterBeschreibung") and objName == "Mabd" then
            local playerID = objName
            createPlayerButton(obj, playerID)
            playerBoard[objName] = obj
        end
    end
end

function startNewGame(obj)
    startNewGameBtn(obj)
end

function callback (obj)
    Wait.time(function()
        
        getObjects(obj)
    end, 0.2)
end


function spielerGewaehlt(playerColor, value, id)
    local objects = getAllObjects()
    local player = Player[playerColor.color]
    local playerPosTbl = player.getHandTransform()
    local playerPos = playerPosTbl.position + vector(0, 0, 14)
    local figurPos = playerPosTbl.position + vector(-0.8, 0, 14.8)
    -- Spielerboard auf Platz des Spielers legen -- 
    if playerBoard[id] then
        local board = playerBoard[id]
        local url = charData[id].url
        local urlFigur = charData[id].urlFigur
        local urlBeschreibung = charData[id].urlBeschreibung
        local objectName = id
        spawnObjectFromFile(url ,playerPos, objectName, callback)
        spawnObjectFromFile(urlFigur ,figurPos, objectName)
        spawnObjectFromFile(urlBeschreibung ,figurPos, objectName, function(obj) startNewGame(obj) end)
        destroyObject(playerBoard[id])
    end
end

function spielStarten (player, value, id)
    log("Hallo")
end