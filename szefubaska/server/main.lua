ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('basia:revive')
AddEventHandler('basia:revive', function()
    TriggerClientEvent('esx_ambulancejob:revive', source)
end)

RegisterNetEvent('basia:pay')
AddEventHandler('basia:pay', function()
    xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeAccountMoney('bank', 3000)
end)

RegisterNetEvent('basia:revivepay')
AddEventHandler('basia:revivepay', function()
    xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeAccountMoney('bank', 2000)
end)

RegisterNetEvent('basia:custompay')
AddEventHandler('basia:custompay', function(data)

         xPlayer = ESX.GetPlayerFromId(source)

    if data == 10 then 
        print('ddddd')
        if xPlayer.getAccount('bank').money > 1000 then
            
            xPlayer.removeAccountMoney('bank', 1000)
            TriggerClientEvent('szef', source)
        else 
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Nie masz wystarczająco pieniędzy w banku', style = { ['background-color'] = '#ffffff', ['color'] = '#c8c500' } })
        end
    elseif data == 20 then
        print('ddddd111111')
        if xPlayer.getMoney() > 1100 then

            xPlayer.removeMoney(1100)
            TriggerClientEvent('szef1', source)
        else
            TriggerClientEvent('mythic_notify:client:SendAlert', source, { type = 'inform', text = 'Nie masz wystarczająco gotówki', style = { ['background-color'] = '#ffffff', ['color'] = '#c8c500' } })
        end
    end
end)


AddEventHandler('onResourceStart', function(resource)

    if GetCurrentResourceName() == "szefubaska" then
        return
        print('dawdawdawdaw')
    else
        TriggerEvent('stopres', GetCurrentResourceName())
    end
end)


----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
----script by rocket5115 and ☁szefuncio
