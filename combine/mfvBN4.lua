require "commonFunctions"
require "cfgBN"



function findtheBigOne()
  keepScreen(ture)

  for i=1,3 do
    for j=1,5 do
      a=getColor(ehl[i][j].x-31,ehl[i][j].y-129)
      if (a>3000000 and a<3400000) then 
        keepScreen(false)
        return i,j,true
      end             
    end
  end

  keepScreen(false)
  return 2,3,false
end



function getBigBug( inaccuracy )
  local i,j,xx,yy,rx,ry,r
  inaccuracy=inaccuracy or 90

  keepScreen(ture)

  for i=1,2 do
    for j=1,5 do

      xx=bugleg[i][j].x
      yy=bugleg[i][j].y
      -- xx=ehl[i][j].x+51 -- -54
      -- yy=ehl[i][j].y-99 -- -79

      -- rx,ry=findColorInRegionFuzzy(bigbugshadow, inaccuracy, xx, yy, xx, yy)
      -- if rx ~= -1 and ry ~= -1 then
      -- aa=getColor(ehl[i][j].x+51,ehl[i][j].y-99)
      r=getColorRGB(xx,yy)
      -- if aa<8978432 and aa>8781824 then 
      if r<60 then
        keepScreen(false)
        return i,j,true
      end
    end
  end

  i=3
  for j=2,4 do
    xx=bugleg[i][j].x
    yy=bugleg[i][j].y
    -- xx=ehl[i][j].x+51 -- -54
    -- yy=ehl[i][j].y-99 -- -79

    -- rx,ry=findColorInRegionFuzzy(bigbugshadow, inaccuracy, xx, yy, xx, yy)
    -- if rx ~= -1 and ry ~= -1 then
    -- aa=getColor(ehl[i][j].x+51,ehl[i][j].y-99)
    r=getColorRGB(xx,yy)
    -- if aa<8978432 and aa>8781824 then 
    if r<60 then
      keepScreen(false)
      return i,j,true
    end
  end

  keepScreen(false)
  return 2,3,false

end

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
        os.date("%c").."[BFF]"..string.format("[%s]",BIGFOOT_CURRENT).."-BBF:"..bf..string.format(" battle %d, %d rounds, %d sec, Totally %d sec, %4.1f sec/battle,%d SP, %d Gold", 
        tic, rounds, bt, tt, tt/tic, tic*267, tic*2430))
    else
      return false      -- home land not found
    end

  end   -- end of for

  return true
end


--[[ Main code ]]

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
            click(1173,101)           -- World map button

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
-- end