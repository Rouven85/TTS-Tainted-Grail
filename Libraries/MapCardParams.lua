-- Cardlibrary for GameMap --

  mapCardData = {
      ["Eiswüste"] = {
          Campaign = "Der letzte Ritter",
          name = "Eiswüste",
          guid = nil,
          description = "a",
          

          -- location numbers --
          CardID = "201",
          mapID = ({
            {["right"] = "211"}, 
            {["left"] = nil},
            {["down"]= "213"},
            {["up"] = nil}}),
          
          -- location Symbols --
          dream = true,
          menhir = false,
          frindlyVillage = false,
          enemyVillage = false,
          instantEffect = false,

          -- Resources --
          areaActionCost = 3,
          magic = 1   
      }

--[[       ["Gefährliche Eisklüfte"] = {
        Campaign = "Der letzte Ritter",
        name = "Gefährliche Eisklüfte",
        guid = nil,
        description = ""

        -- location numbers --
        CardID = "202",
        mapIDRight = "201",
        mapIDLeft = "223",
        mapIDDown = "214",
        mapIDUp = nil,
        
        -- location Symbols --
        dream = false,
        menhir = false,
        frindlyVillage = true,
        enemyVillage = false,
        instantEffect = true,

        -- Resources --
        areaActionCost = nil,
        magic = nil   
      } --]]
  }


--[[   function onObjectSpawn(obj)
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

    
  end  --]]
  

--[[  function addMapTile()
    print(cardData[name].magic)
 end   --]]