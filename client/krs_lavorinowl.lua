-- ##    ## ########   ######     ##          ###    ##     ##  #######  ########  #### ##    ##  #######  ##      ## ##       
-- ##   ##  ##     ## ##    ##    ##         ## ##   ##     ## ##     ## ##     ##  ##  ###   ## ##     ## ##  ##  ## ##       
-- ##  ##   ##     ## ##          ##        ##   ##  ##     ## ##     ## ##     ##  ##  ####  ## ##     ## ##  ##  ## ##       
-- #####    ########   ######     ##       ##     ## ##     ## ##     ## ########   ##  ## ## ## ##     ## ##  ##  ## ##       
-- ##  ##   ##   ##         ##    ##       #########  ##   ##  ##     ## ##   ##    ##  ##  #### ##     ## ##  ##  ## ##       
-- ##   ##  ##    ##  ##    ##    ##       ##     ##   ## ##   ##     ## ##    ##   ##  ##   ### ##     ## ##  ##  ## ##       
-- ##    ## ##     ##  ######     ######## ##     ##    ###     #######  ##     ## #### ##    ##  #######   ###  ###  ########

ESX = exports.es_extended:getSharedObject()

local agricoltore = false
local petroliere = false
local boscaiolo = false
local pescatore = false
local mungitore = false
local minatore = false 
local macellaio = false
local elettricista = false

-- COORDS RACCOLTA ARANCE --
local krsarance = {
	{ x = 379.2209, y = 6505.8325, z = 27.9357 },
	{ x = 371.1631, y = 6505.9312, z = 28.3619 },
	{ x = 379.3808, y = 6517.6875, z = 28.3169 },
	{ x = 371.3429, y = 6517.6626, z = 28.3756 },
    { x = 364.4918, y = 6505.9229, z = 28.5553 },
    { x = 364.1092, y = 6517.8662, z = 28.3081 },
    { x = 356.5592, y = 6504.9521, z = 28.4528 },
    { x = 356.4560, y = 6517.3672, z = 28.1383 },
    { x = 348.6756, y = 6505.2827, z = 28.7758 },
    { x = 348.4518, y = 6517.6885, z = 28.7192 }
}

-- COORDS PROCESSO ARANCE --
local krsprocessoarance = {
    {x = 93.7219, y = 6356.5483, z = 31.3759 }
}

-- COORDS RACCOLTA PETROLIO --
local krspetrolio = {
	{ x = 1488.3384, y = -1599.2705, z = 72.2441 },
	{ x = 1475.5178, y = -1611.4718, z = 70.8323 },
    { x = 1568.2532, y = -1593.0881, z = 90.7105 },
    { x = 1502.9469, y = -1721.3556, z = 79.1043 },
    { x = 1562.4182, y = -1851.5911, z = 92.4405 },
    { x = 1668.8781, y = -1835.6948, z = 109.3639 }
}

-- COORDS PROCESSO PETROLIO --
local krsprocessopetrolio = {
    {x = 2774.6157, y = 1713.5554, z = 24.5910 },
    {x = 2784.4534, y = 1713.5403, z = 24.5912}
}

-- COORDS FALEGNAMERIA --
local krsfalegnameria = {
    {x = -490.8976, y = 5394.7573, z = 77.4572},
    {x = -499.2749, y = 5400.3574, z = 75.5014},
    {x = -502.9883, y = 5392.5503, z = 76.1534}
}

-- COORDS PROCESSO FALEGNAMERIA --
 local krsprocessofalegnameria = {
    {x = 1070.044,y = -2005.648,z = 32.0769},
}

-- COORDS MINATORE
local krsminiera = {
    {x = -591.4185, y = 2075.0813, z = 131.5194},
    {x = -590.4644, y = 2064.7146, z = 131.1951},
    {x = -588.0657, y = 2057.6936, z = 130.5751},
    {x = -585.5652, y = 2045.1053, z = 129.5442},
    
}

-- COORDS PROCESSO MINATORE --
 local krsprocessominiera = {
    {x = 1109.2054, y = -2007.5349, z = 30.9867},
}

-- COORDS MACELLAIO -- 
local krspollo = {
    {x = -67.9118, y = 6248.0083, z = 31.0857},
}
-- COORDS POLLO PULITO -- 
local krspollopulito = {
    {x = -78.1276, y = 6229.3970, z = 31.0918},
}
-- COORDS POLLO TAGLIATO -- 
local krspollotagliato = {
    {x = -95.8093, y = 6207.1528, z = 31.0251},
}
-- COORDS PROCESSO MACELLAIO --
 local krspolloconfezionato = {
    {x = -101.6678, y = 6208.7280, z = 31.0251}
}

-- COORDS PESCATORE
local krspescatore = {
    {x = -445.9559, y = 2939.2705, z = 14.5770},
    {x = -440.6491, y = 2944.0459, z = 14.5946},
    {x = -434.4506, y = 2948.1582, z = 14.5920},
    {x = -529.4641, y = 2936.4182, z = 14.6528},
    {x = -538.5517, y = 2939.9651, z = 14.6152}
    
}

-- COORDS PROCESSO PESCATORE --
 local krsprocessopescatore = {
    {x = 610.2241, y = -3081.2358, z = 6.0693},
    {x = 610.4365, y = -3077.3083, z = 6.0693}
}

-- COORDS MUCCHE
local krsmungimucca = {
    {x = 2249.5957, y = 4871.5825, z = 40.9238},
    {x = 2247.7188, y = 4873.1719, z = 40.8719},
    {x = 2246.3557, y = 4874.8218, z = 40.8792}
}

-- COORDS PROCESSO LATTE --
 local krslatteconfezionato = {
    {x = 2567.7395, y = 4685.0264, z = 34.0513},
}

-- COORDS ELETTRICISTA --
local elettricista = {
    {x = 1117.8149, y = -2494.1919, z = 33.3608},
    {x = 1123.7585, y = -2493.1711, z = 33.3610},
    {x = 1116.1055, y = -2487.3569, z = 33.3608},
    {x = 1122.0930, y = -2486.0891, z = 33.3618},
    {x = 1135.8224, y = -2483.8389, z = 33.3643},
    {x = 1141.7915, y = -2482.6248, z = 33.3645},

    {x = 1137.6451, y = -2491.4358, z = 33.3632},
    {x = 1143.5504, y = -2489.8672, z = 33.3634}
}


Citizen.CreateThread(function()
    if not HasModelLoaded('a_m_m_hillbilly_01') then
       RequestModel('a_m_m_hillbilly_01')
       while not HasModelLoaded('a_m_m_hillbilly_01') do
          Citizen.Wait(5)
       end
    end

npc = CreatePed(4, 'a_m_m_hillbilly_01', 1200.5570, -1276.9312, 34.3749, 352.1159, false, true)
FreezeEntityPosition(npc, true)
SetEntityInvincible(npc, true)
SetBlockingOfNonTemporaryEvents(npc, true)
end)


-- GRID DEL MENU LAVORI -- 
TriggerEvent('gridsystem:registerMarker', {
	name = 'menulavori',  
	pos = vector3(1200.5822, -1276.2064, 35.2247),
	scale = vector3(1.5, 1.5, 1.5),
	size = vector3(2.5, 2.5, 2.5),
	msg = '~b~[E] ~w~Trova Lavoro',
	type = 1,
	show3D = false,
    color =  { r = 0, b = 255, g = 0 },
	control = 'E',
	action = function()
        
		TriggerEvent('krs_sceglilavoro')
	end
})

-- GRID DEL DEPOSITA VEICOLO --
TriggerEvent('gridsystem:registerMarker', {
	name = 'depositaveh',  
	pos = vector3(1211.576171875,-1262.3973388672,35.22677230835),
	scale = vector3(2.0, 2.0, 2.0),
	size = vector3(3.2, 3.2, 3.2),
	msg = 'Premi ~INPUT_CONTEXT~ per depositare il veicolo',
	type = 36,
    show3D = false,
    color =  { r = 0, b = 255, g = 0 },
    drawDistance = 8.0,
	control = 'E',
	action = function()
        if lavoro then
        local veh = GetVehiclePedIsIn(PlayerPedId(), false)
        DeleteEntity(veh)
        else
            ESX.ShowNotification('Non puoi depositare il veicolo se non stai lavorando')
        end
    end
})


-- GRID DELLA RACCOLTA ARANCE -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsarance) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'raccoltaarance'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per raccogliere arance',
            control = 'E',
            type = 2,
            action = function()
                if agricoltore then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Raccogliendo le arance',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'amb@prop_human_movie_bulb@idle_a',
                        clip = 'idle_a' 
                    },
                }) then end
	            Citizen.Wait(3000)
	            ClearPedTasks(PlayerPedId())						
	            FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_arance')
                ExecuteCommand("me 🍊")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                end
            end,
        })
    end
end)

-- GRID DEL PROCESSO ARANCE -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsprocessoarance) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'processoarance'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per processare le arance',
            control = 'E',
            type = 2,
            action = function()
                if agricoltore then
                FreezeEntityPosition(PlayerPedId(), true)
            if lib.progressCircle({
                duration = 5000,
                position = 'bottom',
                label = 'processando le arance',
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                },
                anim = {
                    dict = 'anim@heists@box_carry@',
                    clip = 'idle' 
                },
                prop = {
                    model = 'hei_prop_heist_box',
                    bone = 60309,
                    pos = vec3(0.025, 0.08, 0.255),
                    rot = vec3(-145.0, 290.0, 0.0)
                },
            }) then end
 
            Citizen.Wait(3000)
	            ClearPedTasks(PlayerPedId())						
	            FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processoagricoltore')
                ExecuteCommand("me 🍹")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                end
            end,
        })
    end
end)

-- GRID DELLA RACCOLTA PETROLIO -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krspetrolio) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'raccoltapetrolio'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per raccogliere il petrolio',
            control = 'E',
            type = 2,
            action = function()
                if petroliere then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Raccogliendo il petrolio',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'mp_take_money_mg',
                        clip = 'stand_cash_in_bag_loop' 
                    },
                    
                }) then end
	            Citizen.Wait(3000)
	            ClearPedTasks(PlayerPedId())						
	            FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_petrolio')
                ExecuteCommand("me ⛽")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                end
            end,
        })
    end
end)

-- GRID DEL PROCESSO PETROLIO -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsprocessopetrolio) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'processopetrolio'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per processare il petrolio',
            control = 'E',
            type = 2,
            action = function()
                if petroliere then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Lavorando il petrolio',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@heists@box_carry@',
                        clip = 'idle' 
                    },
                    prop = {
                        model = 'hei_prop_heist_box',
                        bone = 60309,
                        pos = vec3(0.025, 0.08, 0.255),
                        rot = vec3(-145.0, 290.0, 0.0)
                    },
                }) then end
                Citizen.Wait(3000)
	            ClearPedTasks(PlayerPedId())						
	            FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processopetroliere')
                ExecuteCommand("me ⛽")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                end
            end,
        })
    end
end)

-- GRID RACCOLTA LEGNA -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsfalegnameria) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'falegname'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per tagliare il legno',
            control = 'E',
            type = 2,
            action = function()
		        if boscaiolo then
                 ascia = CreateObject(GetHashKey('prop_w_me_hatchet'), 0, 0, 0, true, true, true)
                 AttachEntityToEntity(ascia, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.15, -0.02, -0.02, 350.0, 100.00, 280.0, true, true, false, true, 1, true)
                 FreezeEntityPosition(PlayerPedId(), true)
                 RequestAnimDict("amb@world_human_hammering@male@base")
	             while (not HasAnimDictLoaded("amb@world_human_hammering@male@base")) do Citizen.Wait(0) end
	             TaskPlayAnim(PlayerPedId(),"amb@world_human_hammering@male@base","base",8.0, 8.0, -1, 80, 0, 0, 0, 0)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Tagliando il legname',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    
                }) then end
                Citizen.Wait(3000)
                DeleteEntity(ascia)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_boscaiolo')
                ExecuteCommand("me 🪵")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                    
		        end					
            end,
        })
    end
    
end)

-- GRID PROCESSO LEGNA -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsprocessofalegnameria) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'processofalegname'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per processare il legno',
            control = 'E',
            type = 2,
            action = function()
		        if boscaiolo then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Lavorando il legno',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@heists@box_carry@',
                        clip = 'idle' 
                    },
                    prop = {
                        model = 'prop_fncwood_16e',
                        bone = 60309,
                        pos = vec3(0.025, 0.08, 0.255),
                        rot = vec3(-145.0, -245.0, 0.0)
                    },
                }) then end
               
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processoboscaiolo')
                ExecuteCommand("me 🪵")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                   	
		        end					
            end,
        })
    end
end)

-- GRID RACCOLTA DI MINERALI -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsminiera) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'minatore'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per minare',
            control = 'E',
            type = 2,
            action = function()
		        if minatore then
                piccone = CreateObject(GetHashKey('prop_tool_pickaxe'), 0, 0, 0, true, true, true)
                AttachEntityToEntity(piccone, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.15, -0.02, -0.02, 350.0, 100.00, 280.0, true, true, false, true, 1, true)
                FreezeEntityPosition(PlayerPedId(), true)
                RequestAnimDict("amb@world_human_hammering@male@base")
	            while (not HasAnimDictLoaded("amb@world_human_hammering@male@base")) do Citizen.Wait(0) end
	            TaskPlayAnim(PlayerPedId(),"amb@world_human_hammering@male@base","base",8.0, 8.0, -1, 80, 0, 0, 0, 0)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Picconando le rocce',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                }) then end
                Citizen.Wait(3000)
                DeleteEntity(piccone)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_minatore')
                ExecuteCommand("me 🪨")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                    
		        end					
            end,
        })
    end
    
end)

-- GRID PROCESSO MINERALI -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsprocessominiera) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'processominatore'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(25.0, 25.0, 25.0),
            scale = vector3(10.7, 7.7, 7.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per processare i minerali',
            control = 'E',
            type = 1,
            action = function()
		        if minatore then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Lavando i minerali',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@heists@box_carry@',
                        clip = 'idle' 
                    },
                    prop = {
                        model = 'prop_rock_5_e',
                        bone = 60309,
                        pos = vec3(0.025, 0.08, 0.255),
                        rot = vec3(-145.0, 290.0, 0.0)
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processominatore')
                ExecuteCommand("me 💎")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
                   
		        end					
            end,
        })
    end
end)

-- GRID MACELLAIO -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krspollo) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'macellaio'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per prendere il pollo',
            control = 'E',
            type = 2,
            action = function()
		        if macellaio then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 2000,
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'mp_take_money_mg',
                        clip = 'stand_cash_in_bag_loop'
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_prendipollo')
                ExecuteCommand("me 🐔")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)

-- GRID MACELLAIO 2 -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krspollopulito) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'macellaio'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per pulire il pollo',
            control = 'E',
            type = 2,
            action = function()
		        if macellaio then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 2000,
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'mp_take_money_mg',
                        clip = 'stand_cash_in_bag_loop'
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_puliscipollo')
                ExecuteCommand("me 🐔")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)

-- GRID MACELLAIO 3 -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krspollotagliato) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'macellaio'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per tagliare il pollo',
            control = 'E',
            type = 2,
            action = function()
		        if macellaio then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 2000,
                    position = 'bottom',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@amb@business@coc@coc_unpack_cut_left@',
                        clip = 'coke_cut_v1_coccutter'
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_pollotagliato')
                ExecuteCommand("me 🍗")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
    
end)

-- GRID MACELLAIO 4 -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krspolloconfezionato) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'macellaio'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per confezionare il pollo',
            control = 'E',
            type = 2,
            action = function()
		        if macellaio then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Confezionando il pollo',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@heists@box_carry@',
                        clip = 'idle' 
                    },
                    prop = {
                        model = 'hei_prop_heist_box',
                        bone = 60309,
                        pos = vec3(0.025, 0.08, 0.255),
                        rot = vec3(-145.0, 290.0, 0.0)
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processopollo')
                ExecuteCommand("me 🍗🍗🍗")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)

-- GRID PESCATORE -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krspescatore) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'pescatore'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per pescare',
            control = 'E',
            type = 2,
            action = function()
		        if pescatore then
                cannadapesca = CreateObject(GetHashKey('prop_fishing_rod_02'), 0, 0, 0, true, true, true)
                AttachEntityToEntity(cannadapesca, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 18905), 0.1, 0.05, 0, 80.0, 120.0, 160.0, true, true, false, true, 1, true)
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 15000,
                    position = 'bottom',
                    label = 'Aspettando che il pesce abbocchi',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'amb@world_human_stand_fishing@idle_a',
                        clip = 'idle_c' 
                    },
                }) then end
                Citizen.Wait(3000)
                DeleteEntity(cannadapesca)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_pescatore')
                ExecuteCommand("me 🐟")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
    
end)

-- GRID PROCESSO PESCATORE -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krsprocessopescatore) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'processopescatore'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per lavorare il pesce',
            control = 'E',
            type = 2,
            action = function()
		        if pescatore then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 10000,
                    position = 'bottom',
                    label = 'Lavorando il pesce',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@heists@box_carry@',
                        clip = 'idle' 
                    },
                    prop = {
                        model = 'hei_prop_heist_box',
                        bone = 60309,
                        pos = vec3(0.025, 0.08, 0.255),
                        rot = vec3(-145.0, 290.0, 0.0)
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processopescatore')
                ExecuteCommand("me 🐟")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)

-- INIZIO PESCATORE --
Citizen.CreateThread(function()
    for krs,karos in pairs(krsmungimucca) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'mungi'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per mungere la mucca',
            control = 'E',
            type = 2,
            action = function()
		        if mungitore then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 10000,
                    position = 'bottom',
                    label = 'Mungendo la mucca',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'mini@repair',
                        clip = 'fixing_a_ped' 
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_mungimucca')
                ExecuteCommand("me 🐄")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)

Citizen.CreateThread(function()
    RequestModel(GetHashKey("a_c_cow"))
    while not HasModelLoaded(GetHashKey("a_c_cow")) do
        Wait(155)
    end

    local mucca =  CreatePed(4, GetHashKey("a_c_cow"), 2245.8364, 4875.2241, 39.8686, 315.1719, false, true)
    FreezeEntityPosition(mucca, true)
    SetEntityInvincible(mucca, true)
    SetBlockingOfNonTemporaryEvents(mucca, true)
    while true do
        Citizen.Wait(10000)
        TaskPedSlideToCoord(mucca, 2245.8364, 4875.2241, 39.8686, 315.1719, 10)
    end
    end)

Citizen.CreateThread(function()
    RequestModel(GetHashKey("a_c_cow"))
    while not HasModelLoaded(GetHashKey("a_c_cow")) do
        Wait(155)
    end

    local mucca =  CreatePed(4, GetHashKey("a_c_cow"), 2247.2163, 4873.4536, 39.8599, 313.5623, false, true)
    FreezeEntityPosition(mucca, true)
    SetEntityInvincible(mucca, true)
    SetBlockingOfNonTemporaryEvents(mucca, true)
    while true do
        Citizen.Wait(10000)
        TaskPedSlideToCoord(mucca, 2247.2163, 4873.4536, 39.8599, 313.5623, 10)
    end
    end)

    Citizen.CreateThread(function()
        RequestModel(GetHashKey("a_c_cow"))
        while not HasModelLoaded(GetHashKey("a_c_cow")) do
            Wait(155)
        end
    
        local mucca =  CreatePed(4, GetHashKey("a_c_cow"), 2249.0244, 4871.9346, 39.9139, 321.7546, false, true)
        FreezeEntityPosition(mucca, true)
        SetEntityInvincible(mucca, true)
        SetBlockingOfNonTemporaryEvents(mucca, true)
        while true do
            Citizen.Wait(10000)
            TaskPedSlideToCoord(mucca, 2249.0244, 4871.9346, 39.9139, 321.7546, 10)
        end
        end)

-- GRID MACELLAIO 4 -- 
Citizen.CreateThread(function()
    for krs,karos in pairs(krslatteconfezionato) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'latteconfezionato'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per processare il latte',
            control = 'E',
            type = 2,
            action = function()
		        if mungitore then
                FreezeEntityPosition(PlayerPedId(), true)  
                if lib.progressCircle({
                    duration = 5000,
                    position = 'bottom',
                    label = 'Confezionando il latte',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'anim@heists@box_carry@',
                        clip = 'idle' 
                    },
                    prop = {
                        model = 'hei_prop_heist_box',
                        bone = 60309,
                        pos = vec3(0.025, 0.08, 0.255),
                        rot = vec3(-145.0, 290.0, 0.0)
                    },
                }) then end
                Citizen.Wait(3000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_processolatte')
                ExecuteCommand("me 🐄")	
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)

Citizen.CreateThread(function()
    for krs,karos in pairs(elettricista) do
        TriggerEvent('gridsystem:registerMarker', {
            name = 'elettricista'..karos.x,
            pos = vector3(karos.x, karos.y, karos.z),
            size = vector3(2.1,2.1,2.1),
            scale = vector3(0.7, 0.7, 0.7),
            color =  { r = 0, b = 255, g = 0 },
            drawDistance = 4.0,
            msg = 'Premi ~INPUT_CONTEXT~ per riparare',
            control = 'E',
            type = 2,
            action = function()
		        if elettricista then
                FreezeEntityPosition(PlayerPedId(), true)
                if lib.progressCircle({
                    duration = 10000,
                    position = 'bottom',
                    label = '..Riparazione in corso..',
                    useWhileDead = false,
                    canCancel = true,
                    disable = {
                        car = true,
                    },
                    anim = {
                        dict = 'mini@repair',
                        clip = 'fixing_a_ped' 
                    },
                }) then end
                Citizen.Wait(1000)
                ClearPedTasks(PlayerPedId())
                FreezeEntityPosition(PlayerPedId(), false)
                TriggerServerEvent('krs_elettricista')
                else
                    ESX.ShowNotification('Vai prima al centro impieghi')
		        end					
            end,
        })
    end
end)


-- MENU SCELTA LAVORO -- 

-- MENU LAVORI --
lib.registerContext({
    id = 'Menulavori',
    title = 'Menu',
    onExit = function()
    end,
    options = {
        {
            title = "🪵 Menu Lavoro Boscaiolo ",
            description = '..Lavora come taglialegna..',
            arrow = false,
            event = 'boscaiolo'
        },
        {
            title = "🍊 Menu Lavoro Agricoltore Arance",
            description = '..Lavora come agricoltore di arance..',
            arrow = false,
            event = 'agricoltore'
        },
        {
            title = "⛽ Menu Lavoro Petroliere",
            description = '..Lavora come petroliere..',
            arrow = false,
            event = 'petroliere'
        },
        {
            title = "⛏️ Menu Lavoro Minatore",
            description = '..Lavora come minatore..',
            arrow = false,
            event = 'minatore'
        },
        {
            title = "🐔 Menu Lavoro Macellaio",
            description = '..Lavora come macellaio..',
            arrow = false,
            event = 'macellaio'
        },
        {
            title = "🐟 Menu Lavoro Pescatore",
            description = '..Lavora come pescatore..',
            arrow = false,
            event = 'pescatore'
        },
        {
            title = "🐄 Menu Lavoro Mungitore",
            description = '..Lavora come Mungitore di latte..',
            arrow = false,
            event = 'lattarolo'
        },
        {
            title = "⚡ Menu Lavoro Elettricista",
            description = '..Lavora come Elettricista..',
            arrow = false,
            event = 'elettricista'
        },
        {
            title = "🔚 Annulla Lavoro",
            description = 'Annulla il lavoro attuale',
            arrow = false,
            event = 'annullalavoro'
        },
    },
})

-- Funzione per aprire il menu --
RegisterNetEvent('krs_sceglilavoro')
AddEventHandler('krs_sceglilavoro', function()
    lib.showContext('Menulavori')
end)


RegisterNetEvent('boscaiolo')
AddEventHandler('boscaiolo', function()
    KRS_Boscaiolo()
    print("Lavoro di boscaiolo selezionato.")
end)

RegisterNetEvent('agricoltore')
AddEventHandler('agricoltore', function()
    KRS_Agricoltore()
    print("Lavoro di agricoltore selezionato.")
end)

RegisterNetEvent('petroliere')
AddEventHandler('petroliere', function()
    KRS_Petroliere()
    print("Lavoro di petroliere selezionato.")
end)

-- Funzione per gestire l'opzione di lavoro minatore
RegisterNetEvent('minatore')
AddEventHandler('minatore', function()
    KRS_Minatore()
    print("Lavoro di minatore selezionato.")
end)

-- Funzione per gestire l'opzione di lavoro macellaio
RegisterNetEvent('macellaio')
AddEventHandler('macellaio', function()
    KRS_Macellaio()
    print("Lavoro di macellaio selezionato.")
end)

RegisterNetEvent('pescatore')
AddEventHandler('pescatore', function()
    KRS_Pescatore()
    print("Lavoro del pescatore selezionato.")
end)

RegisterNetEvent('lattarolo')
AddEventHandler('lattarolo', function()
    KRS_Lattarolo()
    print("Lavoro del mungitore selezionato.")
end)

RegisterNetEvent('elettricista')
AddEventHandler('elettricista', function()
    KRS_Elettricista()
    print("Lavoro dell'elettricista selezionato.")
end)

-- Funzione per gestire l'opzione di annullare il lavoro
RegisterNetEvent('annullalavoro')
AddEventHandler('annullalavoro', function()
    KRS_Annullalavoro()
    print("Lavoro annullato.")
end)


-- BLIP CENTRO IMPIEGHI -- 
krsblip = AddBlipForCoord(1200.6398925781,-1274.7916259766)
    SetBlipSprite(krsblip, 407)
    SetBlipScale(krsblip, 0.7)
    SetBlipColour(krsblip, 1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Centro impieghi")
    EndTextCommandSetBlipName(krsblip)

-- ANNULLA LAVORO --    
KRS_Annullalavoro = function()
    lavoro = false
    RemoveBlip(karos1)
    RemoveBlip(karos2)
    RemoveBlip(zona1)
    RemoveBlip(zona2)
    RemoveBlip(zona3)
    RemoveBlip(zonaa1)
    RemoveBlip(zonaa2)
    RemoveBlip(zonaa3)
    RemoveBlip(krs1)
    RemoveBlip(krs2)
    RemoveBlip(krs1blip)
    DeleteWaypoint(waypoint1)
    DeleteWaypoint(waypoint2)
    DeleteWaypoint(waypoint3)
    DeleteWaypoint(waypoint4)
    DeleteWaypoint(waypoint5)
    DeleteWaypoint(waypoint6)
end
-- FINE ANNULLA LAVORO --  

-- INIZIO ELETTRICISTA -- 
KRS_Elettricista = function()
    elettricista = true
    ESX.Game.SpawnVehicle('boxville', vector3(1214.5858154297,-1321.7121582031,35.226902008057), 85.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi i dispositivi elettrici da riparare..')
    waypoint5 = SetNewWaypoint(1117.5520, -2503.6335, 33.3607)
    krs1 = AddBlipForCoord(1117.5520, -2503.6335, 33.3607)
    SetBlipSprite(krs1, 354)
    SetBlipScale(krs1, 1.1)
    SetBlipColour(krs1, 46)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Elettricista")
    EndTextCommandSetBlipName(krs1)
end
-- FINE ELETTRICISTA -- 

-- INIZIO PESCATORE -- 
KRS_Pescatore = function()
    pescatore = true
    ESX.Game.SpawnVehicle('burrito3', vector3(1214.5858154297,-1321.7121582031,35.226902008057), 85.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi il punto di pesca')
    waypoint5 = SetNewWaypoint(-442.8629, 2941.5066, 14.4903)
    krs1 = AddBlipForCoord(-442.8629, 2941.5066, 14.4903)
    SetBlipSprite(krs1, 317)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Punti pesca")
    EndTextCommandSetBlipName(krs1)
    krs2 = AddBlipForCoord(609.2772, -3079.1567, 6.0693)
    SetBlipSprite(krs2, 317)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo dei pesci")
    EndTextCommandSetBlipName(krs2)
end
-- FINE PESCATORE --

-- MUNGI MUCCA --
KRS_Lattarolo = function()
    mungitore = true
    ESX.Game.SpawnVehicle('youga2', vector3(1218.6452636719,-1301.7208251953,35.226959228516), 86.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi la zona delle mucche')
    waypoint1 = SetNewWaypoint(2246.8994, 4874.0469, 40.8730)
    karos1 = AddBlipForCoord(2246.8994, 4874.0469, 40.8730)
    karos2 = AddBlipForCoord(2567.7395, 4685.0264, 34.0451)
    SetBlipSprite(karos1, 535)
    SetBlipSprite(karos2, 536)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Raccolta latte")
    EndTextCommandSetBlipName(karos1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo latte")
    EndTextCommandSetBlipName(karos2)
end

-- MACELLAIO --
KRS_Macellaio = function()
    macellaio = true
    ESX.Game.SpawnVehicle('kalahari', vector3(1218.6452636719,-1301.7208251953,35.226959228516), 86.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi la zona di raccolta')
    waypoint1 = SetNewWaypoint(-72.3538, 6267.4468, 31.2773)
    karos1 = AddBlipForCoord(-72.3538, 6267.4468, 31.2773)
    karos2 = AddBlipForCoord(-101.8572, 6208.6523, 31.0250)
    SetBlipSprite(karos1, 535)
    SetBlipSprite(karos2, 536)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Raccolta uva")
    EndTextCommandSetBlipName(karos1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo uva")
    EndTextCommandSetBlipName(karos2)
end
-- FINE LAVORO MACELLAIO --

-- AGRICOLTORE -- 
KRS_Agricoltore = function()
    agricoltore = true
    ESX.Game.SpawnVehicle('kalahari', vector3(1218.6452636719,-1301.7208251953,35.226959228516), 86.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi la zona di raccolta di arance')
    waypoint1 = SetNewWaypoint(375.4893, 6500.3037, 28.0577)
    karos1 = AddBlipForCoord(375.4893, 6500.3037, 28.0577)
    karos2 = AddBlipForCoord(90.4702, 6362.6279, 31.2258)
    SetBlipSprite(karos1, 535)
    SetBlipSprite(karos2, 536)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Raccolta arance")
    EndTextCommandSetBlipName(karos1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo arance")
    EndTextCommandSetBlipName(karos2)
end
-- FINE LAVORO AGRICOLTORE -- 



-- PETROLIERE -- 
KRS_Petroliere = function()
    petroliere = true
    ESX.Game.SpawnVehicle('bodhi2', vector3(1218.6452636719,-1301.7208251953,35.226959228516), 86.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi la zona di raccolta del petrolio')
    waypoint1 = SetNewWaypoint(1488.4878, -1607.3187, 71.9450)
    karos1 = AddBlipForCoord(1486.6627, -1608.1932, 71.8506)
    karos2 = AddBlipForCoord(2780.6455, 1708.5345, 24.5843)
    SetBlipSprite(karos1, 436)
    SetBlipSprite(karos2, 436)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Raccolta petrolio")
    EndTextCommandSetBlipName(karos1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo petrolio")
    EndTextCommandSetBlipName(karos2)
end
-- FINE LAVORO PETROLIERE -- 

-- INIZIO BOSCAIOLO -- 
KRS_Boscaiolo = function()
    boscaiolo = true
    ESX.Game.SpawnVehicle('mule3', vector3(1214.5858154297,-1321.7121582031,35.226902008057), 85.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi la falegnameria')
    waypoint5 = SetNewWaypoint(-556.43975830078,5371.162109375)
    krs1 = AddBlipForCoord(-497.3576, 5392.8608, 76.8875)
    SetBlipSprite(krs1, 211)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Falegnameria")
    EndTextCommandSetBlipName(krs1)
    krs2 = AddBlipForCoord(1070.044, -2005.648)
    SetBlipSprite(krs2, 478)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo falegnameria")
    EndTextCommandSetBlipName(krs2)
end
-- FINE BOSCAIOLO --

-- INIZIO MINATORE -- 
KRS_Minatore = function()
    minatore = true
    ESX.Game.SpawnVehicle('tiptruck', vector3(1214.5858154297,-1321.7121582031,35.226902008057), 85.29, function(v)
        SetPedIntoVehicle(PlayerPedId(), v, -1)
    end)
    ESX.ShowNotification('Raggiungi la miniera')
    waypoint5 = SetNewWaypoint(-596.5425, 2090.9272, 131.4129)
    krs1 = AddBlipForCoord(-596.5425, 2090.9272, 131.4129)
    SetBlipSprite(krs1, 560)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Miniera")
    EndTextCommandSetBlipName(krs1)
    krs2 = AddBlipForCoord(1108.7972, -2007.4572, 30.9032)
    SetBlipSprite(krs2, 478)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Processo miniera")
    EndTextCommandSetBlipName(krs2)
end
-- FINE MINATORE -- 

-- ##    ## ########   ######     ##          ###    ##     ##  #######  ########  #### ##    ##  #######  ##      ## ##       
-- ##   ##  ##     ## ##    ##    ##         ## ##   ##     ## ##     ## ##     ##  ##  ###   ## ##     ## ##  ##  ## ##       
-- ##  ##   ##     ## ##          ##        ##   ##  ##     ## ##     ## ##     ##  ##  ####  ## ##     ## ##  ##  ## ##       
-- #####    ########   ######     ##       ##     ## ##     ## ##     ## ########   ##  ## ## ## ##     ## ##  ##  ## ##       
-- ##  ##   ##   ##         ##    ##       #########  ##   ##  ##     ## ##   ##    ##  ##  #### ##     ## ##  ##  ## ##       
-- ##   ##  ##    ##  ##    ##    ##       ##     ##   ## ##   ##     ## ##    ##   ##  ##   ### ##     ## ##  ##  ## ##       
-- ##    ## ##     ##  ######     ######## ##     ##    ###     #######  ##     ## #### ##    ##  #######   ###  ###  ########
