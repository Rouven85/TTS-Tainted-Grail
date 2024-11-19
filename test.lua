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
                
                for _, id in ipairs(mapCardData[name].mapID) do

                    if id.right ~= nil then
                    rightBtn = [[
                        <Button width = "200" height = "100" position = " 300 -100 -200">Hallo</Button>
                        <Button width = "200" height = "100" position = " 100 -300 -200">Hallo</Button>
                        ]]
                    else      
                        rightBtn = [[ ]]      
                    end

                    --[[ if id.left ~= nil then     
                        
                    else
                        leftBtn = [[<Panel></Panel>]]
                    end --]]
                        
                    if id.down ~= nil then
                        downBtn = [[
                            <Button width = "200" height = "100" position = "500 -100 100">Hallo</Button>
                            <Button width = "200" height = "100" position = "500 -300 800">Hallo</Button>]]
                
                    else
                        downBtn = [[<Panel></Panel>]]
                    end    

                   -- if id.up ~= nil then
                   --     upBtn = 
                 --   else
                   --     upBtn = [[<Panel></Panel>]]
                   -- end
                end 

                local combinedXML = initXML:gsub("</Panel>",rightBtn .. "</Panel>")
                log(combinedXML)
                --v.UI.setXml(combinedXML)
            end
        end  
    end
 end