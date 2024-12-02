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

function Charakter:setAttributes()
    local markerBag = getObjectFromGUID("c3ba04")
    local snaps = self.object.getSnapPoints()
    local filteredSnaps = {}
    local i = 0
    for  _,snap in ipairs(snaps) do
        
        if snap.tags[1] == "AgrSnap" then
            if self.aggression ~= nil then
                local marker = markerBag.takeObject({
                    position = self.object.positionToWorld(snap.position),
                    smooth = false,        -- Verhindert das Herunterfallen
                    snap_to = true         -- Aktiviert das Snapping
                })
            end
        end
        if snap.tags[1] == "MutSnap" then
            if self.mut ~= nil then
                local marker = markerBag.takeObject({
                    position = self.object.positionToWorld(snap.position),
                    smooth = false,        -- Verhindert das Herunterfallen
                    snap_to = true         -- Aktiviert das Snapping
                })
            end
        end
        if snap.tags[1] == "PragSnap" then
            if self.pragmatik ~= nil then
                local marker = markerBag.takeObject({
                    position = self.object.positionToWorld(snap.position),
                    smooth = false,        -- Verhindert das Herunterfallen
                    snap_to = true         -- Aktiviert das Snapping
                })
            end
        end
        if snap.tags[1] == "MitSnap" then
            if self.mitgefuehl ~= nil then
                local marker = markerBag.takeObject({
                    position = self.object.positionToWorld(snap.position),
                    smooth = false,        -- Verhindert das Herunterfallen
                    snap_to = true         -- Aktiviert das Snapping
                })
            end
        end
        if snap.tags[1] == "VorSnap" then
            if self.vorsicht ~= nil then
                local marker = markerBag.takeObject({
                    position = self.object.positionToWorld(snap.position),
                    smooth = false,        -- Verhindert das Herunterfallen
                    snap_to = true         -- Aktiviert das Snapping
                })
            end
        end
        if snap.tags[1] == "SpiritSnap" then
            if self.spirit ~= nil then
                local marker = markerBag.takeObject({
                    position = self.object.positionToWorld(snap.position),
                    smooth = false,        -- Verhindert das Herunterfallen
                    snap_to = true         -- Aktiviert das Snapping
                })
            end
        end
    end
    --local yOffset = filteredSnaps[2].position.z - filteredSnaps[1].position.z
    
    --markerBag.takeObject(self.position + vector(0, 2, 0))
    

   
    
    --local 
    --localPosition = object.positionToLocal(worldPosition)
    --local localPosition = self.positionToWorld(vector(self.bound.size.x, 0, 3))
    --pos = self.positionToWorld(self.bound.center)
    --log(self.positionToWorld(self.bound.size))
    --log(self.bound)
 --[[    local agroMarker = markerBag.takeObject({
        callback_function = function (spawnedObject)
            local agroMarker = markerBag.takeObject({
                position = self.position + vector(-3.5, 0.5, 0.5),
                smooth = false,        -- Verhindert das Herunterfallen
                snap_to = true         -- Aktiviert das Snapping
            })
            log(nemarkerPosition)
        end
    }) --]]
    --self.position 
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
                sloan:setAttributes()
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

