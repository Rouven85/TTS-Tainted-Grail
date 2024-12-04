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
    self.health = charData[self.name].health
    self.furcht = charData[self.name].furcht

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
    local filteredSnaps = {}
    local snapDictonary ={}
    local i = 0
    for _,snap in ipairs(snaps) do
        if snap ~= nil and snap.tags[1] then
            local tagName = snap.tags[1]
            local position = snap.position
            if tagName == "AgrSnap" and self.aggression ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                if i >= self.aggression then
                    i = 0
                end
            elseif tagName == "MutSnap" and self.mut ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                if i >= self.mut then
                    i = 0
                end
            elseif tagName == "PragSnap" and self.pragmatik ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                if i >= self.pragmatik then
                    i = 0
                end
            elseif tagName == "MitSnap" and self.mitgefuehl ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                if i >= self.mitgefuehl then
                    i = 0
                end
            elseif tagName == "VorSnap" and self.vorsicht ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                if i >= self.vorsicht then
                    i = 0
                end
            elseif tagName == "SpiritSnap" and self.spirit ~= 0 then
                i = i + 1
                snapDictonary[tagName.. string.format(" %d", i)] = position
                if i >= self.spirit then
                    i = 0
                end    
            end
        end  
    end
    return snapDictonary
end

function Charakter:setAttributes(snaps)
    local markerBag = getObjectFromGUID("c3ba04")
    local spiritMarkers = 0 
    local mutMarker = 0
    log(snaps)
    for _, attribute in pairs(snaps) do
        local position = self.object.positionToWorld(attribute)
        markerBag.takeObject({position = position})
    end
end
function callCountMethod(player, value, id)
    if id == "energieMinusBtn" or id == "energiePlusBtn" then
        Charakter:energieCount (player, value, id)
    elseif id == "coldMinusBtn" or id == "coldPlusBtn" then
        Charakter:coldCount (player, value, id)
    elseif id == "gesundheitPlusBtn" or id == "gesundheitMinusBtn" then
        Charakter:healthCount (player, value, id)
    elseif id == "furchtPlusBtn" or id == "furchtMinusBtn" then
        Charakter:furchtCount (player, value, id)
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

function Charakter:energieCount (player, value, id)
    local markerBag = getObjectFromGUID("c3ba04")
    

    log("Hallo")
end

function Charakter:coldCount (player, value, id)
    log("Hallo")
end

function Charakter:healthCount (player, value, id)
    log("Hallo")
end

function Charakter:furchtCount (player, value, id)
    log("Hallo")
end

function Charakter:nahrung (player, value, id)
    log("Hallo")
end

function Charakter:reichtum (player, value, id)
    log("Hallo")
end

function Charakter:ansehen (player, value, id)
    log("Hallo")
end

function Charakter:erfahrung (player, value, id)
    log("Hallo")
end

function Charakter:magic (player, value, id)
    log("Hallo")
end





-- Methode der Klasse
function Charakter:print()
    log("Hallo, ich bin " .. self.name)
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
                local snaps = sloan:getAttributeSnaps()
                sloan:setAttributes(snaps)
                sloan:setStartResources ()
                --log(attributes)
            elseif object.getName() == "Fyul" then
                fyul = Charakter.new(getObjectFromGUID(object.guid))
                local snaps = fyul:getAttributeSnaps()
                fyul:setAttributes(snaps)
            end
        end
    end
end


