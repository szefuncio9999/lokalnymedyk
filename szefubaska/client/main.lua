ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

local allow = false
local allow1 = false

RegisterNetEvent('szef')
AddEventHandler('szef', function()

	allow = true 

end)

RegisterNetEvent('szef1')
AddEventHandler('szef1', function()

	allow1 = true 

end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)

		local ped = GetPlayerPed(-1)
		local playercoord = GetEntityCoords(ped)
		local vector = vector3(296.9, -590.29, 43.27)

		if Vdist2(vector , playercoord) < 3 then
			if IsControlJustPressed(1 ,46) then
				OpenSearchMenu()

			end
		end
	end
end)

function OpenSearchMenu()

	local elements = {}

	table.insert(elements, {label = "karta 1000$", value = 'bank'})

	table.insert(elements, {label = "banknoty 1100$", value = 'kasa'})

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'body_search', {
		title    = "metody zaplaty",
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
		if data.current.value == 'bank' then
			TriggerServerEvent('basia:custompay', 10)
			Citizen.Wait(200)
			if allow then
				TriggerEvent('basiunia')
			end
		elseif data.current.value == 'kasa' then
			TriggerServerEvent('basia:custompay', 20)
			Citizen.Wait(200)
			if allow1 then
				TriggerEvent('basiunia')
			end
		end
	end, function(data, menu)
		menu.close()
	end)
end

RegisterNetEvent('basiunia')
AddEventHandler('basiunia', function()
	

	local ped = GetPlayerPed(-1)

		FreezeEntityPosition(ped, true)

		TriggerServerEvent("baska:revive")

		ESX.ShowNotification('lekarz zaczyna leczenie', 'jd3')

		Citizen.Wait(1000)

		ESX.ShowNotification('5', 'jd2')

		Citizen.Wait(1000)

		ESX.ShowNotification('4', 'jd1')

		Citizen.Wait(1000)

		ESX.ShowNotification('3', 'jd wa')

		Citizen.Wait(1000)

		ESX.ShowNotification('2', 'jd was ')

		Citizen.Wait(1000)

		ESX.ShowNotification('1', 'jd was wszytskich')

		Citizen.Wait(1000)

		TriggerServerEvent('basia:revive')

		Citizen.Wait(1000)

		ESX.ShowNotification('~r~zapł~g~aciłeś', 'zapłaciłeś')

		FreezeEntityPosition(ped, false)

		startTimer()

end)

RegisterCommand('wylaczmenubaska', function()

ESX.UI.Menu.CloseAll()

end)

AddEventHandler('baska:noweapon4u', function()
    local ped = GetPlayerPed(-1)

    startTimer()
end)

function startTimer()
	print('dddddddd1231232132131232131231')
    local timer = 10 * 30000

    while timer > 0 do
        Wait(1000)
		SetCurrentPedWeapon(GetPlayerPed(-1), 0xA2719263, true)
		print('jestesszefem')
        timer = timer - 1000
        if timer == 0 then

        end
    end
end

Citizen.CreateThread(function()
    
    RequestModel(GetHashKey("s_m_m_doctor_01"))
    while not HasModelLoaded(GetHashKey("s_m_m_doctor_01")) do
      Wait(1)
    end

      local hospitalped =  CreatePed(4, 0xd47303ac, 296.9, -590.29, 42.27, 259.39, false, true)
      SetEntityHeading(hospitalped, 49.404)
      FreezeEntityPosition(hospitalped, true)
      SetEntityInvincible(hospitalped, true)
      SetBlockingOfNonTemporaryEvents(hospitalped, true)
end)

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)	
		if GetDistanceBetweenCoords( 296.9, -590.29, 43.0, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( 296.9, -590.29, 43.0  -1.400, "Naciśnij E aby wybrać formę zapłaty", 4, 0.1, 0.1)
		end		
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(200, 197, 0, 255)
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end

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