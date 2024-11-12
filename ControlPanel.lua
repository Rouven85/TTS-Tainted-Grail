-- AddAndSub Value from energie, Health or furcht --
function energieCounter(player, value, id)
    local playerBoard = getObjectFromGUID("ad0ab4")
    local energieMarker = getObjectFromGUID("04e3d0")
    local markerPosition = energieMarker.getPosition()
    
    local snapPoints = playerBoard.getSnapPoints()
    local point1 = playerBoard.positionToWorld(snapPoints[28].position)
    local point2 = playerBoard.positionToWorld(snapPoints[29].position)
    
    offset = point2[3] - point1[3] -- Distance between SnapPoints
    
    if value == "-1" then
        x = UI.getValue("energieValue") + 1
        UI.setValue("energieValue", x)

        energieMarker.setPosition(markerPosition + vector(0,0,offset))
    
    elseif value == "-2" then
        x = UI.getValue("energieValue") - 1
        UI.setValue("energieValue", x)

        energieMarker.setPosition(markerPosition - vector(0,0,offset))
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
