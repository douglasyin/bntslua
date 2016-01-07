require "cfgBN4"
-- +--------------------------------+
-- | Convert Hex color value
-- | to RGBs
-- +--------------------------------+
function hex2RGB(c)
  local r=math.modf(c/65536);
  local g=math.modf(c/256)%256;
  local b=c%256;
  return r,g,b
end


-- +--------------------------------+
-- | Fuzzy method of color compare
-- +--------------------------------+
function colorCompareFuzzy(c, c1, diff)
  diff=diff or 0
  local r,g,b = hex2RGB(c)
  local r1,g1,b1 = hex2RGB(c1)

  if math.abs(r-r1)<=diff and math.abs(g-g1)<=diff and math.abs(b-b1)<=diff then
    return true
  else
    return false
  end
end


function waitForMultiPixelFuzzy( tab, waitfor, diff )
  diff=diff or 0
  for i=1,waitfor*4 do
    mSleep(250)
    for j=1, #(tab) do
      xx=getColor(tab[j].x,tab[j].y)
      if colorCompareFuzzy(xx, tab[j].color, diff) == false then
        break
      end
    end 

    if j == #(tab) then
      return true
    end
  end
  return false
end


-- +--------------------------------+
-- | Wait until one pixel change to
-- | color, or timeout
-- +--------------------------------+
function waitPixel( x,y,color,waitfor,inaccuracy )
  inaccuracy=inaccuracy or 10

  for i=1,waitfor*4 do
    mSleep(250)
    xx=getColor(x,y)

    if  colorCompareFuzzy(xx, color, inaccuracy)==true then
      return true
    end   
  end

  return false
end


-- +--------------------------------+
-- | Wait until several pixels change
-- | to the preset color
-- +--------------------------------+
function waitMultiPixel(img,inaccuracy,waitfor)
  for i=1,waitfor*4 do
    mSleep(250)
    
    keepScreen(true)
    for j=1,#(img) do
      local rx = findColorInRegionFuzzy(img[j].color, inaccuracy, img[j].x, img[j].y, img[j].x, img[j].y)
      m=j
      if rx==-1 then
        break
      end
    end
    keepScreen(false) 

    if m == #(img) then
      return true
    end
  end

  return false
end

-- +--------------------------------+
-- | Wait until at least one pixel
-- | change to THE color
-- +--------------------------------+
function waitForTwoColor(color1,d1,x1,y1,color2,d2,x2,y2,waitfor)
    for i=1,waitfor*4 do
        mSleep(250)
        keepScreen(true)                
        local x1,y1 = findColorInRegionFuzzy(color1,d1,x1,y1,x1,y1)
        local x2,y2 = findColorInRegionFuzzy(color2,d2,x2,y2,x2,y2)
        keepScreen(false)               
        if  x1~=-1 or x2~=-1 then
          return x1,y1,x2,y2
        end   
    end
    return -1,-1,-1,-1
end


-- +--------------------------------------+
-- | victory dialog manipulate
-- | press 2 (or 3 in BS) confirm buttons
-- +--------------------------------------+
function vict_dialog(battlescene)
  battlescene=battlescene or "BIGFOOT"

  -- click(966,800)    -- ok
  click(BS_victok.x, BS_victok.y)
  mSleep(500)
  if battlescene=="BS" then
    click(BS_BS_BPOK.x, BS_BS_BPOK.y)
    mSleep(500)
  end
  -- click(1013,782)   -- ok2
  click(BS_victok2.x, BS_victok2.y)

end


-- +--------------------------------+
-- | drag from 1 to 2 in b steps
-- +--------------------------------+

function dragDrop(x1,y1,x2,y2,b)
  touchDown(x1,y1)
  mSleep(150)
  i=(x2-x1)/b
  j=(y2-y1)/b
  for step=1,b do
    touchMove(x1+i*step,y1+j*step)
    mSleep(15)
  end 
  mSleep(150)
  touchUp(x2,y2)
end

-- +----------------------------------+
-- | drag from p1 to p2, and precisly
-- | stop on p2, in b steps
-- +----------------------------------+

function preciseDrag(x1,y1,x2,y2,b)
  touchDown(x1,y1)
  mSleep(50)
  i=(x2-x1)/b
  j=(y2-y1)/b
  for step=1,b do
    touchMove(x1+i*step,y1+j*step)
    mSleep(25)
  end
  touchMove(x2-1,y2-1)
  mSleep(25)
  touchMove(x2,y2)
  mSleep(150)
  touchUp(x2,y2)
end



function mapZoomOut()
  mSleep(500)
  touchDown(4,1000,500)
  mSleep(300)
  touchDown(2,500,1500)
  mSleep(300)   
  touchMove(4,900,750)
  mSleep(30)
  touchMove(2,650,1350)
  mSleep(30)      
  touchMove(4,800,1000)
  mSleep(60)
  touchMove(2,800,1200)
  mSleep(60)
  touchUp(4,800,1000)
  mSleep(300)
  touchUp(2,800,1200)
  mSleep(300)
end


function click(x,y) 
  touchDown(x,y)
  mSleep(50)
  touchUp(x,y)
  mSleep(100)
end


-- +--------------------------------+
-- | quick version of click
-- +--------------------------------+
function touchScreen(x,y) 
  touchDown(x,y)
  mSleep(20)
  touchUp(x,y)
  mSleep(30)
end

-- +--------------------------------+
-- | find the img once every second
-- | return when found, or time is out
-- +--------------------------------+
function waitForImage( imgFile,d,x1,y1,x2,y2,color,seconds )
  local waitfor
  local xx=-1
  local yy=-1

  waitfor = 0
  for i=1,seconds do
    mSleep(1000)
    xx,yy=findImageInRegionFuzzy(imgFile,d,x1,y1,x2,y2,color)

    if (xx~=-1 and yy~=-1) or waitfor==seconds then
      return xx,yy,waitfor
    end
  end
end

-- +--------------------------------+
-- | --detect two imgs, return x,y 
-- | when at least one img appears 
-- +--------------------------------+
function waitForTwoImages( img1,d1,x1,y1,x2,y2,color1,img2,d2,x3,y3,x4,y4,color2,seconds )
  local waitfor
  local xx1=-1
  local yy1=-1
  local xx2=-1
  local yy2=-1

  waitfor = 0
  while true do
    mSleep(1000)

    xx1,yy1=findImageInRegionFuzzy(img1,d1,x1,y1,x2,y2,color1)
    xx2,yy2=findImageInRegionFuzzy(img2,d2,x3,y3,x4,y4,color2)

    if (xx1~=-1 and yy1~=-1) or (xx2~=-1 and yy2~=-1) or waitfor==seconds then
      return xx1,yy1,xx2,yy2
    end

    waitfor=waitfor+1

  end
end

-- +----------------------------------+
-- | Wait for some map mark
-- | and a list of promo pops
-- | (pops may appear after map mark 
-- | is found)
-- +----------------------------------+
function switchMapWithPop( map, pops, delay, waitfor )
  local popclicked=false
  local delayed=false

  for i=1,waitfor*2 do

    mSleep(500)

    -- 
    -- check for popup dialog one by one
    --
    if popclicked == false then
      for k=1, #(pops) do    -- check for pops
        keepScreen(true)
        
        for j=1,#(pops[k]) do     
          local rx = findColorInRegionFuzzy(pops[k][j].color, 70, 
                                            pops[k][j].x, pops[k][j].y, pops[k][j].x, pops[k][j].y)
          m=j
          if rx==-1 then
            break
          end
        end
        
        keepScreen(false) 

        if m == #(pops[k]) then    -- pop found, click it
          click( pops[k][1].x, pops[k][1].y )
          popclicked=true
          break
        end
      end
    end

    -- 
    -- check for map mark
    --
    keepScreen(true)
    
    for j=1,#(map) do     
      local rx = findColorInRegionFuzzy(map[j].color, 90, 
                                        map[j].x, map[j].y, map[j].x, map[j].y)
      m=j
      if rx==-1 then
        break
      end
    end
    
    keepScreen(false) 

    if m == #(map) then    -- map mark found
      if popclicked==true or delayed==true then
        return true
      else
        mSleep(delay*1000)   -- no pop found yet, delay for another [delay] seconds and check again
        delayed=true
      end
    end
  end

  return false
end


-- +--------------------------------+
-- | Traversal enemy grid 
-- +--------------------------------+

function beatit()
  for i=1,2 do
    for j=1,5 do
      touchDown(ehl[i][j].x,ehl[i][j].y)
      mSleep(50)
      touchUp(ehl[i][j].x,ehl[i][j].y)
      mSleep(50)
    end
  end
  for i=2,4 do
    touchDown(ehl[3][i].x,ehl[3][i].y)
    mSleep(50)
    touchUp(ehl[3][i].x,ehl[3][i].y)
    mSleep(50)
  end
  mSleep(50)

  touchScreen(764,1913)
end



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

      r=getColorRGB(xx,yy)

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

    r=getColorRGB(xx,yy)

    if r<60 then
      keepScreen(false)
      return i,j,true
    end
  end

  keepScreen(false)
  return 2,3,false

end


function lastPage()
  mSleep(1000)
  dragDrop(unitx,unity[9],unitx,unity[3],5)
  mSleep(1500)
  dragDrop(unitx,unity[9],unitx,unity[3],5)
  mSleep(1000)
  -- dragDrop(unitx,unity[9],unitx,unity[2],10)
  -- mSleep(1000)
  -- preciseDrag(unitx,unity[6],unitx,unity[3],10)
  -- dragDrop(unitx,unity[9],unitx,unity[2],7)
  -- mSleep(500)
end

function deployTroop( u )
  local row,col,row1,col1

  for i=1,#(u) do

    if u[i].cat ~= "hold" then
      click(unitselectx, unitselecty[u[i].cat])                -- unit category button
    end
    
    mSleep(300)
    pg=1                                              -- page
    while pg<=u[i].page do
      preciseDrag(unitx,unity[11]-5,unitx,unity[1]+6,20)
      mSleep(200)
      pg=pg+1
    end

    if u[i].page == -1 then
      lastPage()
    end

    mSleep(u[i].delay)

    mSleep(200)

    for j=1,u[i].num do                           -- deploy the unit(s)
      touchScreen(unitx, unity[u[i].pos])
    end

    if #(u[i].drag)>0 then
      mSleep(500)
    end

    for k=1,#(u[i].drag)/4 do                    -- drag unit(s) to the right position
      local start=4*(k-1)+1
      row=u[i].drag[start]
      col=u[i].drag[start+1]
      row1=u[i].drag[start+2]
      col1=u[i].drag[start+3]

      dragDrop(hl[row][col].x,hl[row][col].y,hl[row1][col1].x,hl[row1][col1].y,5)

    end
  end
end


-- +--------------------------------+
-- | Compute the weapon coordinate
-- +--------------------------------+
function weaponCoordinate( wpn, armrack, ammorack )
  local c
  c = 1700 - 130*wpn - 95*(armrack-1) + (armrack-ammorack)*40
  return 1484,c
end


-- +--------------------------------+
-- | retreat from battle
-- +--------------------------------+
function retreat( battlescene )
  battlescene=battlescene or "BIGFOOT"

  for i=1,3 do              -- touch pullback button 2 or 3 times
    click(BS_pullback.x, BS_pullback.y)
    mSleep(200)
  end
  mSleep(500)

  if battlescene=="BS" then     -- BS extra confirm
    touchScreen(BS_BS_PULLBACKCONFIRM.x, BS_BS_PULLBACKCONFIRM.y)
    mSleep(500)
  end

  touchScreen(BS_pullbackok.x, BS_pullbackok.y)   -- confirm
end


-- +----------------------------------+
-- | One by one 
-- | excute the given attack sequence
-- +----------------------------------+
function proceedAttackSequence( as, battlescene )
  local xx,yy
  local c1,c2
  local row,col,row1,col1
  battlescene=battlescene or "BIGFOOT"

  bigonefound=false

  for i=1,#(as) do
    resetIDLETimer()
    if i==1 then
      local v = waitPixel(BS_abort.x, BS_abort.y, BS_abort.color,15)       --abortx, aborty, abortcolor,
      if v==false then                                          -- timeout, mission failed
        return i,false,false
      end
    end
 
    if battlescene=="BS" then     -- for env damage delay
      mSleep(1000)
    end

    xx=hl[as[i].row][as[i].col].x     -- get unit position
    yy=hl[as[i].row][as[i].col].y

    click(xx,yy)                      -- activate unit

    if as[i].wpn~=-1 then
      wx,wy = weaponCoordinate(as[i].wpn, as[i].armrack, as[i].ammorack)
      -- dialog(string.format("%d,%d",wx,wy), 4)
      click(wx,wy)                   -- switch weapon
    end

    if as[i].drag==true or as[i].starget==1 then

      xi,yi,bigonefound=getBigBug(85)
      if bigonefound==true then

        if as[i].drag==true then               -- drag the aiming scope
          dragDrop(ehl[2][3].x, ehl[2][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)      -- indirect aiming scope drag
          dragDrop(ehl[1][3].x, ehl[1][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)      -- indirect aiming scope drag
        else
          click( ehl[xi][yi].x, ehl[xi][yi].y )   -- touch enemy block directly(no aiming scope)
          touchScreen(764,1913)
        end
      end
    end

    if as[i].aim==true then
      row = as[i].asdrag[1]
      col = as[i].asdrag[2]
      row1 = as[i].asdrag[3]
      col1 = as[i].asdrag[4]
      -- dialog(string.format("%d,%d,%d,%d",row,col,row1,col1),3)
      dragDrop( ehl[row][col].x, ehl[row][col].y, ehl[row1][col1].x, ehl[row1][col1].y, 5)
    end

    beatit()                    -- gatling method fire

    if i<#(as) then             -- we are in middle of attack sequence

      rx,ry,rx1,ry1 = waitForTwoColor(BS_victok.color,90,BS_victok.x,BS_victok.y,       -- 
                                      BS_abort.color, 90,BS_abort.x,BS_abort.y,15)

      if rx~=-1 and ry~=-1 then          -- victory dialog found
        vict_dialog(battlescene)
        return i,true,bigonefound
      else 
        if rx==-1 and ry==-1 and rx1==-1 and ry1==-1 then         -- timeout, mission failed
          return i,false,bigonefound
        end
      end
    else                              -- It's the Last round
      v = waitPixel(BS_victok.x, BS_victok.y, BS_victok.color,20)
      if v==false then
        retreat(battlescene)          -- timeout, retreat
        return i,false,bigonefound
      else
        vict_dialog(battlescene)                -- victory dialog found
        return i,true,bigonefound
      end
    end                 -- [ if i<attacks ]
    mSleep(200)
  end    -- [for i=1,attacks do]
end



function clearLastBattle(battlescene)
  local found
  local rx,ry
  local x,y
  battlescene=battlescene or "BIGFOOT"
  
  found = waitMultiPixel( BM_savedBttl, 80, 2 )

  -- if x~=-1 and y~=-1 then
  if found == true then

    mSleep(500)
    click(BM_savedBttl[2].x,BM_savedBttl[2].y)    -- #update mark

    local v = waitPixel(BS_abort.x, BS_abort.y, BS_abort.color,15)

    if v == false then
      return "timeout"        -- timeout, abort mission
    end

    mSleep(200)
    for i=1,2 do          -- touch the pull back button twice
      click(BS_pullback.x, BS_pullback.y)
      mSleep(100)
    end
    mSleep(1300)
    
    if battlescene=="BS" then
      touchScreen(BS_BS_PULLBACKCONFIRM.x, BS_BS_PULLBACKCONFIRM.y)
      mSleep(500)
    end
    
    touchScreen(BS_pullbackok.x, BS_pullbackok.y)
    mSleep(500)

    click(BS_victok2.x, BS_victok2.y)

    v = waitMultiPixel( MM_branchMap, 90, 5 )
    if v == true then    -- clearing mission acommplished, map mark found
      return "done"
    else
      return "timeout"       -- timeout, no map mark
    end

  end

  return "none"       -- No battle scene found
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

-- +--------------------------------+
-- | Try relaunch BN 5 times
-- | until the worldmap button is found
-- +--------------------------------+
function reEnterBN()
  RELAUNCH = RELAUNCH+1
  if RELAUNCH == RELAUNCH_MAX then
    return "close"
  end

  for i=1,5 do      -- Try 5 times
    resetIDLETimer()
    closeApp("com.z2live.battlenations1")
    mSleep(5000)
    runApp("com.z2live.battlenations1")
    mSleep(10000)
    init("com.z2live.battlenations1",0)

    -- local found = waitMultiPixel( MM_base, 90, 80 )             -- wait for the base map mark: worldmap button
    local found = switchMapWithPop( MM_base, BS17_popups, 3, 80 )             -- wait for the worldmap button while searching pop ads

    if found==true then
      appendLog(LOGFILE, "relaunch battlenations: success")
      return true
    end
  end

  appendLog(LOGFILE, "relaunch battlenations: failed")
  return false
end



function saveScreen(filename,x,y,x1,y1,reason)
  snapshot(filename,x,y,x1,y1)
  appendLog(LOGFILE,"screen saved in "..filename)
end


function appendLog( logfile, str )
  initLog(logfile,0)
  wLog(logfile, str )
  closeLog(logfile)
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

    local found = switchMapWithPop( MM_BS13_Fght, BS17_popups, 2, 60 )             -- wait for the boss strike fight button while searching pop ads

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
