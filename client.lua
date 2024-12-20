local serverName = "LA VILLITA 42"  -- Nombre de tu servidor

-- Coordenadas donde se quiere mostrar el texto (puedes modificar estas coordenadas)
local x, y, z = 1000.0, 2000.0, 30.0  -- Cambia estas coordenadas a la ubicación de la casa o lugar

-- Función para dibujar texto en 3D
function DrawText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local pX, pY, pZ = table.unpack(GetEntityCoords(PlayerPedId()))

    SetTextScale(0.35, 0.35)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 255)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(_x, _y)
    local factor = (string.len(text)) / 370
    DrawRect(_x, _y + 0.0125, 0.015 + factor, 0.03, 0, 0, 0, 68)
end

-- Crear un hilo para dibujar el texto en la ubicación especificada
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        -- Dibujar el nombre del servidor sobre la ubicación especificada (casa/edificio)
        DrawText3D(x, y, z, serverName)
    end
end)