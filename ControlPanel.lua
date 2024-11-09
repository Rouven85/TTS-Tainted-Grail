function energieCounter (player, value, id)
    print(value)
    local value = value
    
    if value == "-1" then
        x = UI.getValue("energieValue") + 1
        UI.setValue("energieValue", x)
    elseif value == "-2" then
        x = UI.getValue("energieValue") - 1
        UI.setValue("energieValue", x)
    end 
end

function healthCounter(player, value, id)
    print(value)
end

function furchtCounter(player, value, id)

end
