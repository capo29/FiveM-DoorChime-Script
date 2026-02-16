Config = {}

-- Vehicle list with door chime settings
Config.VehicleList = {
    {
        vehicleName = 'example',
        vehicleType = 'chevrolet'
    },
    {
        vehicleName = 'example',
        vehicleType = 'ford'
    },
    {
        vehicleName = 'example',
        vehicleType = 'chevrolet'
    },
    {
        vehicleName = 'example',
        vehicleType = 'ford'
    },
    {
        vehicleName = 'exmaple',
        vehicleType = 'chevrolet'
    },
    {
        vehicleName = 'exmaple',
        vehicleType = 'ford'
    }
}

-- Sound file names (without .ogg extension)
-- These should match the sound files in your InteractSound resource
Config.FordSound = 'fordchime'
Config.ChevroletSound = 'dodgechime'

-- Sound volume (0.0 to 1.0)
Config.SoundVolume = 0.9

-- Distance to play sound from vehicle (in game units)
Config.SoundDistance = 0.9

-- Maximum distance player can be from vehicle to trigger chime
Config.MaxTriggerDistance = 5.0

-- Cooldown time in milliseconds before chime can play again
Config.ChimeCooldown = 1600
