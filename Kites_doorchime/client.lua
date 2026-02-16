Citizen.CreateThread(function()

    while true do

        Citizen.Wait(5)
        
        local ped = GetPlayerPed(-1)
        local veh = GetPlayersLastVehicle()

        if GetVehicleDoorAngleRatio(veh, 0) > 0.0 then

            if GetDistanceBetweenCoords(GetEntityCoords(ped), GetEntityCoords(veh), true) < Config.MaxTriggerDistance then

                for _, v in pairs(Config.VehicleList) do

                    if GetDisplayNameFromVehicleModel(GetEntityModel(veh)) == v.vehicleName then
    
                        if v.vehicleType == 'ford' then
    
                            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', Config.SoundDistance, Config.FordSound, Config.SoundVolume)
                            Citizen.Wait(Config.ChimeCooldown)
    
                        elseif v.vehicleType == 'chevrolet' then
    
                            TriggerServerEvent('InteractSound_SV:PlayWithinDistance', Config.SoundDistance, Config.ChevroletSound, Config.SoundVolume)
                            Citizen.Wait(Config.ChimeCooldown)
    
                        end
    
                    end
    
                end

            end

        else
            
        end

    end

end)