  -- color =  https://docs.fivem.net/docs/game-references/blips/
  -- id = https://docs.fivem.net/docs/game-references/blips/
  -- vector3(X, Y, Z) = position X, Y, Z 

Blips = {}

Blips.Map = {
  {name = "Storage", color = 37, id = 291, pos = vector3(-1928.8347, 2060.1780, 140.8377)}, 
  {name = "Car rent", color = 37, id = 524, pos = vector3(-1913.9229, 2075.9680, 140.3837)},
} 






-----dont change this--------------------------------
local AllBlips = {}

Citizen.CreateThread(function()
      Citizen.Wait(1000)
    for _,v in pairs(Blips.Map) do
        local blipMap = AddBlipForCoord(v.pos)
        SetBlipSprite(blipMap, v.id)
        SetBlipDisplay(blipMap, 4)
        SetBlipScale(blipMap, 0.6)
        SetBlipColour(blipMap, v.color)
        SetBlipAsShortRange(blipMap, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(v.name)
        EndTextCommandSetBlipName(blipMap)
        SetBlipPriority(blipMap, 5)
    end
end)