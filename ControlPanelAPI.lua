require ("/Libraries/CharakterParams")

-- AddAndSub Value from energie, Health or furcht --
function energieCounter(player, value, id)
    log(charData.Sloan.energie)
    local energieMarker = getObjectFromGUID("04e3d0")
    local energieMarkerPosition = energieMarker.getPosition()
    local sloanBoard = getObjectFromGUID("ad0ab4")
    local snapPoints = sloanBoard.getSnapPoints()
    local point1 = sloanBoard.positionToWorld(snapPoints[28].position)
    local point2 = sloanBoard.positionToWorld(snapPoints[29].position)
    local offset = point2[3] - point1[3] -- Distance between SnapPoints
    local x = tonumber(UI.getValue("energieValue"))

    if id == "energieMinusBtn" then
        
        if x >= 6 and x < 9 then
            x = x + 1
            UI.setAttributes("energieValue", {color = "#2c583b"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(energieMarkerPosition - vector(0,0,offset))
        elseif x >= 1 and x <= 6 then
            x = x + 1
            UI.setAttributes("energieValue", {color = "#dfc390"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(energieMarkerPosition - vector(0,0,offset))
        elseif x >= 0 and x < 1 then
            x = x + 1
            UI.setAttributes("energieValue", {color = "#700000"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(energieMarkerPosition - vector(0,0,offset))
            log(x)
        end
    end
   
    if id == "energiePlusBtn" then

        if x <= 9 and x > 7 then
            x = x - 1
            UI.setAttributes("energieValue", {color = "#2c583b"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(energieMarkerPosition + vector(0,0,offset))
            
        elseif x <= 7 and x > 2 then
            x = x - 1
            UI.setAttributes("energieValue", {color = "#dfc390"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(energieMarkerPosition + vector(0,0,offset))
            
            
        elseif x <= 2 and x > 0 then
            x = x - 1
            UI.setAttributes("energieValue", {color = "#700000"})
            UI.setValue("energieValue", x)
            energieMarker.setPosition(energieMarkerPosition + vector(0,0,offset))
            
        end
        
    end 
    
end

function healthCounter(player, value, id)
    local sloanBoard = getObjectFromGUID("ad0ab4")
    local healthMarker = getObjectFromGUID("7118ff")
    local healthMarkerPosition = healthMarker.getPosition()
    local snapPoints = sloanBoard.getSnapPoints()
    local point1 = sloanBoard.positionToWorld(snapPoints[28].position)
    local point2 = sloanBoard.positionToWorld(snapPoints[29].position)
    local offset = point2[3] - point1[3] -- Distance between SnapPoints
    local x = tonumber(UI.getValue("healthValue"))

    if id == "gesundheitPlusBtn" then
        
        if x < 8 and x >= 1 then
            x = x + 1
            UI.setAttributes("healthValue", {color = "#dfc390"})
            UI.setValue("healthValue", x)
            healthMarker.setPosition(healthMarkerPosition - vector(0,0,offset))
        elseif x >= 0 and x < 1 then
            x = x + 1
            UI.setAttributes("healthValue", {color = "#700000"})
            UI.setValue("healthValue", x)
            healthMarker.setPosition(healthMarkerPosition - vector(0,0,offset))
            log(x)
        end
    end
    
    if id == "gesundheitMinusBtn" then

        if x <= 9 and x >= 2 then
            x = x - 1
            UI.setAttributes("healthValue", {color = "#dfc390"})
            UI.setValue("healthValue", x)
            healthMarker.setPosition(healthMarkerPosition + vector(0,0,offset)) 
            
        elseif x < 2 and x >=1 then
            
            x = x - 1
            UI.setAttributes("healthValue", {color = "#700000"})
            UI.setValue("healthValue", x)
            healthMarker.setPosition(healthMarkerPosition + vector(0,0,offset))
            
        end
        
    end 
    
end

function furchtCounter(player, value, id)
    local sloanBoard = getObjectFromGUID("ad0ab4")
    local furchtMarker = getObjectFromGUID("5907ad")
    local furchtMarkerPosition = furchtMarker.getPosition()
    local snapPoints = sloanBoard.getSnapPoints()
    local point1 = sloanBoard.positionToWorld(snapPoints[28].position)
    local point2 = sloanBoard.positionToWorld(snapPoints[29].position)
    local offset = point2[3] - point1[3] -- Distance between SnapPoints
    local x = tonumber(UI.getValue("furchtValue"))

    if id == "furchtPlusBtn" then
        log(x)
        if x >= 0 and x <= 4 then
            x = x + 1
            UI.setAttributes("furchtValue", {color = "#dfc390"})
            UI.setValue("furchtValue", x)
            furchtMarker.setPosition(furchtMarkerPosition - vector(0,0,offset))
        elseif x > 4 and x < 7 then
            x = x + 1
            UI.setAttributes("furchtValue", {color = "#700000"})
            UI.setValue("furchtValue", x)
            furchtMarker.setPosition(furchtMarkerPosition - vector(0,0,offset))
            log(x)
        end
    end
    
    if id == "furchtMinusBtn" then
        log(x)
        if x <= 6  and x >= 1 then
            x = x - 1
            UI.setAttributes("furchtValue", {color = "#dfc390"})
            UI.setValue("furchtValue", x)
            furchtMarker.setPosition(furchtMarkerPosition + vector(0,0,offset)) 
            
        elseif x > 6 and x <=8 then
            
            x = x - 1
            UI.setAttributes("furchtValue", {color = "#700000"})
            UI.setValue("furchtValue", x)
            furchtMarker.setPosition(furchtMarkerPosition + vector(0,0,offset))
            
        end
        
    end 
    
end


