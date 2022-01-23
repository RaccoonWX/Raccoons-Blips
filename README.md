# Raccoons-Blips
An easy-to-use script, for creating blips across your FiveM maps, can be used for custom maps, or San Andreas.

## Frequently Asked Questions

### Some blips are't showing why is that?
If you are using Blips from [FiveM's Docs](https://docs.fivem.net/docs/game-references/blips/) there could be a chance you are not running that game build, which is why you are not seeing the blip's show up.

### If I want blips that use a different game build to work, how do I change the server's game build?
Open up your server.cfg file, and put this anywhere in your server.cfg ```+set sv_enforceGameBuild [build]``` [build] being the build number, or name you want to use. [Click here](https://docs.fivem.net/docs/server-manual/server-commands/) for FiveM's available game build's.

## Configuration
```lua
local blips = {
    -- Los Santos
    {title="Premium Deluxe Motorsports", colour=0, id=523, x=-42.7, y=-1093.2, z=27.27}, -- Premium Deluxe Motorsports
    {title="LtD", colour=0, id=59, x=-51.77, y=-1755.6, z=29.42}, -- Grove St LtD Station
    {title="Hair Salon", colour=0, id=71, x=-821.79, y=-187.17, z=37.57}, -- Rockford Hills Hair Salon
    {title="Ponsonbys", colour=0, id=73, x=-715.44, y=-155.87, z=37.42}, -- Rockford Hills Ponsonbys
}
```
Adding in blip's is completely customizeable, you can easily change them if you'd like, or add more if you'd like. Click the item's below, for blip ID's as FiveM doesn't have all of the blips available in there documentation.

[FiveM Blips Docs](https://docs.fivem.net/docs/game-references/blips/)
[GTA Network Wiki](https://wiki.gtanet.work/index.php?title=Blips)
