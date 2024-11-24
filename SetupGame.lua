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
                            onClick = "Global/kapitelOne",
                        },
                        value = "SETUP",
                    },
                },
            },
        })
    end
end

function kapitelOne(player, value, id)
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
    local whiteBaseDiplCard = getObjectFromGUID("ceb81f")
    local attackCardPile = getObjectFromGUID("600a12")
    local diplCardPile = getObjectFromGUID("4b5bde")

    local players = Player.getPlayers()
    for _, player in ipairs(players) do
        if player.color == "White" then
            
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



end