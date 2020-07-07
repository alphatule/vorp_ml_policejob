RegisterServerEvent("vorp_ml_policejob:checkjob")
AddEventHandler("vorp_ml_policejob:checkjob", function()
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        print(user.job)
        if user.job == 'police' then
            TriggerClientEvent('vorp_ml_policejob:open', _source)
        else
            -- print('not authorized')
            TriggerClientEvent("vorp:Tip", _source, _U('no_autorizado'), 4000) -- from server side
        end
    end)
end)

RegisterServerEvent("vorp_ml_policejob:checkjob2")
AddEventHandler("vorp_ml_policejob:checkjob2", function()
    local _source = source
    TriggerEvent("vorp:getCharacter", _source, function(user)
        print(user.job)
        if user.job == 'police' then
            TriggerClientEvent('vorp_ml_policejob:open2', _source)
        else
            -- print('not authorized')
            TriggerClientEvent("vorp:Tip", _source, _U('no_autorizado'), 4000) -- from server side
        end
    end)
end)

--cuff

RegisterServerEvent('vorp_ml_policejob:cuffplayer')
AddEventHandler('vorp_ml_policejob:cuffplayer', function(target)
-- TriggerEvent('vorp:getPlayerFromId', target, function()
        TriggerClientEvent('vorp_ml_policejob:cuff', target)
        -- print('servercuff')
        TriggerClientEvent("vorp:Tip", _source, _U('poner_esposas'), 4000) -- from server side
end)

RegisterServerEvent('vorp_ml_policejob:uncuffplayer')
AddEventHandler('vorp_ml_policejob:uncuffplayer', function(target)
-- TriggerEvent('vorp:getPlayerFromId', target, function()
        TriggerClientEvent('vorp_ml_policejob:uncuff', target)
        -- print('serveruncuff')
        TriggerClientEvent("vorp:Tip", _source, _U('quitar_esposas'), 4000) -- from server side
end)

--lasso


RegisterServerEvent('vorp_ml_policejob:lassoplayer')
AddEventHandler('vorp_ml_policejob:lassoplayer', function(target)
-- TriggerEvent('vorp:getPlayerFromId', target, function()
        --TriggerClientEvent('vorp_ml_policejob:lasso', target)
		TriggerClientEvent('vorp_ml_policejob:hogtie', target)
        -- print('serverlasso')
        TriggerClientEvent("vorp:Tip", _source, _U('atado'), 4000) -- from server side
end)