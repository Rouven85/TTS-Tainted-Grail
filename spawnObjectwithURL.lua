function spawnObjectFromFile(url ,position, objectName, callback)
    -- JSON-Datei herunterladen
    WebRequest.get(url, function(response)
        if response.is_error then
            print("Fehler beim Laden des JSON-Files: " .. response.error)
        else
            local objectJSON = response.text
            -- Objekt mit dem geladenen JSON spawnen
            local spawnedObject = spawnObjectJSON({
                json = objectJSON,
                position = position,
                callback_function = function(obj)
                    obj.setName(objectName)
                    if callback then
                        callback(obj)
                    end
                end
            })
        end
    end)
end


