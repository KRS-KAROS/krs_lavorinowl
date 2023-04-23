-- ##    ## ########   ######     ##          ###    ##     ##  #######  ########  #### ##    ##  #######  ##      ## ##       
-- ##   ##  ##     ## ##    ##    ##         ## ##   ##     ## ##     ## ##     ##  ##  ###   ## ##     ## ##  ##  ## ##       
-- ##  ##   ##     ## ##          ##        ##   ##  ##     ## ##     ## ##     ##  ##  ####  ## ##     ## ##  ##  ## ##       
-- #####    ########   ######     ##       ##     ## ##     ## ##     ## ########   ##  ## ## ## ##     ## ##  ##  ## ##       
-- ##  ##   ##   ##         ##    ##       #########  ##   ##  ##     ## ##   ##    ##  ##  #### ##     ## ##  ##  ## ##       
-- ##   ##  ##    ##  ##    ##    ##       ##     ##   ## ##   ##     ## ##    ##   ##  ##   ### ##     ## ##  ##  ## ##       
-- ##    ## ##     ##  ######     ######## ##     ##    ###     #######  ##     ## #### ##    ##  #######   ###  ###  ########


ESX = exports.es_extended:getSharedObject()

-- INIZIO RACCOLTA ARANCE --
RegisterServerEvent('krs_arance')
	AddEventHandler('krs_arance', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('arance').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You can\'t pick oranges from here!!'})
	else
		xPlayer.addInventoryItem('arance', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You picked oranges from the tree!!'})
		
	end
end)

-- INIZIO PROCESSO ARANCE --
RegisterServerEvent('krs_processoagricoltore')
AddEventHandler('krs_processoagricoltore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('arance').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t own the oranges!!'})
	else
		xPlayer.addInventoryItem('succodifrutta', 1)
		xPlayer.removeInventoryItem('arance', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You worked oranges, made good juice!!'})
	end
end)


-- INIZIO RACCOLTA PETROLIO --
RegisterServerEvent('krs_petrolio')
	AddEventHandler('krs_petrolio', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('petrolio').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You can\'t get oil from here!!'})
	else
		xPlayer.addInventoryItem('petrolio', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You picked up the oil!!'})
	end
end)

-- INIZIO PROCESSO PETROLIO --
RegisterServerEvent('krs_processopetroliere')
AddEventHandler('krs_processopetroliere', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('petrolio').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t own the oil!!'})
	else
		xPlayer.addInventoryItem('taniche_benzina', 1)
		xPlayer.removeInventoryItem('petrolio', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You worked the oil!!'})
	end
end)


-- BOSCAIOLO -- 
RegisterServerEvent('krs_boscaiolo')
	AddEventHandler('krs_boscaiolo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('troncodilegno').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'you are too far from the trunk!!'})
	else
		xPlayer.addInventoryItem('troncodilegno', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You cut the trunk!!'})
	end
end)

RegisterServerEvent('krs_processoboscaiolo')
AddEventHandler('krs_processoboscaiolo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('troncodilegno').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t own the wooden logs!!'})
	else
		xPlayer.addInventoryItem('tavoledilegno', 1)
		xPlayer.removeInventoryItem('troncodilegno', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You worked the trunk!!'})
	end
end)
-- FINE BOSCAIOLO -- 

-- MINATORE -- 
RegisterServerEvent('krs_minatore')
	AddEventHandler('krs_minatore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('roccia').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You cannot pickaxe in this area!!'})
	else
		xPlayer.addInventoryItem('roccia', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You have taken the rocks from the quarry!!'})
	end
end)

RegisterServerEvent('krs_processominatore')
AddEventHandler('krs_processominatore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('roccia').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t have the rocks to wash them!!'})
	else
		xPlayer.addInventoryItem('minerale', 1)
		xPlayer.removeInventoryItem('roccia', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You have washed the rocks they have melted and become minerals!!'})
	end
end)
-- FINE MINATORE -- 

-- INIZIO MACELLAIO -- 
RegisterServerEvent('krs_prendipollo')
	AddEventHandler('krs_prendipollo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('pollo').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You can\'t pick chicken!!'})
	else
		xPlayer.addInventoryItem('pollo', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You picked up the chicken!!'})
	end
end)

RegisterServerEvent('krs_puliscipollo')
	AddEventHandler('krs_puliscipollo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('pollo').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t own the chicken!!'})
	else
		xPlayer.removeInventoryItem('pollo', 1)
		xPlayer.addInventoryItem('pollo_pulito', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You washed the chicken!!'})
	end
end)

RegisterServerEvent('krs_pollotagliato')
	AddEventHandler('krs_pollotagliato', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('pollo_pulito').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t own chicken legs!!'})
	else
		xPlayer.removeInventoryItem('pollo_pulito', 1)
		xPlayer.addInventoryItem('cosce_pollo', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You cut the chicken!!'})

	end
end)

RegisterServerEvent('krs_processopollo')
AddEventHandler('krs_processopollo', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local karos = xPlayer.getInventoryItem('cosce_pollo').count
    if karos >= 3 then
        xPlayer.removeInventoryItem('cosce_pollo', 3)
        xPlayer.addInventoryItem('pollo_processato', 1)
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You packed the chicken!!'})
    else
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t have enough chicken legs!!'})
    end
end)

-- FINE MACELLAIO -- 

-- PESCATORE -- 
RegisterServerEvent('krs_pescatore')
	AddEventHandler('krs_pescatore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('trota').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You cannot fish in this area!!'})
	else
		xPlayer.addInventoryItem('trota', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You caught a trout, great my friend!!'})
		
	end
end)

RegisterServerEvent('krs_processopescatore')
AddEventHandler('krs_processopescatore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('trota').count
	if karos < 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You can\'t pack!!'})
	else
		xPlayer.addInventoryItem('trota_lavorata', 1)
		xPlayer.removeInventoryItem('trota', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You packed the trout'})

	end
end)
-- FINE PESCATORE --

-- INIZIO LATTAROLO -- 
RegisterServerEvent('krs_mungimucca')
	AddEventHandler('krs_mungimucca', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('latte').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You can\'t milk!!'})

	else
		xPlayer.addInventoryItem('latte', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You have milked the cow and drawn the milk!'})

	end
end)

RegisterServerEvent('krs_processolatte')
AddEventHandler('krs_processolatte', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local latteCount = xPlayer.getInventoryItem('latte').count

    if latteCount >= 3 then
        xPlayer.removeInventoryItem('latte', 3)
        xPlayer.addInventoryItem('latte_lavorato', 1)
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You packed the milk'})
    else
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'You don\'t have enough milk to pack'})
    end
end)

-- FINE LATTAROLO -- 

-- INIZIO ELETTRICISTA -- 
RegisterServerEvent('krs_elettricista')
AddEventHandler('krs_elettricista', function()
    local _source = source
    local karos = 100
    local xPlayer = ESX.GetPlayerFromId(source)
    if karos > 0 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'You fixed your device and earned: 100💲'})
    xPlayer.addMoney(karos)
    end
end)
-- FINE ELETTRICISTA --


-- ##    ## ########   ######     ##          ###    ##     ##  #######  ########  #### ##    ##  #######  ##      ## ##       
-- ##   ##  ##     ## ##    ##    ##         ## ##   ##     ## ##     ## ##     ##  ##  ###   ## ##     ## ##  ##  ## ##       
-- ##  ##   ##     ## ##          ##        ##   ##  ##     ## ##     ## ##     ##  ##  ####  ## ##     ## ##  ##  ## ##       
-- #####    ########   ######     ##       ##     ## ##     ## ##     ## ########   ##  ## ## ## ##     ## ##  ##  ## ##       
-- ##  ##   ##   ##         ##    ##       #########  ##   ##  ##     ## ##   ##    ##  ##  #### ##     ## ##  ##  ## ##       
-- ##   ##  ##    ##  ##    ##    ##       ##     ##   ## ##   ##     ## ##    ##   ##  ##   ### ##     ## ##  ##  ## ##       
-- ##    ## ##     ##  ######     ######## ##     ##    ###     #######  ##     ## #### ##    ##  #######   ###  ###  ########
