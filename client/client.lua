CreateThread(function()
    while true do
        Timer = 500
            if GetDistanceBetweenCoords(GetEntityCoords(ESX.PlayerData.ped), Config.General.Location) < 2.0 then
                Timer = 0
                if Config.General.ShowHelpNotification then
                    ESX.ShowHelpNotification(Config.Language.HelpNotification)
                end
                if IsControlPressed(0, 38) then
                    Timer = 100
                    TriggerServerEvent(Config.General.EventName, GetPlayerServerId(PlayerId()))
                end
            else
                Timer = 500
            end

        Wait(Timer)
    end
end)

if Config.General.DrawMarker then
    CreateThread(function()
        while true do
            Timer = 500

            if GetDistanceBetweenCoords(GetEntityCoords(ESX.PlayerData.ped), Config.General.Location) < 5.0 then
                Timer = 0
                DrawMarker(Config.Marker.Type, Config.General.Location, Config.Marker.Dir.x, Config.Marker.Dir.y, Config.Marker.Dir.z, Config.Marker.Rot.x, Config.Marker.Rot.y, Config.Marker.Rot.z, Config.Marker.Scale.x, Config.Marker.Scale.y, Config.Marker.Scale.z, Config.Marker.RGBA.r, Config.Marker.RGBA.g, Config.Marker.RGBA.b, Config.Marker.RGBA.a, Config.Marker.BobUpAndDown, Config.Marker.FaceCamera, Config.Marker.P19, Config.Marker.Rotate)
            else
                Timer = 500
            end

            Wait(Timer)
        end
    end)
end