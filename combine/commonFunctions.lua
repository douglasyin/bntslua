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

  click(BS_victok.x, BS_victok.y)
  mSleep(500)

  if battlescene=="BS" then
    click(BS_BS_BPOK.x, BS_BS_BPOK.y)
    mSleep(500)
  end

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

-- +---------------------------------+
-- | find the img once every second
-- | return when found, or time is up
-- +---------------------------------+
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
-- | and a list of promotion/ad popups
-- | (pops may come up after map mark 
-- |  appears )
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

    if m == #(map) then      -- map mark found
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
      mSleep(30)
      touchUp(ehl[i][j].x,ehl[i][j].y)
      mSleep(30)
    end
  end
  for i=2,4 do
    touchDown(ehl[3][i].x,ehl[3][i].y)
    mSleep(30)
    touchUp(ehl[3][i].x,ehl[3][i].y)
    mSleep(30)
  end
  mSleep(30)

  touchScreen(764,1913)
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

    for j=1,u[i].num do                           -- deploy the unit(s)
      touchScreen(unitx, unity[u[i].pos])
      -- mSleep(200)
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


-- +------------------------------+
-- | Compute weapon coordinate
-- +------------------------------+
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
  local i,j,combo,ntimes,rounds,run
  battlescene=battlescene or "BIGFOOT"

  bigonefound=false
  rounds=0

  for i=1,#(as) do
    resetIDLETimer()
    
    ntimes=1
    combo=1
    
    if i==1 then
      local v = waitPixel(BS_abort.x, BS_abort.y, BS_abort.color,35)
      if v==false then                   -- timeout, mission failed
        return i,false,false
      end
    end

    -- if battlescene=="BS" then
    --   mSleep(1200)
    -- end

    if as[i].combo == true then    -- there is a combo to repeat
      combo  = as[i].loop[1]
      ntimes = as[i].loop[2]
    end


    run=1
    while run <= ntimes do         -- repeat the combo ntimes
      resetIDLETimer()
      j=i
      while j < i+combo do        -- do the combo ([combo] is the length of that list of attacks)

        if battlescene=="BS" then     -- for env damage delay
          mSleep(1300)
        end

        xx=hl[as[j].row][as[j].col].x     -- get unit position
        yy=hl[as[j].row][as[j].col].y

        click(xx,yy)                      -- activate unit

        if as[j].wpn~=-1 then
          wx,wy = weaponCoordinate(as[j].wpn, as[j].armrack, as[j].ammorack)
          click(wx,wy)                   -- switch weapon
        end

        --
        -- for bigfoot: finding the big N armored spiderwasp
        --
        if as[j].drag==true or as[j].starget==1 then

          xi,yi,bigonefound=getBigBug(85)

          if bigonefound==true then
            if as[j].drag==true then               -- drag the aiming scope
              dragDrop(ehl[2][3].x, ehl[2][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)     -- indirect aiming scope drag, from 2,3
              dragDrop(ehl[1][3].x, ehl[1][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)     -- indirect aiming scope drag, from 1,3
            end

            click( ehl[xi][yi].x, ehl[xi][yi].y )   -- touch target block directly
              -- click( ehl[xi][yi].x, ehl[xi][yi].y )   -- touch target block directly(no aiming scope)
              -- touchScreen(764,1913)
            -- end
          end
        end
        --
        -- aim the specific grid
        --
        if as[j].aim==true then
          row = as[j].asdrag[1]
          col = as[j].asdrag[2]
          row1 = as[j].asdrag[3]
          col1 = as[j].asdrag[4]
          -- dialog(string.format("%d,%d,%d,%d",row,col,row1,col1),3)
          dragDrop( ehl[row][col].x, ehl[row][col].y, ehl[row1][col1].x, ehl[row1][col1].y, 5)
          click( ehl[row1][col1].x, ehl[row1][col1].y )
        end

        beatit()                    -- gatling method fire

        rounds = rounds+1

        rx,ry,rx1,ry1 = waitForTwoColor(BS_victok.color, 80,BS_victok.x, BS_victok.y,       --  scan for two button simultaneously
                                        BS_abort.color, 80,BS_abort.x, BS_abort.y, 20)
        if rx~=-1 and ry~=-1 then          -- victory dialog found
          vict_dialog(battlescene)
          return rounds,true,bigonefound
        else 
          if rx==-1 and ry==-1 and rx1==-1 and ry1==-1 then      -- timeout, mission failed
            return rounds,false,bigonefound
          end
        end

        j=j+1
      end   -- while j < i+combo do  (on single combo)
      run=run+1
    end     -- while run<=ntimes do   (the combo loop)

    i=j

    if i<#(as) then             -- we are in middle of attack sequence

      rx,ry,rx1,ry1 = waitForTwoColor(BS_victok.color, 80,BS_victok.x, BS_victok.y,       --  scan for two button simultaneously
                                      BS_abort.color, 80,BS_abort.x, BS_abort.y, 30)
      if rx~=-1 and ry~=-1 then          -- victory dialog found
        vict_dialog(battlescene)
        return rounds,true,bigonefound
      else 
        if rx==-1 and ry==-1 and rx1==-1 and ry1==-1 then      -- timeout, mission failed
          return rounds,false,bigonefound
        end
      end
    else                              -- It's the Last round
      v = waitPixel(BS_victok.x, BS_victok.y, BS_victok.color,30)
      if v==false and battlescene ~= "OCTOPUS" then
        retreat(battlescene)          -- timeout, retreat
        return rounds,false,bigonefound
      else
        vict_dialog(battlescene)      -- victory dialog found
        return rounds,true,bigonefound
      end
    end                 -- [ if i<attacks ]
    mSleep(200)
  end    -- [for i=1,#(as) do]
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

    if( battlescene=="BS" ) then
      v = switchMapWithPop( MM_BS13_Fght, promo_popups, 2, 60 )
    else
      v = waitMultiPixel( MM_branchMap, 90, 5 )
    end
    if v == true then    -- clearing mission acommplished, map mark found
      return "done"
    else
      return "timeout"       -- timeout, no map mark
    end

  end

  return "none"       -- No battle scene found
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

    local found = switchMapWithPop( MM_base, promo_popups, 3, 80 )   -- wait for the worldmap button while searching pop ads

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