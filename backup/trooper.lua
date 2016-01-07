--[[
  11 12 13
6  7  8  9 10
5  4  3  2  1
]]

enemy={
  {x=903,y=437},   --1
  {x=775,y=659},   --2
  {x=682,y=858},   --3
  {x=577,y=1071},  --4
  {x=470,y=1285},  --5
  {x=364,y=1075},  --6
  {x=475,y=868},   --7
  {x=591,y=636},   --8
  {x=709,y=426},   --9
  {x=814,y=200},   --10
  {x=593,y=202},   --11
  {x=482,y=460},   --12
  {x=376,y=649}    --13
}

hl={
   {{x=630,y=1640},{x=710,y=1400},{x=830,y=1180},{x=955,y=955},{x=1070,y=770}},
   {{x=740,y=1830},{x=850,y=1640},{x=960,y=1420},{x=1060,y=1200},{x=1170,y=980}},
   {{x=0,y=0},{x=960,y=1850},{x=1060,y=1620},{x=1170,y=1420}},
}

unitx=1475
unity={2015,1860,1730,1600,1470,1340,1210,1080,950,820,690,560,430,300,170,40} 

unitselecty=1975
unitselect={all=1375,aircraft=1335,ignorable=1295,infect=1255,critters=1215,vehicles=1175,soldiers=1135}

LBoarx=1480 
LBoary={1580,1350,1120,940}

LMammothx=1480
LMammothy={1580,1450,1230,1000}

function click(x,y) 
  touchDown(x,y)
  mSleep(50)
  touchUp(x,y)
  mSleep(100)
end


function dropDrag(x1,y1,x2,y2)
  touchDown(x1,y1)
  mSleep(50)
  touchMove(x1,y2)
  mSleep(50)
  touchUp(x1,y2)
  mSleep(50)
end


function waitForImage( imgFile,d,x1,y1,x2,y2,color,seconds )
	local waitfor
	local xx=-1
  local yy=-1
 
  waitfor = 0
  while true do
    mSleep(1000)
    xx,yy=findImageInRegionFuzzy(imgFile,d,x1,y1,x2,y2,color)

    if (xx~=-1 and yy~=-1) or waitfor==seconds then
      return xx,yy,waitfor
    end

    waitfor=waitfor+1
  end
  --dialog(string.format("%d",waitfor),1)
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
  for i=1,10 do
    touchDown(1,enemy[i].x,enemy[i].y)
    mSleep(60)
    touchUp(1,enemy[i].x,enemy[i].y)
    mSleep(30)
  end
end

init("0",0)

while true do
  waitForImage("begin_grey_esv.png",90,740,1904,794,1940,0,30)  --wait the grey button for 30 seconds


  click(unitselect.all,unitselecty)              --4 [点选兵分类按钮]

  click(unitselect.critters, unitselecty) --5  critters

  for i=1,5 do
    click(1485,1872)       --6-10  5 mammoth
  end

  click(unitx, unity[7])   -- Send the legendary boar
  click(unitx, unity[7])   -- Send the legendary boar
  click(unitx, unity[7])   -- Send the legendary boar


  click(764,1913)          --11 begin

  waitForImage("abort_esv.png",90,298,1913,339,1940,0,12)  --wait the abort button for 10 seconds

  click(hl[2][2].x, hl[2][2].y)  -- select legendary boar
--  click(LBoarx, LBoary[4])
  click(enemy[3].x, enemy[3].y)
  click(enemy[8].x, enemy[8].y)  -- fire #1 weapon


  while true do
    waitForImage("abort_esv.png",90,298,1913,339,1940,0,12)  --wait the abort button for 10 seconds

    for i=1,3 do
      click(hl[2][i+1].x, hl[2][i+1].y)  -- select legendary boar
      click(LBoarx, LBoary[4])             -- weapon 4
      click(enemy[3].x, enemy[3].y)
      click(enemy[8].x, enemy[8].y)  -- fire
      waitForImage("abort_esv.png",90,298,1913,339,1940,0,12)  --wait the abort button for 10 seconds
    end

    waitForImage("abort_esv.png",90,298,1913,339,1940,0,12)  --wait the abort button for 10 seconds

    for i=1,5 do
      click(hl[1][i].x,hl[1][i].y)  --select the next mammoth
      mSleep(200)

      click(1484,1223) --15 load weapon: Yell

      beatit()   -- yell 

      rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,              --wait for victory dialog or
                                     "abort_esv.png",90,298,1913,339,1940,0,16)            --the abort button for 16sec

      if rx~=-1 and ry~=-1 then
        goto vict
      end
    end
  end
::vict::

end
