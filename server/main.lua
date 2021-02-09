ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand('pepperspray', function(source, args, raw)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer and xPlayer.job.name == 'police' then
        local src = source
        TriggerClientEvent('pepperspray:Togglepepperspray', src)
    else
        xPlayer.showNotification(_U('not_a_cop'))
    end
end)

RegisterCommand('ps', function(source, args, raw)
    local xPlayer = ESX.GetPlayerFromId(source)

    if xPlayer and xPlayer.job.name == 'police' then
        local src = source
        TriggerClientEvent('pepperspray:Togglepepperspray', src)
    else
        xPlayer.showNotification(_U('not_a_cop'))
    end
end)

RegisterServerEvent('pepperspray:SyncStartParticles')
AddEventHandler('pepperspray:SyncStartParticles', function(peppersprayid)
    TriggerClientEvent('pepperspray:StartParticles', -1, peppersprayid)
end)

RegisterServerEvent('pepperspray:SyncStopParticles')
AddEventHandler('pepperspray:SyncStopParticles', function(peppersprayid)
    TriggerClientEvent('pepperspray:StopParticles', -1, peppersprayid)
end)

RegisterServerEvent('pepperspray:TriggerPlayerEffect')
AddEventHandler('pepperspray:TriggerPlayerEffect', function(playerid)
	TriggerClientEvent('pepperspray:PlayerEffect', playerid)
end)