local fuelSlot = 1
local fuelNeeded = 2
local fuel = turtle.getFuelLevel()


function checkFuel()
    if fuel < fuelNeeded then
     turtle.select(fuelSlot)
     print"Getting Fuel"
     turtle.refuel(fuelToConsume)
     return false
    end
    if fuel >= fuelNeeded then
        turtle.select(fuelSlot)
        print"Already Fueled"
        return true
    end
end

function gotoLayer(layer = 6)
    while true do
          local x,y,z = gps.locate()
          if y == layer then
            return true
          elseif layer<y then
            turtle.digDown() turtle.down()
          elseif layer>y then
            turtle.digUp() turtle.up()
          end
    end
  end
  
  gotoLayer(6)

function mining()
    local area = 0
    local tunel = 0

    while area < 100 do

        while tunel < 100 do
         turtle.dig()
        turtle.forward()
        turtle.digUp()
        turtle.digDown()
        end
    
    turtle.turnLeft()
    turtle.forward()
    turtle.dig()
    turtle.digDown()
    turtle.digUp()
    turtle.turnLeft()
    end

end