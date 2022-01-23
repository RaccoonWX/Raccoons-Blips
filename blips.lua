--[[
  ||       ____                                            ____  ___           
  ||      / __ \____ _______________  ____  ____  _____   / __ )/ (_)___  _____
  ||     / /_/ / __ `/ ___/ ___/ __ \/ __ \/ __ \/ ___/  / __  / / / __ \/ ___/
  ||    / _, _/ /_/ / /__/ /__/ /_/ / /_/ / / / (__  )  / /_/ / / / /_/ (__  ) 
  ||   /_/ |_|\__,_/\___/\___/\____/\____/_/ /_/____/  /_____/_/_/ .___/____/  
  ||                                                            /_/            																													
  ||                          Created by TheRaccoon#1023 
]]

local blips = {
    -- Los Santos
    {title="Premium Deluxe Motorsports", colour=0, id=523, x=-42.7, y=-1093.2, z=27.27}, -- Premium Deluxe Motorsports
    {title="LtD", colour=0, id=59, x=-51.77, y=-1755.6, z=29.42}, -- Grove St LtD Station
    {title="Hair Salon", colour=0, id=71, x=-821.79, y=-187.17, z=37.57}, -- Rockford Hills Hair Salon
    {title="Ponsonbys", colour=0, id=73, x=-715.44, y=-155.87, z=37.42}, -- Rockford Hills Ponsonbys
    {title="Ponsonbys", colour=0, id=121, x=-130.71, y=-1294.68, z=29.27}, -- Rockford Hills Ponsonbys
}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
    info.blip = AddBlipForCoord(info.x, info.y, info.z)
    SetBlipSprite(info.blip, info.id)
    SetBlipDisplay(info.blip, 4)
    SetBlipScale(info.blip, 0.9)
    SetBlipColour(info.blip, info.colour)
    SetBlipAsShortRange(info.blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(info.title)
    EndTextCommandSetBlipName(info.blip)
end
end)