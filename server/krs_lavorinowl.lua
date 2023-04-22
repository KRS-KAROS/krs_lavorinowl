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
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi raccogliere le arance da qui!!'})
	else
		xPlayer.addInventoryItem('arance', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai raccolto le arance dall\'albero!!'})
		
	end
end)

-- INIZIO PROCESSO ARANCE --
RegisterServerEvent('krs_processoagricoltore')
AddEventHandler('krs_processoagricoltore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('arance').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi le arance!!'})
	else
		xPlayer.addInventoryItem('succodifrutta', 1)
		xPlayer.removeInventoryItem('arance', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai lavorato le arance, fatto un buon succo di frutta!!'})
	end
end)


-- INIZIO RACCOLTA PETROLIO --
RegisterServerEvent('krs_petrolio')
	AddEventHandler('krs_petrolio', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('petrolio').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi prelevare il petrolio da qui!!'})
	else
		xPlayer.addInventoryItem('petrolio', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai prelevato il petrolio!!'})
	end
end)

-- INIZIO PROCESSO PETROLIO --
RegisterServerEvent('krs_processopetroliere')
AddEventHandler('krs_processopetroliere', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('petrolio').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi il petrolio!!'})
	else
		xPlayer.addInventoryItem('taniche_benzina', 1)
		xPlayer.removeInventoryItem('petrolio', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai lavorato il petrolio!!'})
	end
end)


-- BOSCAIOLO -- 
RegisterServerEvent('krs_boscaiolo')
	AddEventHandler('krs_boscaiolo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('troncodilegno').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'sei troppo lontano dal tronco!!'})
	else
		xPlayer.addInventoryItem('troncodilegno', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai tagliato il tronco!!'})
	end
end)

RegisterServerEvent('krs_processoboscaiolo')
AddEventHandler('krs_processoboscaiolo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('troncodilegno').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi i tronchi di legno!!'})
	else
		xPlayer.addInventoryItem('tavoledilegno', 1)
		xPlayer.removeInventoryItem('troncodilegno', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai lavorato il tronco!!'})
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
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi picconare in questa zona!!'})
	else
		xPlayer.addInventoryItem('roccia', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai prelevato le rocce dalla cava!!'})
	end
end)

RegisterServerEvent('krs_processominatore')
AddEventHandler('krs_processominatore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('roccia').count
	if karos < 3 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi le rocce per lavarle!!'})
	else
		xPlayer.addInventoryItem('minerale', 1)
		xPlayer.removeInventoryItem('roccia', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai lavato le rocce si sono sciolte e diventati minerali!!'})
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
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi raccogliere il pollo!!'})
	else
		xPlayer.addInventoryItem('pollo', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai raccolto il pollo!!'})
	end
end)

RegisterServerEvent('krs_puliscipollo')
	AddEventHandler('krs_puliscipollo', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('pollo').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi il pollo!!'})
	else
		xPlayer.removeInventoryItem('pollo', 1)
		xPlayer.addInventoryItem('pollo_pulito', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai lavato il pollo!!'})
	end
end)

RegisterServerEvent('krs_pollotagliato')
	AddEventHandler('krs_pollotagliato', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local ped = GetPlayerPed(source)
	local karos2 = xPlayer.getInventoryItem('pollo_pulito').count
	if karos2 >= 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non possiedi le cosce di pollo!!'})
	else
		xPlayer.removeInventoryItem('pollo_pulito', 1)
		xPlayer.addInventoryItem('cosce_pollo', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai tagliato il  pollo!!'})

	end
end)

RegisterServerEvent('krs_processopollo')
AddEventHandler('krs_processopollo', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local karos = xPlayer.getInventoryItem('cosce_pollo').count
    if karos >= 3 then
        xPlayer.removeInventoryItem('cosce_pollo', 3)
        xPlayer.addInventoryItem('pollo_processato', 1)
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai confezionato il pollo!!'})
    else
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non hai abbastanza cosce di pollo!!'})
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
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi pescare in questa zona!!'})
	else
		xPlayer.addInventoryItem('trota', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai pescato una trota, grandioso amico mio!!'})
		
	end
end)

RegisterServerEvent('krs_processopescatore')
AddEventHandler('krs_processopescatore', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local karos = xPlayer.getInventoryItem('trota').count
	if karos < 100 then
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi confezionare!!'})
	else
		xPlayer.addInventoryItem('trota_lavorata', 1)
		xPlayer.removeInventoryItem('trota', 3)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai confezionato la trota'})

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
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non puoi mungere!!'})

	else
		xPlayer.addInventoryItem('latte', 1)
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai munto la mucca e prelevato il latte!'})

	end
end)

RegisterServerEvent('krs_processolatte')
AddEventHandler('krs_processolatte', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    local latteCount = xPlayer.getInventoryItem('latte').count

    if latteCount >= 3 then
        xPlayer.removeInventoryItem('latte', 3)
        xPlayer.addInventoryItem('latte_lavorato', 1)
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai confezionato il latte'})
    else
        TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'error', description = 'Non hai abbastanza latte da confezionare'})
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
		TriggerClientEvent('ox_lib:notify', xPlayer.source, {type = 'success', description = 'Hai riparato il dispositivo e guadagnato: 100💲'})
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
