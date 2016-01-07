require "commonFunctions"
require "cfgBN"

function findGoodMan()
  local rx, ry, found

  while true do

    rx,ry=findImageInRegionFuzzy("tecourt.png", 95, 289,654,1487,1287, 0)

    if rx~=-1 and ry~=-1 then
      -- dialog("got cha", 5)
      return rx,ry
    end

    click(70,70)   -- close arena challenge dialog

    found = waitMultiPixel(BM_pvplogo, 90, 60)
    if found == true then
      click( BM_pvplogo[1].x, BM_pvplogo[1].y )
    else
      return -1,-1
    end

    found = waitMultiPixel(BM_arenalogo, 90, 15)
    if found == true then
      click( BM_arenalogo[2].x, BM_arenalogo[2].y )

      found = waitPixel(400, 146, 0xF26A21, 90, 50)     -- the list appears
      if found == false then      -- timeout
        return -1, -1
      end
    end

  end
end


function doPVP()
  local rx, rx1
  local failure=0

  for i=1,PVP_MAX do
    resetIDLETimer()
    rx = waitMultiPixel( BM_again, 80, 60)    -- wait for the "again" button

    if rx == false then
      return false
    end
    
    -- dialog("found",3)

    -- mSleep(1000)
    click( 574, 591)

    rx = waitMultiPixel( BM_nano, 95, 5 )           --Wait the nano button for 5 seconds

    if rx == true then
      click(BM_nano[3].x, BM_nano[3].y)          -- here is your nano!
      mSleep(500)
      click(BS_nanoconfirm.x, BS_nanoconfirm.y)  -- confirm

      rx1 = waitPixel(BS_nanook.x, BS_nanook.y, BS_nanook.color,90, 45)
      if rx == false then
        return false
      end
      click(BS_nanook.x, BS_nanook.y)      -- click ok

      rx = waitMultiPixel( BM_again, 70, 10)    -- wait for the "again" button
      if rx == false then
        return false
      end
      click( 574, 591)

    end

    rx = waitMultiPixel( BM_glass_BS, 95, 70 )           --Wait the round grey button for 30 seconds
    if rx == false then
      return false
    end

    deployTroop( units[PVP_CURRENT] )

    click(BS_fight.x, BS_fight.y)

    rounds,finished,bigone = proceedAttackSequence( attackSequence[PVP_CURRENT], "PVP" )   -- Proceed the attack plan

    if finished==false then
      failure=failure+1
      appendLog(LOGFILE,"pvp Battle failed #"..string.format("%d",failure))
    else
      failure=0
      appendLog(LOGFILE,os.date("%c")..string.format("pvp Battle # %d",i) )
    end
    
    if failure==5 then
      return false        -- too many fails
    end       
  end    -- for 

end


-- -- if choice==2 then
-- choice = dialogRet("Chose your Mission","Cancel","扫龙神器","投龙猪手",10)
    
-- if choice==1 then
--   init("0",0)
--   mSleep(500)

--   -- click(5,5)

--   success=repelInvader()

--   lockDevice()
--   lua_exit()  
--   -- lua_exit()
-- end

-- if choice==0 then
  init("0",0)
  mSleep(500)
  -- x,y = findGoodMan()
  -- dialog( string.format("%d, %d",x,y), 5 )
  doPVP()
  lockDevice()
  lua_exit()  
-- end

-- if choice==2 then
--   init("0",0)
--   mSleep(500)

--   dragonSet()

--   lockDevice()
--   lua_exit()
-- end