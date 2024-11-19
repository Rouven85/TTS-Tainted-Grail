require ("/Libraries/MapCardParams")

function rightMapTile ()

end

function initSpawnedMap(object)
    local obj = object

    if obj.hasTag("MapCard") then
        local name = obj.getName()
        initLoadedMap()

        if name == mapCardData[name].name then
            local cardParams = mapCardData[name]
            cardParams.guid = obj.getGUID()
            log(cardParams.description)
           
        end
    end
end

function initLoadedMap()
    local obj = getAllObjects()
    for _,v in ipairs(obj) do
        
        if v.hasTag("MapCard") then
            local name = v.getName()
            local bounds = v.getBounds()
            
            if mapCardData[name] ~= nil then
                local xValue = (bounds.size[3] / 2 *(-100)+75) 
                local x = tostring(math.floor(xValue+0.5)) 
                local rightBtnPos = x .." 0" .." -100"

                local yValue = (bounds.size[1] / 2 *(100) - 100)
                local y = tostring(math.floor(yValue+0.5)) 
                local downBtnPos = "0 " .. y .. " -100"
                
                local initXML = [[<Panel></Panel>]]
                v.UI.setXml(initXML)
                local buttonsXML = ""
                for _, id in ipairs(mapCardData[name].mapID) do   
                    if id.right ~= nil then
                        buttonsXML = buttonsXML .. string.format([[<Button width = "50" height = "150" position = "%s 0 -100">Hallo</Button>]],x)
                    else
                        buttonsXML = buttonsXML ..[[]]             
                    end
                    
                    if id.down ~= nil then
                        buttonsXML = buttonsXML .. string.format([[<Button width = "150" height = "50" position = "0 %s -100">Hallo</Button>]],y)
                    else
                        buttonsXML = buttonsXML ..[[]] 
                    end

                    if id.up ~= nil then
                        buttonsXML = buttonsXML .. [[<Button width = "200" height = "100" position = " 600 -100 -200">Hallo</Button>]] 
                    else
                        buttonsXML = buttonsXML ..[[]]                
                    end
                    
                    if id.left ~= nil then
                        buttonsXML = buttonsXML .. [[<Button width = "200" height = "100" position = " 600 -100 -200">Hallo</Button>]]
                    else
                        buttonsXML = buttonsXML ..[[]]
                    end   
                end 
                local combinedXML = initXML:gsub("</Panel>",buttonsXML .."</Panel>")
                v.UI.setXml(combinedXML)    
            end
        end    
    end
 end
 
                    