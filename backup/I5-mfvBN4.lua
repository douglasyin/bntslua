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


function vict_dialog()
    click(525,351)    -- ok
    mSleep(500)
    click(570,345)   -- ok2
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


-- function dropDrag(x1,y1,x2,y2)
--   touchDown(x1,y1)
--   mSleep(50)
--   touchMove(x1,y2)
--   mSleep(50)
--   touchUp(x1,y2)
--   mSleep(50)
-- end

-- +--------------------------------+
-- | drag from p1 to p2, and precisly
-- | stop on p2
-- +--------------------------------+

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
  touchMove(4,900,7500)
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


-- +--------------------------------+
-- | Traversal enemy grid 
-- +--------------------------------+

function beatit()
  for hi=1,2 do
    for i=1,5 do
      touchDown(ehl[hi][i].x,ehl[hi][i].y)
      mSleep(50)
      touchUp(ehl[hi][i].x,ehl[hi][i].y)
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


function deployTroop( u )
  local row,col,row1,col1

  for i=1,#(u) do
    click(unitselectx, unitselecty[u[i].cat])                -- unit category button
    
    mSleep(300)
    pg=1                                              -- page
    while pg<=u[i].page do
      preciseDrag(unitx,unity[11],unitx,unity[1],20)
      mSleep(200)
      pg=pg+1
    end
    mSleep(u[i].delay)

    mSleep(200)

    for j=1,u[i].num do                           -- deploy unit(s)
      touchScreen(unitx, unity[u[i].pos])
    end

    for k=1,#(u[i].drag)/4 do                     -- drag unit(s) to the right position
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



function proceedAttackSequence( as )
  local xx,yy
  local c1,c2

  bigonefound=false

  for i=1,#(as) do

    if i==1 then
      local v = waitPixel(abortx, aborty, abortcolor,15)
      if v==false then                                          -- timeout, mission failed
        return i,false,false
      end
    end
 
    xx=hl[as[i].row][as[i].col].x     -- get unit position
    yy=hl[as[i].row][as[i].col].y

    click(xx,yy)                      -- activate unit

    if as[i].wpn~=-1 then
      wx,wy = weaponCoordinate(as[i].wpn, as[i].armrack, as[i].ammorack)
      
      click(wx,wy)                   -- switch weapon
    end

    if as[i].drag==true and as[i].trow==-1 and as[i].tcol==-1 then             -- drag the aiming scope
      xi,yi,bigonefound=findtheBigOne()
      if bigonefound==true then
        dragDrop(ehl[2][3].x, ehl[2][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)      -- indirect aim scope drag
      end
    end

    if as[i].drag==true and as[i].trow~=-1 then
      xi = as[i].trow
      yi = as[i].tcol
      dragDrop(ehl[1][3].x, ehl[1][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)
    end

    if as[i].trow~=-1 then                                    -- single fire
      xx=ehl[as[i].trow][as[i].tcol].x
      yy=ehl[as[i].trow][as[i].tcol].y

      click(xx,yy)
    else
      beatit()                                                    -- gatlin method fire
    end

    if i<#(as) then
      -- rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,       --wait for victory dialog or
      --                                  "abort_esv.png",90,298,1913,339,1940,0,16)   --the abort button for 16 sec
      -- dialog( string.format("%d,%d,%06x",BS_victok.x,BS_victok.y,BS_victok.color), 5 )
      rx,ry,rx1,ry1 = waitForTwoColor(BS_victok.color,90,BS_victok.x,BS_victok.y,
                                      BS_abort.color, 90,BS_abort.x,BS_abort.y,15)

      if rx~=-1 and ry~=-1 then
        vict_dialog()
        return i,true,bigonefound
      else 
        if rx==-1 and ry==-1 and rx1==-1 and ry1==-1 then         -- timeout, mission failed
          return i,false,bigonefound
        end
      end
    else                         -- Last round
      v = waitPixel(BS_victok.x, BS_victok.y, BS_victok.color,20)
      if v==false then
      for i=1,3 do
          click(125,1096)             -- touch pullback button 2 times    I5
          mSleep(200)
        end
        mSleep(500)
        touchScreen(525,351)          -- ok          I5
        return i,false,bigonefound
      else
        vict_dialog()                -- victory dialog found, 2 OKs
        return i,true,bigonefound
      end
    end                 -- [ if i<attacks ]

  end    -- [for i=1,attacks do]
end



function clearLastBattle()
  local found
  local rx,ry
  local x,y

   -- x,y=findImageInRegionFuzzy("savedbattle_v.png",70,200,10,400,110,0)     -- The red X

   -- x,y=findImageInRegionFuzzy("savedbattletz_v.png",70,294,21,392,103,0)     -- The red X  
  -- x,y = findColorInRegionFuzzy(0xba5100,70,334,61,334,61)
  -- found = waitMultiPixel( BM_savedBttl, 90, 3 )
  
  found = waitMultiPixel( BM_savedBttl, 80, 2 )

  -- if x~=-1 and y~=-1 then
  if found == true then
  -- if x~=-1 and y~=-1 then
  -- if found == true then
    -- dialog("yes",3)
    mSleep(500)
    click(963,96)
    -- click(x+5,y+5)
    local v = waitPixel(BS_abort.x, BS_abort.y, BS_abort.color,15)

    mSleep(200)
    for i=1,2 do          -- touch the pull back button 2 times
      click(210,1985)
      mSleep(100)
    end
    mSleep(1300)
    
    click(965,800)    --ok
    mSleep(300)

    click(1015,780) --ok2
    mSleep(200)
    return true   
  end
  return false
end

-- +--------------------------------+
-- | Travel from worldmap to
-- | bitfoot's home
-- +--------------------------------+

function gotoBigfootHome()
  mapZoomOut()               -- Zoom out the map (assume that we are standing on the world map)
  mSleep(500)

  dragDrop(mapx.righttop,mapy.righttop,mapx.leftbottom,mapy.leftbottom,10)

  mSleep(500)
  click(150,800)             -- bigfoot's homeland
  mSleep(1000)

  -- rx,ry=findImageInRegionFuzzy("bigfoot_home_v.png",90,0,0,300,1500,0)      -- find the "goto" button
  -- if rx==-1 and ry==-1 then
  --   return false
  -- end

  -- click(rx,ry)

  click(map2big_x, map2big_y)

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
  if RELAUNCH == 20 then
    return "close"
  end

  for i=1,5 do      -- Try 5 times
    resetIDLETimer()
    closeApp("com.z2live.battlenations1")
    mSleep(5000)
    runApp("com.z2live.battlenations1")
    mSleep(10000)
    init("com.z2live.battlenations1",0)

    local found = waitMultiPixel( MM_base, 90, 60 )             -- wait for the base map mark: worldmap button

    if found==true then
      appendLog("mm.log", "relaunch battlenations: success")
      return true
    end
  end

  appendLog("mm.log", "relaunch battlenations: failed")
  return false
end



function saveScreen(filename,x,y,x1,y1,reason)
  snapshot(filename,x,y,x1,y1)
  appendLog("mm.log","screen saved in "..filename)
end


function appendLog( logfile, str )
  initLog(logfile,0)
  wLog(logfile, str )
  closeLog(logfile)
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

    -- rx,ry=waitForImage("begin_grey_esv.png",90,740,1904,794,1940,0,20)  --Wait the round grey button for 30 seconds
    -- if rx==-1 and ry==-1 then

    rx = waitMultiPixel( BM_beginGrey, 95, 30 )           --Wait the round grey button for 30 seconds
    if rx == false then
      return false
    end

    deployTroop( units[BIGFOOT_CURRENT] )

    click(306,82)          --11 begin

    rounds,finished,bigone = proceedAttackSequence( attackSequence[BIGFOOT_CURRENT] )   -- Proceed the attack plan

    if finished==false then
      failure=failure+1
      appendLog("mm.log","Battle failed #"..string.format("%d",failure))
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
      appendLog("mm.log", "[BFF]-BBF:"..bf..string.format(" battle %d, %d rounds, %d sec, Totally %d sec, %4.1f sec/battle,%d SP", 
        tic, rounds, bt, tt, tt/tic, tic*267))
    else
      return false      -- home land not found
    end

  end   -- end of for

  return true
end

--[[ Main code ]]


-- choice = dialogRet("请选择攻击类型","取消","全体巡逻","大脚",10)
    
-- if choice==0 then
--   lua_exit()
-- end
    
-- if choice==1 then
    
-- end

-- if choice==2 then
init("0",0)
mSleep(500)

click(5,5)

success=true

while success==true do

  fine = bigFootFloor( 500 )

  if fine==false then     -- failed fighting on bigfoot land
    appendLog("mm.log", "Bigfoot's home is a mess, begin to clean it up")
    for i=1,5 do            -- try relaunch BN and go to bigfoot's home for 5 times

      success=reEnterBN()   -- kill and relaunch BN
      if success == false then
        appendLog("mm.log", "relaunch Battle nations app failed, locking device...")
        lockDevice()
        lua_exit()
      end

      if success == "close" then
        appendLog("mm.log", "Too many reloads, exiting...")
        lockDevice()
        lua_exit()
      end

      click(adsafe.x,adsafe.y)

      cleared = clearLastBattle()
      if cleared == true then
        success = true
        break
      end
      mSleep(1000)
      click(1173,101)           -- World map button
      mSleep(5000)

      -- x,y=waitForImage("smallhouse_v.png",90,171,1881,1204,2047,0,25)
      found = waitMultiPixel( MM_worldMap, 90, 25 )                          -- wait for the world map mark

      sucess=false
      -- if x~=-1 and y~=-1 then 
      if found==true then
        sucess=gotoBigfootHome()
      end

      if sucess == true then  -- our troop is right on position
        appendLog("mm.log","Enter bigfoot land, ready to fight")
        break
      end

    end  -- for
  end    -- if

end
lockDevice()
lua_exit()
-- end