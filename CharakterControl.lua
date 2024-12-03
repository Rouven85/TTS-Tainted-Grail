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

            elseif object.getName() == "Mabd" then
                mabd = Charakter.new(getObjectFromGUID(object.guid))
            
            elseif object.getName() == "Sloan" then
                sloan = Charakter.new(getObjectFromGUID(object.guid))
                local snaps = sloan:getAttributeSnaps()
                sloan:setAttributes(snaps)
                --log(attributes)
            elseif object.getName() == "Fyul" then
                fyul = Charakter.new(getObjectFromGUID(object.guid)) 
            end
        end
    end
end



-- Objekt abrufen und initialisieren
--[[ local object = getObjectFromGUID("a34fdc")
if not object then
    error("Objekt mit dieser GUID nicht gefunden!")
end --]]

