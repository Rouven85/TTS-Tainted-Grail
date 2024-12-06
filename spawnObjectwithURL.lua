function spawnObjectFromFile(url ,position, name)
    -- JSON-Datei herunterladen
    WebRequest.get(url, function(response)
        if response.is_error then
            print("Fehler beim Laden des JSON-Files: " .. response.error)
        else
            local objectJSON = response.text
            -- Objekt mit dem geladenen JSON spawnen
            spawnObjectJSON({
                json = objectJSON,
                position = position,
                callback_function = function(obj)
                    obj.setName(name)
                end
            })
        end
    end)
end


