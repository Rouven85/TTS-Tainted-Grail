function onLoad()
    cardData = {
        ["Eiswüste"] = {
            Campaign = "Der letzte Ritter",
            
            CardID = "201",
            mapIDRight = "211",
            mapIDLeft = nil,
            mapIDDown = "213",
            mapIDUp = nil,
            
            dreamSymbol = true,

            name = "Eiswüste",

            areaActionCost = 3,
            magic = 1,
            
            guid = nil,
            description = ""
        },
    }
end

function onObjectSpawn(obj)
    --Cards get their guids when they spawn, if all your cards start in a deck all you need is this
    --since taking a card out of a deck makes it spawn and would trigger this function that will update its guid
    if obj.hasTag("MapCard") then -- if the spawned object is a card
      local name = obj.getName()
      if cardData[name] ~= nil then --and it's name has a value asscoiated with it in the carddata table
        local cardTbl = cardData[name]
        cardTbl.name = name --store its name
        cardTbl.guid = obj.getGUID() --and its new guid
        obj.setDescription(cardTbl.description) --and set its description to what it should be

      end 
    end

    
  end
  

 function addMapTile()
    print(cardData[name].magic)
 end