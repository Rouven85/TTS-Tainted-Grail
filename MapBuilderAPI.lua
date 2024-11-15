require ("/Libraries/MapCardParams")

function rightMapTile ()

end

function initSpawnedMap(object)
    local obj = object
    local bounds = obj.getBounds()
    --log(bounds.size[1])
    local xValue = bounds.size[1] * -18

    x = tostring(math.floor(xValue+0.5)) 
    local rightBtnPos = x .." 0" .." -100"

    
    log(rightBtnPos)


    if obj.hasTag("MapCard") then
        local name = obj.getName()

        if name == mapCardData[name].name then
            cardParams = mapCardData[name]
            cardParams.guid = obj.getGUID()
            log(cardParams.description)
            --log (mapCardData[name])

            obj.UI.setXmlTable({
                {
                    tag = "Button",
                    attributes = {
                        height = "200",
                        width = "50",
                        position = rightBtnPos,
                        rotation = "0 0 180",
                        
                    },
                    value = "Hallo"
                    },
                }
            )

        end
    end



end