require ("/Libraries/MapCardParams")

function rightMapTile ()

end

function createButtonsForMapCard(obj, mapCardData)
    local name = obj.getName()
    local buttonsXML = ""

    if mapCardData[name] then
        local cardParams = mapCardData[name]
        local xr = -75
        local xl = 75
        local yd = 125
        local yu = -125

        -- Baue die Buttons in einer Schleife
        for _, id in ipairs(cardParams.mapID) do
            if id.right then
                buttonsXML = buttonsXML .. string.format([[<Button onClick="right_BtnClick" width="50" height="150" position="%s 0 -100" rotation="0 0 180">Hallo</Button>]], xr)
            end
            if id.down then
                buttonsXML = buttonsXML .. string.format([[<Button onClick="down_BtnClick" width="150" height="50" position="0 %s -100" rotation="0 0 180">Hallo</Button>]], yd)
            end
            if id.up then
                buttonsXML = buttonsXML .. string.format([[<Button onClick="up_BtnClick" width="200" height="100" position="0 %s -100" rotation="0 0 180">Hallo</Button>]], yu)
            end
            if id.left then
                buttonsXML = buttonsXML .. string.format([[<Button onClick="left_BtnClick" width="50" height="150" position="%s 0 -100" rotation="0 0 180">Hallo</Button>]], xl)
            end
        end    

        -- Kombiniere XML und setze es auf einmal
        local combinedXML = string.format([[<Panel>%s</Panel>]], buttonsXML)
        obj.UI.setXml(combinedXML)

        -- Logge nach der Verzögerung
        Wait.time(function()
            log("XML nach dem Setzen (mit Verzögerung): " .. obj.UI.getXml())
        end, 0.5)  -- Verzögerung von 0.5 Sekunden
    end
end

function right_BtnClick(player, value, id)
    log("Button Clicked: right_BtnClick")  -- Einfacher Debug-Log
end

function down_BtnClick(player, value, id)
    log("Button Clicked: down_BtnClick")  -- Einfacher Debug-Log
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
                 