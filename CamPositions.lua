-- Assuming someone is in the White seat
function Map ()
    Player["White"].lookAt({
        position = {x=0,y=0,z=0},
        pitch    = 70,
        yaw      = 0,
        distance = 25,
})
end

function PlayerBoard ()
    Player["White"].lookAt({
        position = {x=10,y=0,z=-20},
        pitch    = 70,
        yaw      = 0,
        distance = 10,
})
end

function FightArea ()
    Player["White"].lookAt({
        position = {x=-30,y=0,z=-5},
        pitch    = 70,
        yaw      = 0,
        distance = 15,
})
end

function Status ()
    Player["White"].lookAt({
        position = {x=18,y=10,z=35},
        pitch    = 50,
        yaw      = 0,
        distance = 13,
})
end

function Quests ()
    Player["White"].lookAt({
        position = {x=18,y=10,z=10},
        pitch    = 70,
        yaw      = 0,
        distance = 13,
})
end