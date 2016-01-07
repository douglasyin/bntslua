require "commonFunctions"
require "cfgBN4"

-- +--------------------------------+
-- | Travel from worldmap to
-- | bitfoot's home
-- +--------------------------------+

function gotoBigfootHome()
  -- mapZoomOut()               -- Zoom out the map (assume that we are standing on the world map)
  -- mSleep(500)

  -- dragDrop(mapx.righttop,mapy.righttop,mapx.leftbottom,mapy.leftbottom,10)

  -- mSleep(500)
  -- click(150,800)             -- bigfoot's homeland
  -- mSleep(1000)

  -- click(map2big_x, map2big_y)

  gobf()

  local found = waitMultiPixel( MM_branchMap, 90, 35 )                      -- wait for the map mark: battle button
  if found==false then
    return false
  end

  -- mSleep(500)
  -- mapZoomOut()               -- Zoom out the map
  return true
end

-- +--------------------------------------------+
-- | set global variable BS_CURRENT 
-- | according to the type of each battle field
-- | return value: battle field name
-- +--------------------------------------------+
function setBossBattleField()
  local x,y

  x,y=findColorInRegionFuzzy(BS13_clgicon.color, 90, 
                             BS13_clgicon.x,BS13_clgicon.y,
                             BS13_clgicon.x,BS13_clgicon.y)
  if x~=-1 and y~=-1 then
    BS_CURRENT=BS_CHALLENGE
    return "challenge"
  end

  x,y=findColorInRegionFuzzy(BS16_land.color, 90, 
                             BS16_land.x,BS16_land.y,
                             BS16_land.x,BS16_land.y)
  if x~=-1 and y~=-1 then
    BS_CURRENT=BS_LAND
    return "BSland"
  end

  x,y=findColorInRegionFuzzy(BS16_bay.color, 90,
                             BS16_bay.x,BS16_bay.y,
                             BS16_bay.x,BS16_bay.y)
  if x~=-1 and y~=-1 then
    BS_CURRENT=BS_BAY
    return "BSbay"
  end

  x,y=findColorInRegionFuzzy(BS16_sea.color, 90,
                             BS16_sea.x,BS16_sea.y,
                             BS16_sea.x,BS16_sea.y)
  if x~=-1 and y~=-1 then
    BS_CURRENT=BS_SEA
    return "BSsea"
  end

  x,y=findColorInRegionFuzzy(BS21_snow.color, 90,
                             BS21_snow.x,BS21_snow.y,
                             BS21_snow.x,BS21_snow.y)
  if x~=-1 and y~=-1 then
    BS_CURRENT=BS_SEA
    return "BSsnow"
  end


  BS_CURRENT=BS_NORMAL
  return "normal"

end

-- +----------------------------------+
-- | fight the Boss Strike battle
-- +----------------------------------+
function bossStrike(count)
  local battlefield,rounds,bt,tt
  local pb
  t_start=os.time()
  tic=0

  rounds=0
  bt=0
  tt=0
  local failure = 0

  local i=1
  while i<=count do
  -- for i=1,count do
    pb = 0
    resetIDLETimer()
    b_start=os.time()
    tic=tic+1

    click( BS_BSFT.x, BS_BSFT.y )

    rx = waitMultiPixel( BM_glass_BS, 90, 30 )           --Wait the glass button for 30 seconds
    if rx == false then
      return false,i
    end

    battlefield=setBossBattleField()              -- set BS_CURRENT

    if BS_RETREAT[battlefield] == false then    -- It's OK, we can afford this...

      deployTroop( units[BS_CURRENT] )
      mSleep(1000)
      click(BS_fight.x, BS_fight.y)
      
      rounds,finished,bigone = proceedAttackSequence( attackSequence[BS_CURRENT], "BS" )     -- Proceed the attack plan

      if finished==false then
        failure=failure+1
        appendLog(LOGFILE,"Battle failed #"..string.format("%d",failure))
      else
        failure=0
      end
      
      if failure==5 then
        return false,i         -- too many fails
      end       
    else                     -- It's too damn hard, run, run forest!
      retreat("BS")
      pb=1
    end

    local found = switchMapWithPop( MM_BS13_Fght, promo_popups, 2, 60 )             -- wait for the boss strike fight button while searching pop ads

    -- found = waitMultiPixel( MM_BS13_Fght, 90, 30 )              -- wait for the map mark: battle button

    -- if found==false then
    --   found = waitMultiPixel( MM_BS13_ad, 90, 3 )               -- Limited time offer AD
    --   if found==true then
    --     click( MM_BS13_ad[1].x, MM_BS13_ad[1].y)
    --     found = waitMultiPixel( MM_BS13_Fght, 90, 10 )
    --   end
    -- end

    if found==true then
      now=os.time()
      bt=now-b_start
      tt=now-t_start
      appendLog(LOGFILE, "[BS]"..string.format("[%s] battle %d, %d togo. %d rounds, %d sec, Totally %d sec, %4.1f sec/battle", 
                                                BS_CURRENT, tic, count-i+pb, rounds, bt, tt, tt/tic ) )
      rounds=0
    else
      return false,i      -- 
    end
    mSleep(2000)

    i = i + 1 - pb
  end   -- end of while

  return true
end


-- +----------------------------------+
-- |   Main code start point
-- +----------------------------------+

  init("0",0)
  mSleep(500)

  click(5,5)

  success=true

  togo=BOSS_COUNT
  num=0
  while success==true do
    togo=togo-num


    fine,num = bossStrike( togo )

    if fine==false then     -- failed fighting on bigfoot land
      appendLog(LOGFILE, "Boss is missing, reload BN")
      for i=1,5 do            -- try relaunch BN and go to bigfoot's home for 5 times

        success=reEnterBN()   -- kill and relaunch BN
        if success == false then
          appendLog(LOGFILE, "relaunch Battle nations app failed, locking device...")
          lockDevice()
          lua_exit()
        end

        if success == "close" then
          appendLog(LOGFILE, "Too many reloads, exiting...")
          lockDevice()
          lua_exit()
        end

        click(adsafe.x,adsafe.y)

        cleared = clearLastBattle("BS")
        if cleared == "done" then          -- Quit battle success
          success = true
          break
        else 
          if cleared == "none" then     -- No battle scene found, try find BS button

            found = waitMultiPixel( MM_BS13_logo, 80, 15 )            -- wait for the world map mark

            sucess=false
            if found==true then
              click( MM_BS13_logo[1].x, MM_BS13_logo[1].y )
              sucess=waitMultiPixel( MM_BS13_Fght, 80, 10)           -- Boss strike fight button
            end

            if sucess == true then          -- ready
              appendLog(LOGFILE,"Enter BS battle field, ready to fight")
              break
            end
          end
        end   -- if cleared=="done"
      end  -- for
    end    -- if

    if fine==true then
      break
    end
  end
  lockDevice()
  lua_exit()
