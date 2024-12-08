require ("/Libraries/CharakterParams")

dagan = nil
mabd = nil
sloan = nil
fyul = nil

local Charakter = {}
Charakter.__index = Charakter

-- Konstruktor
function Charakter.new(object)
    local self = setmetatable({}, Charakter)
    self.object = object
    self.name = object.getName() -- Korrigierter Variablenname
    self.position = object.getPosition()
    self.bound = object.getBounds()
    self.guid = object.getGUID() 
    
    self.energie = charData[self.name].energie
    self.energieBonus = charData[self.name].energieBonus
    self.erschoepft = charData[self.name].erschoepft
    self.health = charData[self.name].health
    self.death = charData[self.name].death
    self.wahnsinn = charData[self.name].wahnsinn
    self.wahnsinnMax = charData[self.name].wahnsinnMax
    self.furcht = charData[self.name].furcht
    self.cold = charData[self.name].cold

    self.aggression = charData[self.name].aggression
    self.mut = charData[self.name].mut
    self.pragmatik = charData[self.name].pragmatik
    self.mitgefuehl = charData[self.name].mitgefuehl
    self.vorsicht = charData[self.name].vorsicht
    self.spirit = charData[self.name].spirit

    self.food = charData[self.name].food
    self.reichtum = charData[self.name].reichtum
    self.ansehen = charData[self.name].ansehen
    self.ep = charData[self.name].ep
    self.magic = charData[self.name].magic

    return self
end

function Charakter:setStartResources ()
    UI.setValue("nahrungValue", tostring(self.food))
    UI.setValue("reichtumValue", tostring(self.reichtum))
    UI.setValue("ansehenValue", tostring(self.ansehen))
    UI.setValue("erfahrungValue", tostring(self.ep))
    UI.setValue("magieValue", tostring(self.magic))

    
end

function Charakter:getAttributeSnaps()
    local snaps = self.object.getSnapPoints()
    local snapDictonary ={}
    local i = 0
    local name = {}
    for k,snap in ipairs(snaps) do
        if snap ~= nil and snap.tags[1] then
            local tagName = snap.tags[1]
            local position = snap.position
            if tagName == "AgrSnap" and self.aggression ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Aggression"
                if i >= self.aggression then
                    i = 0
                end
            elseif tagName == "MutSnap" and self.mut ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Mut"
                if i >= self.mut then
                    i = 0
                end
            elseif tagName == "PragSnap" and self.pragmatik ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Pragmatik"
                if i >= self.pragmatik then
                    i = 0
                end
            elseif tagName == "MitSnap" and self.mitgefuehl ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Mitgefühl"
                if i >= self.mitgefuehl then
                    i = 0
                end
            elseif tagName == "VorSnap" and self.vorsicht ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Vorsicht"
                if i >= self.vorsicht then
                    i = 0
                end
            elseif tagName == "SpiritSnap" and self.spirit ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Spiritualität"
                if i >= self.spirit then
                    i = 0
                end
            elseif tagName == "FurchtSnap" then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Furcht"
                if i >= 1 then
                    i = 0
                    name[tagName] = "Furcht"
                end
            elseif tagName == "EnergySnap" then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Energie"
                if i >= 1 then
                    i = 0   
                end
            elseif tagName == "HealthSnap" then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                name[tagName.. string.format(" %d", i)] = "Gesundheit"
                if i >= 1 then
                    i = 0   
                end
            end
        end  
    end
   
    return snapDictonary, name
end

function Charakter:setAttributes(snaps, name)
    local url = "https://steamusercontent-a.akamaihd.net/ugc/54702617428416061/F24A4BE24C0FDC9234884DCF180170EBA9693F8B/"
    local urlHealthMarker = "https://steamusercontent-a.akamaihd.net/ugc/54702617431588104/240759A7D0086AC8CC314B969FE1469ED4ADAC2B/"
    for key1, posVector in pairs(snaps) do
        if name ~= nil and name[key1] ~= nil and name[key1] ~= "Gesundheit" then
            local position = self.object.positionToWorld(posVector)
            local objectName = name[key1]
            spawnObjectFromFile(url ,position, objectName)
        elseif name ~= nil and name[key1] == "Gesundheit" then
            local position = self.object.positionToWorld(posVector)
            local objectName = name[key1]
            spawnObjectFromFile(urlHealthMarker ,position, objectName)
        end
    end
end

function Charakter:setColdMarker()
    local url = "https://steamusercontent-a.akamaihd.net/ugc/54702617428416061/F24A4BE24C0FDC9234884DCF180170EBA9693F8B/"
    local position = self.object.positionToWorld(posVector)
    --snaps, name = self.getAttributeSnaps()
    --log(snaps)
    --log(name)
   --[[  for key1, posVector in pairs(snaps) do
        if name ~= nil and name[key1] ~= nil then
            
        end
    end --]]
    --spawnObjectFromFile(url ,position, objectName)
end

function callCountMethod(player, value, id)
    local distance = distance
    local objects = getAllObjects()
    for _,object in ipairs(objects) do
        if id == "energieMinusBtn" or id == "energiePlusBtn" then
            if object.hasTag("PlayerBoard") then
                if object.getName() == "Sloan" then
                    sloan = Charakter.new(getObjectFromGUID(object.guid))
                    sloan:energieCount (player, value, id)
                end
            end    
        elseif id == "coldMinusBtn" or id == "coldPlusBtn" then
            if object.hasTag("PlayerBoard") then
                if object.getName() == "Sloan" then
                    sloan = Charakter.new(getObjectFromGUID(object.guid))
                    sloan:coldCount (player, value, id)
                end
            end
        elseif id == "gesundheitPlusBtn" or id == "gesundheitMinusBtn" then
            if object.hasTag("PlayerBoard") then
                if object.getName() == "Sloan" then
                    sloan = Charakter.new(getObjectFromGUID(object.guid))
                    sloan:healthCount (player, value, id)
                end
            end
        elseif id == "furchtPlusBtn" or id == "furchtMinusBtn" then
            if object.hasTag("PlayerBoard") then
                if object.getName() == "Sloan" then
                    sloan = Charakter.new(getObjectFromGUID(object.guid))
                    sloan:furchtCount (player, value, id)
                end
            end 
        elseif id == "sloanNahrung" then
            Charakter:nahrung (player, value, id)
        elseif id == "sloanReichtum" then
            Charakter:reichtum (player, value, id)
        elseif id == "sloanAnsehen" then
            Charakter:ansehen (player, value, id)
        elseif id == "sloanErfahrung" then
            Charakter:erfahrung (player, value, id)
        elseif id == "sloanMagie" then
            Charakter:magic (player, value, id)
        end 
    end
end

function Charakter:energieCount (player, value, id)
    local x = tonumber(UI.getValue("energieValue"))
    local allObjects = getAllObjects()
    local charakterBoard = self.object
    local boardBounds = charakterBoard.getBounds()
    for _, obj in ipairs(allObjects) do
        local objPos = obj.getPosition()
        if math.abs(objPos.x - charakterBoard.getPosition().x) < boardBounds.size.x / 2 and
           math.abs(objPos.z - charakterBoard.getPosition().z) < boardBounds.size.z / 2 then
            if obj.getName() == "Energie" then
                local markerPos = obj.getPosition()
                local markerBound = obj.getBounds()
                local markerZValue = markerBound.size.z 
                if id == "energieMinusBtn" then
                    if x >= self.energie and x < (self.energie + self.energieBonus) then
                        x = x + 1
                        UI.setAttributes("energieValue", {color = "#2c583b"})
                        UI.setValue("energieValue", x)
                        obj.setPosition(markerPos  + Vector(0,0,markerBound.size.z) + Vector(0, 0, 0.1615))
                    elseif x >= self.erschoepft and x <= self.energie then
                        x = x + 1
                        UI.setAttributes("energieValue", {color = "#1a0d00"})
                        UI.setValue("energieValue", x)
                        obj.setPosition(markerPos  + Vector(0,0,markerBound.size.z) + Vector(0, 0, 0.1615))
                    elseif x >= 0 and x < self.erschoepft then
                        x = x + 1
                        UI.setAttributes("energieValue", {color = "#700000"})
                        UI.setValue("energieValue", x)
                        obj.setPosition(markerPos  + Vector(0,0,markerBound.size.z) + Vector(0, 0, 0.1615))
                    end
                end
                if id == "energiePlusBtn" then
                    if x <= (self.energie + self.energieBonus) and x > self.energie +1 then
                        x = x - 1
                        UI.setAttributes("energieValue", {color = "#2c583b"})
                        UI.setValue("energieValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z) - Vector(0, 0, 0.1615)) 
                    elseif x <= (self.energie + 1) and x > (self.erschoepft + 1) then
                        x = x - 1
                        UI.setAttributes("energieValue", {color = "#1a0d00"})
                        UI.setValue("energieValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z) - Vector(0, 0, 0.1615))  
                    elseif x <= (self.erschoepft + 1) and x > 0 then
                        x = x - 1
                        UI.setAttributes("energieValue", {color = "#700000"})
                        UI.setValue("energieValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z) - Vector(0, 0, 0.1615))
                    end
                end 
            end
        end
    end
end

function Charakter:coldCount (player, value, id)
    local url = "https://steamusercontent-a.akamaihd.net/ugc/54702617428416061/F24A4BE24C0FDC9234884DCF180170EBA9693F8B/"
    local x = tonumber(UI.getValue("coldValue"))
    local y = tonumber(UI.getValue("healthValue"))
    local allObjects = getAllObjects()
    local charakterBoard = self.object
    local boardBounds = charakterBoard.getBounds()
    local snaps, name = self:getAttributeSnaps()
    local healthMarkerPosition = vector(0, 0, 0)
    local healthMarker = nil
    local markerBound = nil
    local markerZValue = nil 
    for _, obj in ipairs(allObjects) do
        if obj.getName() == "Gesundheit" and obj ~= nil then
            healthMarker = obj
            healthMarkerPosition = healthMarker.getPosition()
            markerBound = healthMarker.getBounds()
            markerZValue = markerBound.size.z 
        end
    end
    if id == "coldPlusBtn" and x == 0 then
        x = x + 1
        y = y - 1
        for key1, posVector in pairs(snaps) do
            if name ~= nil and name[key1] ~= nil then
                if key1 == "HealthSnap 1" then
                    local position = self.object.positionToWorld(posVector)
                    local objectName = "Unterkühlung"
                    if healthMarkerPosition.x == position.x then
                        healthMarker.setPosition(healthMarkerPosition - Vector(0,0,markerZValue) - Vector(0, 0, 0.05))
                        spawnObjectFromFile(url ,position, objectName)
                    end
                end
            end
        end
        UI.setValue("healthValue", y)
        UI.setValue("coldValue", x) 
    elseif id == "coldPlusBtn" and x > 0 and x < self.health then
        x = x + 1
        y = y - 1
        healthMarkerPosition = healthMarker.getPosition()
        for _, coldMarker in ipairs(allObjects) do
            if coldMarker.getName() == "Unterkühlung" then
                local coldMarkerPos = coldMarker.getPosition()
                if y + x == self.cold then 
                    coldMarker.setPosition(coldMarker.getPosition() - Vector(0,0,markerZValue) - Vector(0, 0, 0.05))
                    healthMarker.setPosition(healthMarkerPosition - Vector(0,0,markerZValue) - Vector(0, 0, 0.05))
                end

            end
        end
        UI.setValue("healthValue", y)
        UI.setValue("coldValue", x) 
    end
end

function Charakter:healthCount (player, value, id)
    local x = tonumber(UI.getValue("healthValue"))
    local allObjects = getAllObjects()
    local charakterBoard = self.object
    local boardBounds = charakterBoard.getBounds()
    for _, obj in ipairs(allObjects) do
        local objPos = obj.getPosition()
        if math.abs(objPos.x - charakterBoard.getPosition().x) < boardBounds.size.x / 2 and
           math.abs(objPos.z - charakterBoard.getPosition().z) < boardBounds.size.z / 2 then
            if obj.getName() == "Gesundheit" then
                local markerPos = obj.getPosition()
                local markerBound = obj.getBounds()
                local markerZValue = markerBound.size.z 
                if id == "gesundheitPlusBtn" then
                    if x >= self.death and x < (self.health) then
                        x = x + 1
                        UI.setAttributes("healthValue", {color = "#1a0d00"})
                        UI.setValue("healthValue", x)
                        obj.setPosition(markerPos  + Vector(0,0,markerZValue) + Vector(0, 0, 0.05))
                    end
                end
                if id == "gesundheitMinusBtn" then
                    if x <= self.health and x > self.death +1 then
                        x = x - 1
                        UI.setAttributes("healthValue", {color = "#1a0d00"})
                        UI.setValue("healthValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z)  - Vector(0, 0, 0.05)) 
                    elseif x <= self.death + 1 and x > 0 then
                        x = x - 1
                        UI.setAttributes("healthValue", {color = "#700000"})
                        UI.setValue("healthValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z) - Vector(0, 0, 0.05))  
                    end
                end 
            end
        end
    end
end

function Charakter:furchtCount (player, value, id)
    local x = tonumber(UI.getValue("furchtValue"))
    local allObjects = getAllObjects()
    local charakterBoard = self.object
    local boardBounds = charakterBoard.getBounds()
    for _, obj in ipairs(allObjects) do
        local objPos = obj.getPosition()
        if math.abs(objPos.x - charakterBoard.getPosition().x) < boardBounds.size.x / 2 and
           math.abs(objPos.z - charakterBoard.getPosition().z) < boardBounds.size.z / 2 then
            if obj.getName() == "Furcht" then
                log(obj.getName())
                local markerPos = obj.getPosition()
                local markerBound = obj.getBounds()
                local markerZValue = markerBound.size.z 
                if id == "furchtPlusBtn" then
                    if x >= self.furcht and x < (self.wahnsinn - 1) then
                        x = x + 1
                        UI.setAttributes("furchtValue", {color = "#1a0d00"})
                        UI.setValue("furchtValue", x)
                        obj.setPosition(markerPos  + Vector(0,0,markerZValue) + Vector(0, 0, 0.1615))
                    elseif x >= self.wahnsinn - 1 and x < (self.wahnsinn + 1) then
                        x = x + 1
                        UI.setAttributes("furchtValue", {color = "#700000"})
                        UI.setValue("furchtValue", x)
                        obj.setPosition(markerPos  + Vector(0,0,markerZValue) + Vector(0, 0, 0.1615))
                    end
                end
                if id == "furchtMinusBtn" then
                    if x <= self.wahnsinn + 1 and x > self.wahnsinn then
                        x = x - 1
                        UI.setAttributes("furchtValue", {color = "#700000"})
                        UI.setValue("furchtValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z) - Vector(0, 0, 0.1615)) 
                    elseif x <= self.wahnsinn and x > 0 then
                        x = x - 1
                        UI.setAttributes("furchtValue", {color = "#1a0d00"})
                        UI.setValue("furchtValue", x)
                        obj.setPosition(markerPos  - Vector(0,0,markerBound.size.z) - Vector(0, 0, 0.1615))  
                    end
                end 
            end
        end
    end
end

function Charakter:nahrung (player, value, id)
    local x = tonumber(UI.getValue("nahrungValue"))
        if value == "-1" then
            x = x + 1
            --xmlTag = string.format([[<Text>%d</Text>"]],x)
            UI.setValue("nahrungValue", x)
        elseif value == "-2" and x > 0 then
            x = x - 1
            UI.setValue("nahrungValue", x)
        end
end

function Charakter:reichtum (player, value, id)
    local x = tonumber(UI.getValue("reichtumValue"))
    if value == "-1" then
        x = x + 1
        UI.setValue("reichtumValue", x)
    elseif value == "-2" and x > 0 then
        x = x - 1
        UI.setValue("reichtumValue", x)
    end
end

function Charakter:ansehen (player, value, id)
    local x = tonumber(UI.getValue("ansehenValue"))
    if value == "-1" then
        x = x + 1
        UI.setValue("ansehenValue", x)
    elseif value == "-2" and x > 0 then
        x = x - 1
        UI.setValue("ansehenValue", x)
    end
end

function Charakter:erfahrung (player, value, id)
    local x = tonumber(UI.getValue("erfahrungValue"))
        if value == "-1" then
            x = x + 1
            UI.setValue("erfahrungValue", x)
        elseif value == "-2" and x > 0 then
            x = x - 1
            UI.setValue("erfahrungValue", x)
        end
end

function Charakter:magic (player, value, id)
    local x = tonumber(UI.getValue("magieValue"))
    if value == "-1" then
        x = x + 1
        UI.setValue("magieValue", x)
    elseif value == "-2" and x > 0 then
        x = x - 1
        UI.setValue("magieValue", x)
    end
end


function getObjects()
    local objects = getAllObjects()
    for _,object in ipairs(objects) do
        if object.hasTag("PlayerBoard") then
            
            if object.getName() == "Dagan" then
                dagan = Charakter.new(getObjectFromGUID(object.guid))
                local snaps = dagan:getAttributeSnaps()
                dagan:setAttributes(snaps)
            elseif object.getName() == "Mabd" then
                mabd = Charakter.new(getObjectFromGUID(object.guid))
                local snaps = mabd:getAttributeSnaps()
                mabd:setAttributes(snaps)
            
            elseif object.getName() == "Sloan" then
                sloan = Charakter.new(getObjectFromGUID(object.guid))
                local snaps, name = sloan:getAttributeSnaps()
                sloan:setAttributes(snaps, name)
                sloan:setStartResources ()
                --log(attributes)
                return sloan
            elseif object.getName() == "Fyul" then
                fyul = Charakter.new(getObjectFromGUID(object.guid))
                local snaps = fyul:getAttributeSnaps()
                fyul:setAttributes(snaps)
            end
        end
    end
end