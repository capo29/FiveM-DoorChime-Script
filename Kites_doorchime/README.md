# Simple Door Chime

A FiveM resource that plays door chime sounds when players open vehicle doors. Different vehicle types can use different chime sounds.

## Requirements

- FiveM server
- InteractSound resource (for playing sounds)

## Installation

1. Place the `Kites_doorchime` folder in your server's `resources` directory
2. Add `ensure Kites_doorchime` to your `server.cfg`
3. Make sure InteractSound is installed and running
4. Add your sound files to the InteractSound resource

## Configuration

Edit `config.lua` to customize the script:

### Vehicle List

Add vehicles to `Config.VehicleList` using their spawn code (display name). Each vehicle needs:
- `vehicleName`: The vehicle's display name (spawn code)
- `vehicleType`: Either `'ford'` or `'chevrolet'` to determine which sound plays

Example:
```lua
{
    vehicleName = 'fpiu1',
    vehicleType = 'ford'
}
```

### Sound Files

Set the sound file names in the config:
- `Config.FordSound`: Sound file name for Ford vehicles (without .ogg extension)
- `Config.ChevroletSound`: Sound file name for Chevrolet vehicles (without .ogg extension)

These files must exist in your InteractSound resource.

### Sound Settings

- `Config.SoundVolume`: Volume level from 0.0 to 1.0
- `Config.SoundDistance`: Distance the sound can be heard from (in game units)
- `Config.MaxTriggerDistance`: Maximum distance player can be from vehicle to trigger the chime
- `Config.ChimeCooldown`: Time in milliseconds before the chime can play again

## How It Works

The script checks if:
1. A vehicle door is open (door angle > 0)
2. The player is within the configured distance from the vehicle
3. The vehicle matches an entry in the vehicle list

When all conditions are met, it plays the appropriate chime sound based on the vehicle type.

## Finding Vehicle Names

To find a vehicle's display name:
1. Spawn the vehicle in-game
2. Use a command or script that shows vehicle info
3. The display name is usually the spawn code in uppercase

## Notes

- The script only checks the driver's side front door (door index 0)
- Make sure your sound files are properly formatted and added to InteractSound
- The cooldown prevents the chime from playing repeatedly when doors are opened and closed quickly
