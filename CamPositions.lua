function camPosition (player, value, id)
    if id == "BtnPlayerBoard" then
        Player["White"].lookAt({
            position = {x=10,y=0,z=-20},
            pitch    = 90,
            yaw      = 0,
            distance = 10,
        })
    elseif id == "BtnMap" then
        Player["White"].lookAt({
            position = {x=0,y=0,z=0},
            pitch    = 70,
            yaw      = 0,
            distance = 20,
        })
    elseif id == "BtnStatus" then
        Player["White"].lookAt({
            position = {x=20,y=15,z=30},
            pitch    = 50,
            yaw      = 0,
            distance = 5,
        })
    elseif id == "BtnKampf" then
        Player["White"].lookAt({
            position = {x=-30,y=0,z=-5},
            pitch    = 70,
            yaw      = 0,
            distance = 20,
        })
    end
end