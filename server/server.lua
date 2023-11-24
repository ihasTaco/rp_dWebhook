AddEventHandler('onResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end

    print("------------------------------------------")
    print("-      rp_dWebhook has initialized!      -")
    print("------------------------------------------")
end)

RegisterNetEvent('rp_dWebhook:SendDiscordMessage')
AddEventHandler('rp_dWebhook:SendDiscordMessage', function(data, webhook)
    if webhook == nil or webhook == "" or webhook == "CHANGE ME" then
        print("\x1b[31mCould not send message!")
        print("\x1b[31mWebhook is not set!")
    else
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode(data), { ['Content-Type'] = 'application/json' })
    end
end)