function GetRole(id, role_id)
    Export = exports[Config.DiscordRoles.ResourceName]:HasRole(id, role_id)

    return Export
end

RegisterServerEvent(Config.General.EventName, function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    for k, v in pairs(Config.DiscordRoles.Roles) do
        if GetRole(source , tonumber(k)) then
            Grade = v
            break
        else
            Grade = 'N/A'
            xPlayer.showNotification(Config.Language.NotLSPD)
        end
    end

    if xPlayer.getJob().name == Config.Job.OffDutyName then
        if Grade ~= 'N/A' then
            xPlayer.setJob(Config.Job.PoliceName, Grade)
        else
            if xPlayer.getJob().name == Config.Job.PoliceName then
                xPlayer.setJob(Config.Job.OffDutyName, 0)
            end
        end
    else
        xPlayer.setJob(Config.Job.OffDutyName, 0)
    end
end)