local playerName = GetPlayerName(PlayerId())

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)

        -- Obtener la vida, armadura y dinero del jugador
        local health = GetEntityHealth(PlayerPedId())
        local armor = GetPedArmour(PlayerPedId())
        local money = 1000  -- Aquí puedes conectar con una base de datos para obtener el dinero del jugador

        -- Enviar los datos al HTML
        SendNUIMessage({
            type = "updateHUD",
            playerName = playerName,
            health = health,
            armor = armor,
            money = money
        })
    end
end)