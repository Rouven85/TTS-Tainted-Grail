-- require("/Libraries/tblChapterCards")


local w1 = "White Encounter 1"
local w2 = "White Encounter 2"
local w3 = "White Encounter 3"
local w4 = "White Encounter 4"
local g1 = "Green Encounter 1"
local g2 = "Green Encounter 2"
local g3 = "Green Encounter 3"
local g4 = "Green Encounter 4"
local b1 = "Blue Encounter 1"
local b2 = "Blue Encounter 2"
local b3 = "Blue Encounter 3"
local b4 = "Blue Encounter 4"
local p1 = "Purple Encounter 1"
local p2 = "Purple Encounter 2"
local p3 = "Purple Encounter 3"
local p4 = "Purple Encounter 4"

local spawnedSetupCard = nil

function createSetupBtn(object)
    spawnedSetupCard = object
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

function sortAndFilterEncounterDecks (...)
    local allObjects = getAllObjects()
    local encounterList = {}
    local filterValues = {...}
    


    
    for _,obj in ipairs(allObjects) do
        if obj.hasTag("EncounterDeck") then 
            for _, lvl in ipairs(filterValues) do  
                if obj.getName() == lvl then
                    encounterList[obj.getName()] = obj.guid
                    break
                end
            end
        end
    end
    return (encounterList)  
end

--[[ function kapitel1 ()
    local encounterList = sortAndFilterEncounterDecks(w2,b1, g1, p1)
    placeEncouterDecks(encounterList)
    
end --]]

function placeEncouterDecks(encounterList)
    --log (encounterList)
    local targetAreas ={
        ["White Encounter 1"] = "e9c965",
        ["Green Encounter 1"] = "c8c49d",
        ["Blue Encounter 1"] = "135e69",
        ["Purple Encounter 1"] = "19b21c",
        ["White Encounter 2"] = "e9c965",
        ["Green Encounter 2"] = "c8c49d",
        ["Blue Encounter 2"] = "135e69",
        ["Purple Encounter 2"] = "19b21c",
        ["White Encounter 3"] = "e9c965",
        ["Green Encounter 3"] = "c8c49d",
        ["Blue Encounter 3"] = "135e69",
        ["Purple Encounter 3"] = "19b21c",
        ["White Encounter 4"] = "e9c965",
        ["Green Encounter 4"] = "c8c49d",
        ["Blue Encounter 4"] = "135e69",
        ["Purple Encounter 4"] = "19b21c",
    }
    local delay = 0
    for k,objGUID in pairs(encounterList) do
        
        --log (obj)
        for name, areaGUID in pairs(targetAreas) do 
            
            if k == name then
                local deck = getObjectFromGUID(objGUID)
                local area = getObjectFromGUID(areaGUID)

                local currentDeck = deck
                local currentPosition = area.getPosition()
                local cloneDeck = currentDeck.clone({
                    position = currentPosition})
                --deck.setPosition(area.getPosition())
                --Wait.time (function() cloneDeck.setPosition(currentPosition) end, 0.3)
                Wait.time(function() cloneDeck.shuffle() end, 0.1, 3)
            end   
        end
    end
end




function setupGame()
    local kapitelList = {
        ["Kapitel 1"] = function ()
            local encounterList = sortAndFilterEncounterDecks(w1,b1, g1, p1)
            placeEncouterDecks(encounterList)
        end,
        ["Kapitel 2"] = function () 
            local encounterList = sortAndFilterEncounterDecks(w1, w2, b1, b2, g1, g2, p1, p2)
            placeEncouterDecks(encounterList)
        end, 
        ["Kapitel 3"] = function ()
            local encounterList = sortAndFilterEncounterDecks(w1, w2, b1, b2, g1, g2, p1, p2)
            placeEncouterDecks(encounterList) 
        end}

    if spawnedSetupCard then
        local kapitelName = spawnedSetupCard.getName()
        for key,kapitel in pairs(kapitelList) do
            
            if key == kapitelName then
                kapitelList[kapitelName]()
                log(key)
            end
            
            
            
        end
        
       --[[  local encounterList = sortAndFilterEncounterDecks(w2,b1, g1, p1)
        placeEncouterDecks(encounterList) --]]
   end
end
    