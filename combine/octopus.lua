require "commonFunctions"
require "cfgBN"

function octopus()
  local rounds,finished,bigone

  local rx = waitMultiPixel( BM_beginGrey, 75, 30 )           --Wait the round grey button for 30 seconds
  if rx == false then
    return false
  end

  -- deployTroop( units[OCTOPUS_CURRENT] )

  -- click(BS_fight.x, BS_fight.y)

  rounds,finished,bigone = proceedAttackSequence( attackSequence[OCTOPUS_CURRENT], "OCTOPUS" )   -- Proceed the attack plan

end


--[[ Main code ]]

  init("0",0)
  mSleep(500)

  octopus()

  lockDevice()
  lua_exit()
-- end