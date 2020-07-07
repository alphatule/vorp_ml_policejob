Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('perso', _U('titulo'))
    WarMenu.SetSubTitle('perso', _U('subtitulo'))
    WarMenu.CreateSubMenu('inv', 'perso', _U('sub_menu_1'))
    WarMenu.CreateSubMenu('inv1', 'perso', _U('sub_menu_2'))

    while true do

        local ped = GetPlayerPed()
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('perso') then

            

            if WarMenu.MenuButton(_U('sub_menu_3'), 'inv1') then
            end
			
			if WarMenu.MenuButton(_U('sub_menu_1'), 'inv') then 
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv1') then
			
            if WarMenu.Button(_U('placa')) then
                Citizen.InvokeNative(0xD3A7B003ED343FD9, PlayerPedId(),  0x1FC12C9C, true, true, true)
					
			 elseif WarMenu.Button(_U('esposar')) then 
            local closestPlayer, closestDistance = GetClosestPlayer()
                if closestPlayer ~= -1 and closestDistance <= 3.0 then
                
                    TriggerServerEvent("vorp_ml_policejob:cuffplayer", GetPlayerServerId(closestPlayer))                    
                    print('cuffacept')
                   
                end
            elseif WarMenu.Button(_U('desesposar')) then
            local closestPlayer, closestDistance = GetClosestPlayer()
              if closestPlayer ~= -1 and closestDistance <= 3.0 then
              
                    TriggerServerEvent("vorp_ml_policejob:uncuffplayer", GetPlayerServerId(closestPlayer))
                    
                end
			elseif WarMenu.Button(_U('atar_lazo')) then
            local closestPlayer, closestDistance = GetClosestPlayer()
              if closestPlayer ~= -1 and closestDistance <= 3.0 then
              
                    TriggerServerEvent("vorp_ml_policejob:lassoplayer", GetPlayerServerId(closestPlayer))
                    
                end
			
            end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv') then   

            if WarMenu.Button(_U('sub_menu_1')) then
					SpawnHorse()
            end
            WarMenu.Display()

        elseif whenKeyJustPressed(keys["U"]) then 
           TriggerServerEvent("vorp_ml_policejob:checkjob")
        end
		
        Citizen.Wait(0)
    end
end)
-- pd station
Citizen.CreateThread(function()
    local checkbox2 = false
    WarMenu.CreateMenu('perso2', _U('titulo'))
    WarMenu.SetSubTitle('perso2', _U('subtitulo'))
    WarMenu.CreateSubMenu('inv3', 'perso2', _U('sub_menu_5'))
    WarMenu.CreateSubMenu('inv4', 'perso2', _U('sub_menu_6'))
	WarMenu.CreateSubMenu('TP', 'perso2', _U('sub_menu_7'))

    while true do

        local ped = GetPlayerPed()
        local coords = GetEntityCoords(PlayerPedId())

        if WarMenu.IsMenuOpened('perso2') then

            

            if WarMenu.MenuButton(_U('sub_menu_3'), 'inv3') then
            end

            if WarMenu.MenuButton(_U('sub_menu_6'), 'inv4') then
            end
			
			if WarMenu.MenuButton(_U('sub_menu_7'), 'TP') then
			end
		
		WarMenu.Display()
		
		elseif WarMenu.IsMenuOpened('TP') then
			if WarMenu.Button('Valentine') then
					SetEntityCoords(ped, -277.76,804.97,119.38)  
				elseif WarMenu.Button('Blackwater') then
					SetEntityCoords(ped, -764.14,-1270.92,44.04) 
				elseif WarMenu.Button('Strawberry') then
					SetEntityCoords(ped, -1811.91,-353.65,164.65) 
				elseif WarMenu.Button('Rhodes') then
					SetEntityCoords(ped, 1359.61,-1303.27,77.77)
				elseif WarMenu.Button('Tumbleweed') then
					SetEntityCoords(ped, -5530.48,-2928.49,-1.36)
				elseif WarMenu.Button('SaintDenis') then
					SetEntityCoords(ped, 2496.79,-1302.06,48.95)
			end

            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('inv3') then


			if WarMenu.Button(_U('poner_skin')) then
                    Citizen.InvokeNative(0xD3A7B003ED343FD9 , PlayerPedId(),  0x1FC12C9C, true, true, true)	
				
            elseif WarMenu.Button(_U('poner_skin2')) then
				seteazaModel('S_M_M_AmbientBlWPolice_01')
            elseif WarMenu.Button(_U('poner_skin3')) then
				seteazaModel('S_M_M_AmbientSDPolice_01') 
			elseif WarMenu.Button(_U('poner_skin4')) then
				seteazaModel('CS_rhodeputy_01')
			elseif WarMenu.Button(_U('poner_skin5')) then
				seteazaModel('S_M_M_VALDEPUTY_01')
				
            elseif WarMenu.Button(_U('poner_skin6')) then
                TriggerServerEvent("vorpcharacter:getPlayerSkin")
				end
				
            WarMenu.Display()

        elseif WarMenu.IsMenuOpened('inv4') then   

            if WarMenu.Button(_U('lasso')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_LASSO"), 500, true, 0)
				elseif WarMenu.Button(_U('revolver')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_REVOLVER_CATTLEMAN"), 500, true, 0)
			elseif WarMenu.Button(_U('repeater')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_REPEATER_HENRY"), 500, true, 0)
			elseif WarMenu.Button(_U('shotgun')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_SHOTGUN_PUMP"), 500, true, 0)
			elseif WarMenu.Button(_U('rifle')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_SNIPERRIFLE_ROLLINGBLOCK"), 500, true, 0)
			elseif WarMenu.Button(_U('lantern')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_MELEE_LANTERN_ELECTRIC"), 500, true, 0)
			elseif WarMenu.Button(_U('knife')) then
                Citizen.InvokeNative(0xB282DC6EBD803C75, GetPlayerPed(), GetHashKey("WEAPON_MELEE_KNIFE"), 500, true, 0)
			
			
             end
			
            WarMenu.Display()
elseif (Vdist(coords.x, coords.y, coords.z, -764.84, -1271.85, 44.04) < 1.0) then --blackw
               TriggerEvent("enter:pd")
               if whenKeyJustPressed(keys["G"]) then
			   TriggerServerEvent("vorp_ml_policejob:checkjob2")
               end
elseif (Vdist(coords.x, coords.y, coords.z, -277.76, 804.97, 119.38) < 1.0) then --val
               TriggerEvent("enter:pd")
               if whenKeyJustPressed(keys["G"]) then
			   TriggerServerEvent("vorp_ml_policejob:checkjob2")
               end
elseif (Vdist(coords.x, coords.y, coords.z, -1811.91,-353.65,164.65) < 1.0) then  --strw
               TriggerEvent("enter:pd")
               if whenKeyJustPressed(keys["G"]) then
			   TriggerServerEvent("vorp_ml_policejob:checkjob2")
               end
elseif (Vdist(coords.x, coords.y, coords.z, 1359.61,-1303.27,77.77) < 1.0) then --rhod
               TriggerEvent("enter:pd")
               if whenKeyJustPressed(keys["G"]) then
			   TriggerServerEvent("vorp_ml_policejob:checkjob2")
               end
elseif (Vdist(coords.x, coords.y, coords.z, -5530.48,-2928.49,-1.36) < 1.0) then --tweed
               TriggerEvent("enter:pd")
               if whenKeyJustPressed(keys["G"]) then
			   TriggerServerEvent("vorp_ml_policejob:checkjob2")
               end
elseif (Vdist(coords.x, coords.y, coords.z, 2496.79,-1302.06,48.95) < 1.0) then --saintD
               TriggerEvent("enter:pd")
               if whenKeyJustPressed(keys["G"]) then
			   TriggerServerEvent("vorp_ml_policejob:checkjob2")
               end			   
             		   
			   
      end
     
        Citizen.Wait(0)
    
	end
end)


function seteazaModel(name)
	local model = GetHashKey(name)
	local player = PlayerId()
	
	if not IsModelValid(model) then return end
	PerformRequest(model)
	
	if HasModelLoaded(model) then
		-- SetPlayerModel(player, model, false)
		Citizen.InvokeNative(0xED40380076A31506, player, model, false)
		Citizen.InvokeNative(0x283978A15512B2FE, PlayerPedId(), true)
		SetModelAsNoLongerNeeded(model)
	end
end

function PerformRequest(hash)
    RequestModel(hash, 0) -- RequestModel
    local times = 1
    while not Citizen.InvokeNative(0x1283B8B89DD5D1B6, hash) do -- HasModelLoaded
        Citizen.InvokeNative(0xFA28FE3A6246FC30, hash, 0) -- RequestModel
        times = times + 1
        Citizen.Wait(0)
        if times >= 100 then break end
    end
end


RegisterNetEvent('enter:pd')
  AddEventHandler('enter:pd', function()
    SetTextScale(0.5, 0.5)
    --SetTextFontForCurrentCommand(1)
    local msg = _U('abrir_menu2')
    local str = Citizen.InvokeNative(0xFA925AC00EB830B9, 10, "LITERAL_STRING", msg, Citizen.ResultAsLong())

    Citizen.InvokeNative(0xFA233F8FE190514C, str)
    Citizen.InvokeNative(0xE9990552DEC71600)
  end)
  
  RegisterNetEvent('vorp_ml_policejob:open2')
AddEventHandler('vorp_ml_policejob:open2', function(cb)
	WarMenu.OpenMenu('perso2')
	print ("openmenu")
end)

RegisterNetEvent('vorp_ml_policejob:open')
AddEventHandler('vorp_ml_policejob:open', function(cb)
	WarMenu.OpenMenu('perso')
	print ("openmenu")
end)

function whenKeyJustPressed(key)
    if Citizen.InvokeNative(0x580417101DDB492F, 0, key) then
        return true
    else
        return false
    end
end

--Police Horse

local recentlySpawned = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        if recentlySpawned > 0 then
            recentlySpawned = recentlySpawned - 1
        end
    end
end)

function SpawnHorse()
    local localPed = PlayerPedId()
    local randomHorseModel = math.random(1, #Config.Horses)
    local model = GetHashKey(Config.Horses[randomHorseModel])

    RequestModel(model, true)

    while not HasModelLoaded(model) do
        Citizen.Wait(100)
    end
    
    local forward = Citizen.InvokeNative(0x2412D9C05BB09B97, localPed)
    local pos = GetEntityCoords(localPed)
    local myHorse = Citizen.InvokeNative(0xD49F9B0955C367DE, model, pos.x, pos.y - 30, pos.z - 0.5, 180.0, true, true, true, true)
    TaskGoToEntity( myHorse, localPed, -1, 7.2, 2.0, 0, 0 )
	Citizen.InvokeNative(0x283978A15512B2FE, myHorse, true)
    SetPedAsGroupMember(myHorse, 0) --Citizen.InvokeNative(0x9F3480FE65DB31B5, myHorse, 0)
	SetModelAsNoLongerNeeded(model) -- Citizen.InvokeNative(0x4AD96EF928BD4F9A, model)
	Citizen.InvokeNative(0xD3A7B003ED343FD9, myHorse, 0x1EE21489, true, true, true)
    Citizen.InvokeNative(0x23f74c2fda6e7c61, -1230993421, myHorse)
end

--Police cuff


function GetClosestPlayer()
    local players, closestDistance, closestPlayer = GetActivePlayers(), -1, -1
    local playerPed, playerId = PlayerPedId(), PlayerId()
    local coords, usePlayerPed = coords, false
    
    if coords then
        coords = vector3(coords.x, coords.y, coords.z)
    else
        usePlayerPed = true
        coords = GetEntityCoords(playerPed)
    end
    
    for i=1, #players, 1 do
        local tgt = GetPlayerPed(players[i])

        if not usePlayerPed or (usePlayerPed and players[i] ~= playerId) then

            local targetCoords = GetEntityCoords(tgt)
            local distance = #(coords - targetCoords)

            if closestDistance == -1 or closestDistance > distance then
                closestPlayer = players[i]
                closestDistance = distance
            end
        end
    end
    return closestPlayer, closestDistance
end


 RegisterNetEvent('vorp_ml_policejob:cuff')
AddEventHandler('vorp_ml_policejob:cuff', function()
		local playerPed = PlayerPedId()
        SetEnableHandcuffs(playerPed, true)
		    
		print ("cuffplayer")
   
end)

--IsPedCuffed(playerPed, true)

 RegisterNetEvent('vorp_ml_policejob:uncuff')
AddEventHandler('vorp_ml_policejob:uncuff', function()
    local playerPed = PlayerPedId()
    UncuffPed(playerPed)
	
    print ("uncuffplayer")
    
end)

RegisterNetEvent('vorp_ml_policejob:hogtie')
AddEventHandler('vorp_ml_policejob:hogtie', function()
	isLasso = not isLasso
	local playerPed = PlayerPedId()

	Citizen.CreateThread(function()
		if isLasso then
            TaskKnockedOutAndHogtied(playerPed, false, false)
			SetEnableHandcuffs(playerPed, true)
			DisablePlayerFiring(playerPed, true)
			SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true) -- unarm player
			SetPedCanPlayGestureAnims(playerPed, false)
			DisplayRadar(false)
        elseif not isLasso then
            ClearPedTasksImmediately(playerPed, true, false)
			ClearPedSecondaryTask(playerPed)
			SetEnableHandcuffs(playerPed, false)
			DisablePlayerFiring(playerPed, false)
			SetPedCanPlayGestureAnims(playerPed, true)
			DisplayRadar(true)
		end
	end)
end)



