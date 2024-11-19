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
            log(bounds)
            if mapCardData[name] ~= nil then
                local xValue = ((bounds.center[1] *(100)/2)+25) 
                local xr = tostring(xValue) 
                
                local xValue = ((bounds.center[1] *(100)/2)) 
                local xl = tostring(xValue) 
                
                local yValue = ((bounds.center[2] *(100))+20)
                local yd = tostring(yValue+0.5)
                
                local yValue = ((bounds.center[2] *(100)))
                local yu = tostring(yValue+0.5)
                
                local initXML = [[<Panel></Panel>]]
                v.UI.setXml(initXML)
                local buttonsXML = ""
                for _, id in ipairs(mapCardData[name].mapID) do   
                    if id.right ~= nil then
                        buttonsXML = buttonsXML .. string.format([[<Button width = "50" height = "150" position = "%s 0 -100" rotation = "0 0 180">Hallo</Button>]],xr)
                    else
                        buttonsXML = buttonsXML ..[[]]             
                    end
                    
                    if id.down ~= nil then
                        buttonsXML = buttonsXML .. string.format([[<Button width = "150" height = "50" position = "0 %s -100" rotation = "0 0 180">Hallo</Button>]],yd)
                    else
                        buttonsXML = buttonsXML ..[[]] 
                    end

                    if id.up ~= nil then
                        buttonsXML = buttonsXML .. string.format([[<Button width = "200" height = "100" position = " 0 %s -100" rotation = "0 0 180">Hallo</Button>]],yu)
                    else
                        buttonsXML = buttonsXML ..[[]]                
                    end
                    
                    if id.left ~= nil then
                        buttonsXML = buttonsXML .. string.format([[<Button width = "50" height = "150" position = "%s 0 -100" rotation = "0 0 180">Hallo</Button>]],xl)
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
 
                    