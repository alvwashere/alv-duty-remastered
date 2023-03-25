<h1 align='center'>Alv-Duty [Remastered]</a></h1>
<p align='center'><a href='https://discord.com/invite/5mdevs/'>Discord</a> - <a href='https://alv-gg.tebex.io/'>Website</a> - <a href='https://discord.gg/drilla'>My Server</a></b></h5>

<p align='center'><b>Check out my other resources by visiting the Discord or Website above!</b></p>

<hr>

### ❗ Installation

**1.** Install [Legion Discord API](https://legiondev.tebex.io/category/free-resources)
<br>
**2.** Clone this GitHub Repository
<br>
**3.** Add this resource to your `[esx]` directory.
<br>
**4.** Ensure the resource will start in your `server.cfg`
<br>
**5.** Configure the resource (Guide is below).

### ❗❗ Configuration

```
Config = {
    General = {
        ShowHelpNotification = true, -- Set this as 'true' to use ESX.ShowHelpNotification or 'false'.
        DrawMarker = true, -- Set this as 'true' to display a Marker at the Location or 'false' to draw nothing.
        EventName = 'alv_duty:toggle_duty', -- You don't need to touch this unless you want a custom event name.
        Location = vector3(440.486, -975.718, 30.689) -- The location for where the player should use the script.
    },
    DiscordRoles = {
        ResourceName = 'DiscordRoles', -- The name for the LegionDiscordAPI Resource
        Roles = { -- This is a table for all your Discord Roles.
            ['1080193922602647613'] = 7, -- Chief of Police
            ['1080194065515159593'] = 6, -- Assistant Chief
            ['1080194347296886865'] = 5, -- Captain
            ['1080194402934337727'] = 4, -- Lieutenant
            ['1080194442578886746'] = 3, -- Sergeant
            ['1080194525391237150'] = 2, -- Corporal
            ['1080194598313394227'] = 1, -- Officer
            ['1080194640571019375'] = 0 -- Recruit
            
            -- Example: ['Discord Role ID Here'] = Grade you want it to give here, -- Add a comment so you remember what role is what?
            
            --
        }
    },
    Marker = { -- https://docs.fivem.net/natives/?_0x28477EC23D892089
        Type = 2, -- https://docs.fivem.net/docs/game-references/markers/
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
        PoliceName = 'police', -- The on-duty name.
        OffDutyName = 'unemployed' -- The off-duty name.
    },
    Language = { -- If you do not want the script in English, feel free to modify it here!
        NotLSPD = 'You are not LSPD.',
        HelpNotification = 'Press ~INPUT_CONTEXT~ to go on/off duty.'
    }
}
```

<h2 align='center'>Future Updates:</a></h1>

**1.** Add Discord Webhook Logging to the server side with a new configuration file (anti-dumping webhooks).
<br>
**2.** Allow the script to toggle duties for multiple jobs than just Police.
