require ("/Libraries/MapCardParams")


function createButtonsForMapCard(obj, mapCardData)
    local name = obj.getName()
    local buttonsXML = ""

    if mapCardData[name] then
        local cardParams = mapCardData[name]
        local xr = -75
        local xl = 75
        local yd = 125
        local yu = -125
        -- Create Buttons --
        for _, id in ipairs(cardParams.mapID) do
            if id.right then
                local guid = obj.getGUID()
                buttonsXML = buttonsXML .. string.format([[<Button onClick="Global/right_BtnClick" id="%s" width="50" height="150" position="%s 0 -100" rotation="0 0 180" color = "none"></Button>]], guid,xr)
            end
            if id.down then
                local guid = obj.getGUID()
                buttonsXML = buttonsXML .. string.format([[<Button onClick="Global/down_BtnClick" id="%s" width="150" height="50" position="0 %s -100" rotation="0 0 180" color = "none"></Button>]], guid,yd)
            end
            if id.up then
                local guid = obj.getGUID()
                buttonsXML = buttonsXML .. string.format([[<Button onClick="Global/up_BtnClick" id="%s" width="150" height="50" position="0 %s -100" rotation="0 0 180" color = "none"></Button>]], guid,yu)
            end
            if id.left then
                local guid = obj.getGUID()
                buttonsXML = buttonsXML .. string.format([[<Button onClick="Global/left_BtnClick" id="%s" width="50" height="150" position="%s 0 -100" rotation="0 0 180" color = "none"></Button>]], guid,xl)
            end
        end    
        -- combine XML and set XML --
        local combinedXML = string.format([[<Panel>%s</Panel>]], buttonsXML)
        obj.UI.setXml(combinedXML)
        -- Logge nach der Verzögerung
        Wait.time(function()
            
        end, 0.2)  
    end
end

function right_BtnClick(player, value, id)
    local obj = getObjectFromGUID(id)
    local currentCardPos = obj.getPosition()
    local name = obj.getName()
    local rightCardID = mapCardData[name].mapID[1].right
    local container = getObjectFromGUID("7902bb")
    local bounds = obj.getBounds()
    local direction = "right"
    
    for _, value in pairs(mapCardData) do
        if value.CardID == rightCardID then
            local newMapCard = value.name
            local card = getCardByName(container, newMapCard, bounds, currentCardPos, direction)
        end 
    end
end

function down_BtnClick(player, value, id)
    local obj = getObjectFromGUID(id)
    local currentCardPos = obj.getPosition()
    local name = obj.getName()
    local downCardID = mapCardData[name].mapID[3].down
    local container = getObjectFromGUID("7902bb")
    local bounds = obj.getBounds()
    local direction = "down"

    for _, value in pairs(mapCardData) do
        if value.CardID == downCardID then
            local newMapCard = value.name
            local card = getCardByName(container, newMapCard, bounds, currentCardPos, direction)
        end 
    end
end

function up_BtnClick(player, value, id)
    local obj = getObjectFromGUID(id)
    local currentCardPos = obj.getPosition()
    local name = obj.getName()
    local upCardID = mapCardData[name].mapID[4].up
    local container = getObjectFromGUID("7902bb")
    local bounds = obj.getBounds()
    local direction = "up"

    for _, value in pairs(mapCardData) do
        if value.CardID == upCardID then
            local newMapCard = value.name
            local card = getCardByName(container, newMapCard, bounds, currentCardPos, direction)
        end 
    end
end

function left_BtnClick(player, value, id)
    local obj = getObjectFromGUID(id)
    local currentCardPos = obj.getPosition()
    local name = obj.getName()
    local upCardID = mapCardData[name].mapID[2].left
    local container = getObjectFromGUID("7902bb")
    local bounds = obj.getBounds()
    local direction = "left"

    for _, value in pairs(mapCardData) do
        if value.CardID == upCardID then
            local newMapCard = value.name
            local card = getCardByName(container, newMapCard, bounds, currentCardPos, direction)
        end 
    end
end

function initLoadedMap()
    for _, obj in ipairs(getAllObjects()) do
        if obj.hasTag("MapCard") then
            createButtonsForMapCard(obj, mapCardData)
        end
    end
end

function initSpawnedMap(object)
    Wait.time(function()
        if object.hasTag("MapCard") then
            createButtonsForMapCard(object, mapCardData)
        end
    end, 0.1)
end

function getCardByName(container, newMapCard, bounds, currentCardPos, direction)
    local objects = container.getObjects() -- Holt eine Liste aller Objekte im Container
    
    for _, obj in ipairs(objects) do
        if obj.name == newMapCard then
            if direction == "right" then
                local params = {
                    position = currentCardPos + Vector(bounds.size.x, 2, 0), -- Position rechts neben Ausgangskarte
                    rotation = Vector(0, 180, 0) 
                }
                local card = container.takeObject(params)
            elseif direction == "down" then
                local params = {
                    position = currentCardPos + Vector(0, 2, -bounds.size.z), -- Position unter Ausgangskarte
                    rotation = Vector(0, 180, 0) 
                } 
                local card = container.takeObject(params)
            elseif direction == "up" then 
                local params = {
                    position = currentCardPos + Vector(0, 2, bounds.size.z), -- Position über Ausgangskarte
                    rotation = Vector(0, 180, 0) 
                }
                local card = container.takeObject(params)
            elseif direction == "left" then
                local params = {
                    position = currentCardPos + Vector(-bounds.size.x, 2, 0), -- Position links neben Ausgangskarte
                    rotation = Vector(0, 180, 0) 
                }
                local card = container.takeObject(params)
            end
            return card
        end
    end
end