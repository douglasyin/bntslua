require "cfgBN4"
require "commonFunctions"

-- +----------------------------------+
-- | Kill all the invaders in sight
-- | -no map draging
-- +----------------------------------+
function repelInvader()
  local failure=0
  local x,y

  while true do  

    x,y = findMultiColorInRegionFuzzy(0xff8000, logoMultiColor.invasion,90,
                                              searchmap.x,searchmap.y,searchmap.x1,searchmap.y1) 

    -- dialog(string.format("%d,%d",x,y), 4 )

    if x~=-1 and y~=-1 then
      
      click(x,y)
      mSleep(500) 

      click(x,y-220)
      
      rx = waitMultiPixel( BM_glass_BS, 95, 30 )           --Wait the zoom button for 30 seconds
      -- rx = waitMultiPixel( BM_beginGrey, 95, 30 )           --Wait the round grey button for 30 seconds
      if rx == false then
        return false
      end

      deployTroop( units.invasion )

      click(BS_fight.x, BS_fight.y)

      rounds,finished,bigone = proceedAttackSequence( attackSequence.invasion, "DRAGON" )   -- Proceed the attack plan

      if finished==false then
        failure=failure+1
        appendLog(LOGFILE,"Battle failed #"..string.format("%d",failure))
      else
        failure=0
      end
      
      if failure==5 then
        return false        -- too many fails
      end       

      found = waitMultiPixel( MM_base, 90, 35 )              -- wait for the map mark: base shield button

      if found==true then
        appendLog(LOGFILE, "[Invader]"..string.format(" %d rounds", rounds) )
      else
        return false      -- home land not found
      end
    else        
      return  true
    end     
  end     
end



function bigFootFloor(count)
  t_start=os.time()
  tic=0

  local failure = 0

  for i=1,count do
    resetIDLETimer()
    b_start=os.time()
    tic=tic+1
    
    click( BFFx.x, BFFx.y )          --1. X
    -- click( BFFocc.x, BFFocc.y )      --2 Occ
    click( BFFbttl.x, BFFbttl.y )    --3 battle

    rx = waitMultiPixel( BM_beginGrey, 95, 30 )           --Wait the round grey button for 30 seconds
    if rx == false then
      return false
    end

    deployTroop( units[BIGFOOT_CURRENT] )

    -- click(1038,145)          --11 begin
    click(BS_fight.x, BS_fight.y)

    rounds,finished,bigone = proceedAttackSequence( attackSequence[BIGFOOT_CURRENT] )   -- Proceed the attack plan

    if finished==false then
      failure=failure+1
      appendLog(LOGFILE,"Battle failed #"..string.format("%d",failure))
    else
      failure=0
    end
    
    if failure==5 then
      return false        -- too many fails
    end       

    found = waitMultiPixel( MM_branchMap, 90, 35 )                      -- wait for the map mark: battle button
    -- rx,ry = waitForImage("smallhouse_v.png",90,171,1881,904,2047,0,35)

    if bigone==true then
      bf="Y"
    else
      bf="N"
    end

    -- if rx~=-1 and ry~=-1 and failure<=1 then
    if found==true then
      now=os.time()
      bt=now-b_start
      tt=now-t_start
      appendLog(LOGFILE, 
        "[BFF]"..string.format("[%s]",BIGFOOT_CURRENT).."-BBF:"..bf..string.format(" battle %d, %d rounds, %d sec, Totally %d sec, %4.1f sec/battle,%d SP, %d Gold", 
        tic, rounds, bt, tt, tt/tic, tic*267, tic*2430))
    else
      return false      -- home land not found
    end

  end   -- end of for

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

  BS_CURRENT=BS_NORMAL
  return "normal"

end

-- +----------------------------------+
-- | fight the Boss Strike battle
-- +----------------------------------+
function bossStrike(count)
  local  battlefield,rounds,bt,tt
  t_start=os.time()
  tic=0

  rounds=0
  bt=0
  tt=0
  local failure = 0

  for i=1,count do
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
    end

    found = waitMultiPixel( MM_BS13_Fght, 90, 30 )              -- wait for the map mark: battle button

    if found==false then
      found = waitMultiPixel( MM_BS13_ad, 90, 3 )               -- Limited time offer AD
      if found==true then
        click( MM_BS13_ad[1].x, MM_BS13_ad[1].y)
        found = waitMultiPixel( MM_BS13_Fght, 90, 10 )
      end
    end

    if found==true then
      now=os.time()
      bt=now-b_start
      tt=now-t_start
      appendLog(LOGFILE, "[BS]"..string.format("[%s] battle %d, %d togo. %d rounds, %d sec, Totally %d sec, %4.1f sec/battle", 
                                                BS_CURRENT, tic, count-i, rounds, bt, tt, tt/tic ) )
      rounds=0
    else
      return false,i      -- 
    end
    mSleep(2000)
  end   -- end of for

  return true
end


-- +----------------------------------+
-- |   Main code start point
-- +----------------------------------+

choice = dialogRet("Chose your Mission","Dragon","BS","Bigfoot",10)
    
if choice==0 then
  init("0",0)
  mSleep(500)

  -- click(5,5)

  success=repelInvader()

  lockDevice()
  lua_exit()  
  -- lua_exit()
end


if choice==1 then     -- Boss Strike
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

            found = waitMultiPixel( MM_BS13_logo, 90, 15 )            -- wait for the world map mark

            sucess=false
            if found==true then
              click( MM_BS13_logo[1].x, MM_BS13_logo[1].y )
              sucess=waitMultiPixel( MM_BS13_Fght, 90, 10)           -- Boss strike fight button
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
end

if choice==2 then     --bigfoot
  init("0",0)
  mSleep(500)

  click(5,5)

  success=true

  while success==true do

    fine = bigFootFloor( 500 )

    if fine==false then     -- failed fighting on bigfoot land
      appendLog(LOGFILE, "Bigfoot's home is a mess, begin to clean it up")
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

        cleared = clearLastBattle()
        if cleared == "done" then
          success = true
          break
        else 
          if cleared == "none" then     -- no battle scene found, go to world map
            -- mSleep(1000)
            -- click(1173,101)           -- World map button
            click(BS_worldmap.x, BS_worldmap.y)

            found = waitMultiPixel( MM_worldMap, 90, 25 )            -- wait for the world map mark

            sucess=false
            if found==true then
              sucess=gotoBigfootHome()
            end

            if sucess == true then          -- our troop is right on position
              appendLog(LOGFILE,"Enter bigfoot land, ready to fight")
              break
            end
          end
        end   -- if cleared=="done"
      end  -- for
    end    -- if

  end
  lockDevice()
  lua_exit()
end