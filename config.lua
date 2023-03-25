Config = {
    General = {
        ShowHelpNotification = true,
        DrawMarker = true,
        EventName = 'alv_duty:toggle_duty',
        Location = vector3(440.486, -975.718, 30.689)
    },
    DiscordRoles = {
        ResourceName = 'DiscordRoles',
        Roles = {
            ['1080193922602647613'] = 7, -- Chief of Police
            ['1080194065515159593'] = 6, -- Assistant Chief
            ['1080194347296886865'] = 5, -- Captain
            ['1080194402934337727'] = 4, -- Lieutenant
            ['1080194442578886746'] = 3, -- Sergeant
            ['1080194525391237150'] = 2, -- Corporal
            ['1080194598313394227'] = 1, -- Officer
            ['1080194640571019375'] = 0 -- Recruit
        }
    },
    Marker = {
        Type = 2,
        Dir = {
            x = 0.0,
            y = 0.0, 
            z = 0.0
        },
        Rot = {
            x = 0.0,
            y = 0.0,
            z = 0.0
        },
        Scale = {
            x = 0.3,
            y = 0.25,
            z = 0.15
        },
        RGBA = {
            r = 0, 
            g = 128,
            b = 255,
            a = 200
        },
        BobUpAndDown = true,
        FaceCamera = true,
        P19 = false,
        Rotate = false
    },
    Job = {
        PoliceName = 'police',
        OffDutyName = 'unemployed'
    },
    Language = {
        NotLSPD = 'You are not LSPD.',
        HelpNotification = 'Press ~INPUT_CONTEXT~ to go on/off duty.'
    }
}