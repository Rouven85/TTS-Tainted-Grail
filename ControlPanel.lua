-- AddAndSub Value from energie, Health or furcht --


function energieCounter(player, value, id)
    local sloanBoard = getObjectFromGUID("ad0ab4")
    local energieMarker = getObjectFromGUID("04e3d0")
    local markerPosition = energieMarker.getPosition()
    local snapPoints = sloanBoard.getSnapPoints()
    local point1 = sloanBoard.positionToWorld(snapPoints[28].position)
    local point2 = sloanBoard.positionToWorld(snapPoints[29].position)
    local offset = point2[3] - point1[3] -- Distance between SnapPoints
    local x = tonumber(UI.getValue("energieValue"))

    if value == "-1" then
        
        if x >= 6 and x < 9 then
            x = x + 1
            UI.setAttributes("energieValue", {color = "#2c583b"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(markerPosition - vector(0,0,offset))
        elseif x >= 1 and x <= 6 then
            x = x + 1
            UI.setAttributes("energieValue", {color = "#dfc390"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(markerPosition - vector(0,0,offset))
        elseif x >= 0 and x < 1 then
            x = x + 1
            UI.setAttributes("energieValue", {color = "#700000"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(markerPosition - vector(0,0,offset))
            log(x)
        end
    end
       
   if value == "-2" then

        if x <= 9 and x > 7 then
            x = x - 1
            UI.setAttributes("energieValue", {color = "#2c583b"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(markerPosition + vector(0,0,offset))
            
        elseif x <= 7 and x > 2 then
            x = x - 1
            UI.setAttributes("energieValue", {color = "#dfc390"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(markerPosition + vector(0,0,offset))
            
            
        elseif x <= 2 and x > 0 then
            x = x - 1
            UI.setAttributes("energieValue", {color = "#700000"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(markerPosition + vector(0,0,offset))
            
        end
        
    end 
    
end

function healthCounter(player, value, id)
    if value == "-1" then
        local x = UI.getValue("healthValue") + 1
        UI.setValue("healthValue", x)
    elseif value == "-2" then
        local x = UI.getValue("healthValue") - 1
        UI.setValue("healthValue", x)
    end 
end

function furchtCounter(player, value, id)
    if value == "-1" then
        x = UI.getValue("furchtValue") + 1
        UI.setValue("furchtValue", x)
    elseif value == "-2" then
        x = UI.getValue("furchtValue") - 1
        UI.setValue("furchtValue", x)
    end 
end
