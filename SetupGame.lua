

function createSetupBtn(object)
    log (object.type)
    if object.hasTag("SetupCard") then
        object.UI.setXmlTable({
            {
                tag = "Panel",
                attributes = {
                    width = 500,
                    height = 500,
                
                
                },
                children = {
                    {
                        tag = "Button",
                        attributes = {
                            width = 300,
                            height = 50,
                            fontSize = "24",
                            color = "white",
                            position = "-150 0 0",
                            rotation = "0 180 90",
                            onClick = "Global/setupGame",
                        },
                        value = "SETUP",
                    },
                },
            },
        })
    end
end

function sortEncounterDecks ()
    local allObjects = getAllObjects()
    local encounterList = {}
    local level1 = {}
    local level2 = {}
    local level3 = {}
    local level4 = {}

    for _,obj in ipairs(allObjects) do
        
        if obj.hasTag("EncounterDeck") then
            table.insert(encounterList, obj)
            local name = obj.getName() 
            if name == "White Encounter 1" or 
                name == "Green Encounter 1" or
                name == "Blue Encounter 1" or
                name == "Purple Encounter 1" then
                for i = 1, #encounterList do
                    local key = obj.getName()
                    level1[key] = obj.guid
                end
            end
        end
    end    
    lvl1Encounter(level1)
end

function lvl1Encounter(level1)
    local lvl1 = level1
    for key, guid in pairs (lvl1) do
        if key == "White Encounter 1" then
            local whiteArea = getObjectFromGUID("e9c965")
            local white = getObjectFromGUID(guid)
            local whiteClone = white.clone({
                position = white.getPosition()
            })
            whiteClone.setPosition(whiteArea.getPosition())
            Wait.time(function() whiteClone.shuffle() end, 0.9, 3)
        elseif key == "Green Encounter 1" then
            local greenArea = getObjectFromGUID("c8c49d")
            local green = getObjectFromGUID(guid)
            local greenClone = green.clone({
                position = green.getPosition()
            })
            greenClone.setPosition(greenArea.getPosition())
            Wait.time(function() greenClone.shuffle() end, 0.7, 3)
        elseif key == "Blue Encounter 1" then
            local blueArea = getObjectFromGUID("135e69")
            local blue = getObjectFromGUID(guid)
            local blueClone = blue.clone({
                position = blue.getPosition()
            })
            blueClone.setPosition(blueArea.getPosition())
            Wait.time(function() blueClone.shuffle() end, 0.8, 3)
        elseif key == "Purple Encounter 1" then
            local purpleArea = getObjectFromGUID("19b21c")
            local purple = getObjectFromGUID(guid)
            local purpleClone = purple.clone({
                position = purple.getPosition()
            })
            purpleClone.setPosition(purpleArea.getPosition())
            Wait.time(function() purpleClone.shuffle() end, 0.6, 3)
        end
    end
end


--[[ function setupGame()
    
    log(allObjects)
    
    local playerCount = Player.getPlayers()
    
    local greenArea = getObjectFromGUID("c8c49d")
    local whiteArea = getObjectFromGUID("e9c965")
    local blueArea = getObjectFromGUID("135e69")
    local purpleArea = getObjectFromGUID("19b21c")
   


    for _, obj in ipairs(allObjects) do
        if obj.hasTag ("EncounterDeck") then
            table.insert(encounterList, obj.getName())
            if encounterList == "White Encounter 1" or encounterList == "Green Encounter 1" or encounterList == "Blue Encounter 1" or encounterList == "Purple Encounter 1" then
                table.insert(level1, getObjectFromGUID(obj.getGUID()))
                log(level1)
            end
        end
        if obj.hasTag("SetupCard") then
            log(obj.tag)
            local chapter = obj.getName()
            if chapter == "Kapitel 1" then
                if #playerCount < 2 then
                    for _, dificultLevel in ipairs(encounterList) do
                        --log (dificultLevel)
                        if dificultLevel == "Green Encounter 1" then
                            log (dificultLevel)
                            encounterDeck.setPosition(greenArea.getPosition())
                            Wait.time(function() encounterDeck.shuffle() end, 0.4,3)
                        elseif dificultLevel == "White Encounter 1" then
                            encounterDeck.setPosition(whiteArea.getPosition())
                            Wait.time(function() encounterDeck.shuffle() end, 0.5,3)
                        elseif dificultLevel == "Purple Encounter 1" then
                            encounterDeck.setPosition(purpleArea.getPosition())
                            Wait.time(function() encounterDeck.shuffle() end, 0.6,3)
                        elseif dificultLevel == "Blue Encounter 1" then
                            encounterDeck.setPosition(blueArea.getPosition())
                            Wait.time(function() encounterDeck.shuffle() end, 0.7,3)
                        end
                    end
                end
            end
        
            log (#playerCount)
            log (chapter)
            
        
            
            
            
            --[[ if playerCount < 2 then
                log (playerCount)
                for _, dificultLevel in ipairs(encounterList) do
                    if dificultLevel == "Green Encounter 1" then
                        obj.setPosition(greenArea.getPosition())
                        Wait.time(function() obj.shuffle() end, 0.4,3)
                    elseif dificultLevel == "White Encounter 1" then
                        obj.setPosition(whiteArea.getPosition())
                        Wait.time(function() obj.shuffle() end, 0.5,3)
                    elseif dificultLevel == "Purple Encounter 1" then
                        obj.setPosition(purpleArea.getPosition())
                        Wait.time(function() obj.shuffle() end, 0.6,3)
                    elseif dificultLevel == "Blue Encounter 1" then
                        obj.setPosition(blueArea.getPosition())
                        Wait.time(function() obj.shuffle() end, 0.7,3)
                    end
                end
            end --]]
      --  end
   -- end
--end
--[[ function kapitelOne(player, value, id)
    local items = getObjectFromGUID("37448b")
    local greenEncounter1 = getObjectFromGUID("cf6d34")
    local whiteEncounter1 = getObjectFromGUID("c3e018")
    local blueEncounter1 = getObjectFromGUID("74adb2")
    local purpleEncounter1 = getObjectFromGUID("c81eef")
    local zufaelligeEreignisse = getObjectFromGUID("67f95d")

    local greenArea = getObjectFromGUID("c8c49d")
    local whiteArea = getObjectFromGUID("e9c965")
    local blueArea = getObjectFromGUID("135e69")
    local purpleArea = getObjectFromGUID("19b21c")

    local whiteBaseAtkCard = getObjectFromGUID("ef5b34")
    local whitePosition = whiteBaseAtkCard.getPosition()
    local whiteBaseDiplCard = getObjectFromGUID("ceb81f")
    local attackCardPile = getObjectFromGUID("600a12")
    local diplCardPile = getObjectFromGUID("4b5bde")

    local players = Player.getPlayers()
    for _, player in ipairs(players) do
        if player.color == "White" then
            
            whiteBaseAtkCard.clone({whitePosition})
            whiteBaseAtkCard.setPosition(attackCardPile.getPosition())
            whiteBaseDiplCard.setPosition(diplCardPile.getPosition())
        
        end
    end

    Wait.time(function() items.shuffle() end, 0.9,3)

    Wait.time(function() zufaelligeEreignisse.shuffle() end, 1,3)
    
    greenEncounter1.setPosition(greenArea.getPosition())
    Wait.time(function() greenEncounter1.shuffle() end, 0.8,3)

    whiteEncounter1.setPosition(whiteArea.getPosition())
    Wait.time(function() whiteEncounter1.shuffle() end, 0.7,3)

    blueEncounter1.setPosition(blueArea.getPosition())
    Wait.time(function() blueEncounter1.shuffle() end, 1,3)

    purpleEncounter1.setPosition(purpleArea.getPosition())
    Wait.time(function() purpleEncounter1.shuffle() end, 0.6,3)



end --]] --]]