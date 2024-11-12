-- AddAndSub Value from energie, Health or furcht --
function energieCounter(player, value, id)
    
    if value == "-1" then
        x = UI.getValue("energieValue") + 1
        UI.setValue("energieValue", x)

        local playerBoard = getObjectFromGUID("ad0ab4")
        local energieMarker = getObjectFromGUID("04e3d0")
        local markerPosition = energieMarker.getPosition()
        local markPos = playerBoard.positionToLocal(markerPosition)
        
        local boardPosition = playerBoard.getPosition()
        local snapPoints = playerBoard.getSnapPoints()
        local point1 = playerBoard.positionToWorld(snapPoints[28].position)
        local point2 = playerBoard.positionToWorld(snapPoints[29].position)
        
        
        offset = point2[3] - point1[3]
        energieMarker.setPosition(markerPosition + vector(0,0,offset))
        log(offset)
    
        
       -- energieMarker.setPosition(offset)

    elseif value == "-2" then
        x = UI.getValue("energieValue") - 1
        UI.setValue("energieValue", x)
    end 
end

function healthCounter(player, value, id)
    if value == "-1" then
        x = UI.getValue("healthValue") + 1
        UI.setValue("healthValue", x)
    elseif value == "-2" then
        x = UI.getValue("healthValue") - 1
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
