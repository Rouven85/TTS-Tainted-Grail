require ("/Libraries/MapCardParams")

function rightMapTile ()

end

function initSpawnedMap(object)
    local obj = object
    local guid = obj.getGUID()
    local name = obj.getName()

    if name == mapCardData[name].name then
        cardParams = mapCardData[name]
        cardParams.guid = guid

        --log (mapCardData[name])
    end
    --log (name)
end