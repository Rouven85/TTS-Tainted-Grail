function createPlayerButton(obj, playerID)
    obj.UI.setXmlTable({
        {
            tag="Button",
            attributes={
                id = playerID,
                height=50,
                width=150,
                position = "0 -150 -10",
                rotation = "0 0 180",
                onClick = "Global/spielerGewaehlt",
                fontSize = "25"
               
            },
            value = "Auswählen", 
        }
    })
end

function startNewGameBtn(obj)
    obj.UI.setXmlTable({
        {
            tag="Button",
            attributes={
                id = "",
                height=100,
                width=500,
                fontSize = "64",
                position = "-50 300 -10",
                rotation = "0 0 180",
                onClick = "Global/spielStarten"
               
            },
            value = "Spiel starten", 
        }
    })
end

