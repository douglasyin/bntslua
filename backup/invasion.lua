require "bigfoot_cfg"

in_x=0xffffff
in_posandcolor="32|6|0xd8f6a1,2|35|0x293e04"
inbig_x,inbig_y=186,131
inwild_x,inwild_y=1176,131
inraptor_x,inraptor_y=993,713

logoBaseColor={invasion=0xff8000}
logoMultiColor={invasion="1|49|0xff8000,14|49|0xff8000,16|49|0x000000,51|49|0x000000,85|49|0xff8000"}

-- atall_posandcolor="1|49|0xff8000,14|49|0xff8000,16|49|0x000000,51|49|0x000000,85|49|0xff8000"
atwild_posandcolor="32|40|0xf5ab00,0|82|0x000000"

atall_x1,atall_y1,atall_x2,atall_y2=100,150,1450,1800

map2big_x,map2big_y=150,800
map2wild_x,map2wild_y=1260,780
map2raptor_x,map2raptor_y=900,1490

function multiPixelColorTrigger( x,y,d,time )
  -- body
end


function hex2RGB(c)
  local r=math.modf(c/65536);
  local g=math.modf(c/256)%256;
  local b=c%256;
  return r,g,b
end


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

-- function waitForColor( x,y,color,waitfor,diff )
--   diff=diff or 20
--   for i=1,waitfor*4 do
--     mSleep(250)
--     xx=getColor(x,y)
--     -- if  xx==color then
--     if  colorCompareFuzzy(xx, color, diff)==true then
--       return true
--     end   
--   end
--   return false
-- end

function waitForColor(color,d,x,y,waitfor)
  for i=1,waitfor*4 do
    mSleep(250)
    -- keepScreen(true)    
    local rx,ry = findColorInRegionFuzzy(color,d,x,y,x,y)
    -- keepScreen(false)               
    if  rx~=-1 and ry~=-1 then
      return true
    end   
  end
  return false
end

function waitForTwoColor(color1,d1,x1,y1,color2,d2,x2,y2,waitfor)
    for i=1,waitfor*4 do
        mSleep(250)
        keepScreen(true)                
        local rx1,ry1 = findColorInRegionFuzzy(color1,d1,x1,y1,x1,y1)
        local rx2,ry2 = findColorInRegionFuzzy(color2,d2,x2,y2,x2,y2)
        keepScreen(false)               
        if  rx1~=-1 or rx2~=-1 then
          return rx1,ry1,rx2,ry2
        end   
    end
    return false
end


function waitFor3Color(color1,d1,x1,y1,color2,d2,x2,y2,color3,d3,x3,y3,waitfor)
    for i=1,waitfor*4 do
        mSleep(250)
        keepScreen(true)
        local rx1,ry1 = findColorInRegionFuzzy(color1,d1,x1,y1,x1,y1)
        local rx2,ry2 = findColorInRegionFuzzy(color2,d2,x2,y2,x2,y2)
        local rx3,ry3 = findColorInRegionFuzzy(color3,d3,x3,y3,x3,y3)
        keepScreen(false)               
        if  rx1~=-1 and rx2~=-1 and rx3~=-1 then
          return true
        end   
    end
    return false
end



function waitForTwoColor( x1,y1,color1,x2,y2,color2,waitfor )
  for i=1,waitfor*4 do
    mSleep(250)
    c1=getColor(x1,y1)
    c2=getColor(x2,y2)
    if c1==color1  or c2==color2 then
      return c1,c2
    end
  end
  return -1,-1
end


function vict_dialog()
    click(966,800)    -- ok
    mSleep(300)
    click(1013,782)   -- ok2
  end


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


function dropDrag(x1,y1,x2,y2)
  touchDown(x1,y1)
  mSleep(50)
  touchMove(x1,y2)
  mSleep(50)
  touchUp(x1,y2)
  mSleep(50)
end


function preciseDrag(x1,y1,x2,y2,b)
  touchDown(x1,y1)
  mSleep(50)
  i=(x2-x1)/b
  j=(y2-y1)/b
  for step=1,b do
    touchMove(x1+i*step,y1+j*step)
    mSleep(15)
  end
  touchMove(x2-1,y2-1)
  mSleep(15)
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

-- function click(x,y,timeDown,timeUp)
--   local timeDown=timeDown or 50
--   local timeUp=timeUp or 100

--   touchDown(x,y)
--   mSleep(timeDown)
--   touchUp(x,y)
--   mSleep(timeUp)
-- end

function click(x,y) 
  touchDown(x,y)
  mSleep(50)
  touchUp(x,y)
  mSleep(100)
end

--quick version of click
function touchScreen(x,y) 
  touchDown(x,y)
  mSleep(20)
  touchUp(x,y)
  mSleep(30)
end

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

--detect two imgs, return x,y when at least one img appears 
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
  for i=1,#(u) do
    click(unitselect.all, unitselecty)                -- unit category button
    touchScreen(unitselect[u[i].cat], unitselecty)      -- category
    
    mSleep(300)
    pg=1                                              -- page
    while pg<=u[i].page do
      preciseDrag(unitx,unity[16],unitx,unity[1],20)
      mSleep(400)
      pg=pg+1
    end
    mSleep(u[i].delay)

    mSleep(200)

    for j=1,u[i].num do                           -- deploy the unit(s)
      touchScreen(unitx, unity[u[i].pos])
    end
  end
end


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
      -- rx,ry=waitForImage("abort_esv.png",90,298,1913,339,1940,0,15)  --wait the abort button for 15 seconds
      -- if rx==-1 and ry==-1 then
      --   return i,false,false                                 -- timeout, mission failed
      -- end
      c=waitForColor(abortcolor, 15, abortx, aborty,15)
      if c==false then                                          -- timeout, mission failed
        return i,false,false
      end
    end

    -- click(764,1913) 
    mSleep(100)

    xx=hl[as[i].row][as[i].col].x     -- get unit position
    yy=hl[as[i].row][as[i].col].y

    appendLog("run", string.format("click %d,%d",xx,yy))
    click(xx,yy)                            -- activate unit

    if as[i].wpn~=-1 then
      wx,wy = weaponCoordinate(as[i].wpn, as[i].armrack, as[i].ammorack)
      click(wx,wy)                   -- switch weapon
    end

    if as[i].drag==true then             -- drag the aiming scope
      xi,yi,bigonefound=findtheBigOne()
      if bigonefound==true then
        dragDrop(ehl[2][3].x, ehl[2][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)      -- indirect aim scope drag
      end
    end

    if as[i].trgtx~=-1 then                                    -- single fire
      xx=ehl[as[i].trgtx][as[i].trgty].x
      yy=ehl[as[i].trgtx][as[i].trgty].y

      click(xx,yy)
    else
      beatit()                                                    -- gatlin method fire
    end

    if i<#(as) then
      -- rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,       --wait for victory dialog or
      --                                  "abort_esv.png",90,298,1913,339,1940,0,16)   --the abort button for 16 sec
      rx1,rx2=waitForTwoColor(victoryx,victoryy,victorycolor,abortx,aborty,abortcolor,15)         
      if rx1==victorycolor then
      -- if rx~=-1 and ry~=-1 then
        vict_dialog()
        return i,true,bigonefound
      else 
        if rx1==-1 and rx2==-1 then
        -- if rx==-1 and ry==-1 and rx1==-1 and ry1==-1 then         -- timeout, mission failed
          return i,false,bigonefound
        end
      end
    else                         -- Last round
      c = waitForColor(victorycolor, 20, victoryx, victoryy, 20)
      -- rx,ry=waitForImage("victory_esv.png",90,531,996,554,1058,0,20)    --wait for victory dialog
      if c==false then
      -- if rx==-1 and ry==-1 then       -- no victory dialog
      for i=1,2 do
          click(196,1970)             -- push pullback button 2 times
          mSleep(200)
        end
        mSleep(300)
        touchScreen(966,800)          -- ok
        return i,false,bigonefound
      else
        vict_dialog()                -- victory dialog found
        return i,true,bigonefound
      end
    end                 -- [ if i<attacks ]

  end    -- [for i=1,attacks do]
end


function clearLastBattle()
  local xx,xy

  xx,xy=findImageInRegionFuzzy("savedbattle_v.png",90,0,0,700,300,0)
  if xx~=-1 and xy~=-1 then
    click(xx+5,xy+5)
    waitForImage("abort_esv.png",90,298,1913,339,1940,0,15) 
    mSleep(200)
    for i=1,2 do          -- touch the pull back button 3 times
      click(210,1985)
      mSleep(200)
    end
    mSleep(1000)
    
    click(965,800) --23 ok
    mSleep(300)

    click(1015,780) --24 ok2
    mSleep(200)   
  end
end

function gotoBigfootHome()
  mapZoomOut()               -- Zoom out the map (assume that we are standing on the world map)
  mSleep(500)

  dragDrop(mapx.righttop,mapy.righttop,mapx.leftbottom,mapy.leftbottom,10)

  mSleep(500)
  click(150,800)             -- bigfoot's homeland
  mSleep(500)

  rx,ry=findImageInRegionFuzzy("bigfoot_home_v.png",90,0,0,300,1500,0)      -- find the "goto" button
  if rx==-1 and ry==-1 then
    return false
  end

  click(rx,ry)

  rx,ry=waitForImage("smallhouse_v.png",90,171,1881,1204,2047,0,30)  
  if rx==-1 and ry==-1 then
    return false
  end

  mSleep(500)
  mapZoomOut()               -- Zoom out the map
  return true
end


function reEnterBN()

  for i=1,5 do      -- Try 5 times
    resetIDLETimer()
    closeApp("com.z2live.battlenations1")
    mSleep(5000)
    runApp("com.z2live.battlenations1")
    mSleep(10000)
    init("com.z2live.battlenations1",0)

    hx,hy=waitForImage("smallhouse_v.png",90,171,1881,1204,2047,0,60)

    if hx~=-1 and hy~=-1 then     -- found the little house
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


function repelInvader()
  while true do   
    local x,y = findMultiColorInRegionFuzzy(logoBaseColor.invasion, logoMultiColor.invasion,90,
                                              atall_x1,atall_y1,atall_x2,atall_y2)     
    if x~=-1 and y~=-1 then
      click(x,y)
      mSleep(300)
      click(x,y-250)
      
      waitFor3Color(begin_grey_color1,90,begin_grey_x1,begin_grey_y1,begin_grey_color2,90,begin_grey_x2,begin_grey_y2,begin_grey_color3,90,begin_grey_x3,begin_grey_y3,35)    
        
      deployTroop( units.invasion )

      click(begin_x,begin_y)            -- begin

      proceedAttackSequence( attackSequence.invasion )

      ifwait=waitFor3Color(map3color1,90,map3x1,map3y1,map3color2,90,map3x2,map3y2,map3color3,90,map3x3,map3y3,35)
      if ifwait==false then          --
          return false                
      end 
    else        
      return  
    end     
  end     
end

--[[ Main code ]]


while true do   
  ::startbn::     
  click(0,0)

  ifwait=waitFor3Color(map3color1,90,map3x1,map3y1,map3color2,90,map3x2,map3y2,map3color3,90,map3x3,map3y3,55)

  if ifwait==false then
    reEnterBN()
    goto startbn
  end

  clearLastBattle()

  for i=1,2 do
    mapZoomOut()

    for i=1,3 do
      rpt=repelInvader()
      if rpt==false then
        reEnterBN()
        goto startbn
      end
          
      dragDrop(mapx.lefttop,mapy.lefttop,mapx.rightbottom,mapy.rightbottom,10)
    end

    rpt=repelInvader()
    if rpt==false then
      reEnterBN()
      goto startbn
    end
    
    dragDrop(mapx.leftbottom,mapy.leftbottom,mapx.righttop,mapy.righttop,10)
    
    rpt=repelInvader()
    if rpt==false then
      reEnterBN()
      goto startbn
    end
    
    dragDrop(mapx.leftbottom,mapy.leftbottom,mapx.righttop,mapy.righttop,10)
    

    for i=1,3 do
      rpt=repelInvader()
      if rpt==false then
        reEnterBN()
        goto startbn
      end 
      
      dragDrop(mapx.rightbottom,mapy.rightbottom,mapx.lefttop,mapy.lefttop,10)
    end

    rpt=repelInvader()
    if rpt==false then
      reEnterBN()
      goto startbn
    end
    
    dragDrop(mapx.righttop,mapy.righttop,mapx.leftbottom,mapy.leftbottom,10)
    
    rpt=repelInvader()
    if rpt==false then
      reEnterBN()
      goto startbn
    end
    
    dragDrop(mapx.righttop,mapy.righttop,mapx.leftbottom,mapy.leftbottom,10)
    
    rpt=repelInvader()
    if rpt==false then
      reEnterBN()
      goto startbn
    end
  end

end