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

unitx=1475
unity={2015,1860,1730,1600,1470,1340,1210,1080,950,820,690,560,430,300,170,40} 

unitselecty=1975
unitselect={all=1375,aircraft=1335,ignorable=1295,infect=1255,critters=1215,vehicles=1175,soldiers=1135}

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

function dragIt()
  touchDown(1,264,880)
  mSleep(33)
  touchMove(1,289,880)
  mSleep(17)
  touchMove(1,308,880)
  mSleep(17)
  touchMove(1,333,880)
  mSleep(17)
  touchMove(1,357,880)
  mSleep(16)
  touchMove(1,393,880)
  mSleep(18)
  touchMove(1,425,880)
  mSleep(17)
  touchMove(1,459,880)
  mSleep(18)
  touchMove(1,494,880)
  mSleep(14)
  touchMove(1,534,880)
  mSleep(17)
  touchMove(1,572,880)
  mSleep(16)
  touchMove(1,612,880)
  mSleep(19)
  touchMove(1,659,880)
  mSleep(15)
  touchMove(1,695,880)
  mSleep(17)
  touchMove(1,741,880)
  mSleep(17)
  touchMove(1,783,880)
  mSleep(16)
  touchMove(1,817,880)
  mSleep(17)
  touchMove(1,860,880)
  mSleep(17)
  touchMove(1,888,880)
  mSleep(16)
  touchMove(1,918,880)
  mSleep(17)
  touchMove(1,940,880)
  mSleep(17)
  touchMove(1,962,880)
  mSleep(16)
  touchMove(1,984,880)
  mSleep(17)
  touchMove(1,1001,880)
  mSleep(17)
  touchMove(1,1015,880)
  mSleep(16)
  touchMove(1,1028,880)
  mSleep(17)
  touchMove(1,1038,880)
  mSleep(17)
  touchMove(1,1049,880)
  mSleep(17)
  touchMove(1,1057,880)
  mSleep(17)
  touchMove(1,1064,880)
  mSleep(17)
  touchMove(1,1070,880)
  mSleep(17)
  touchMove(1,1076,880)
  mSleep(17)
  touchMove(1,1080,880)
  mSleep(17)
  touchMove(1,1083,880)
  mSleep(16)
  touchMove(1,1086,880)
  mSleep(17)
  touchMove(1,1089,880)
  mSleep(17)
  touchMove(1,1091,880)
  mSleep(18)
  touchMove(1,1092,880)
  mSleep(17)
  touchMove(1,1093,880)
  mSleep(15)
  touchMove(1,1094,880)
  mSleep(250)
  touchMove(1,1093,880)
  mSleep(16)
  touchMove(1,1091,880)
  mSleep(17)
  touchMove(1,1090,880)
  mSleep(16)
  touchMove(1,1089,880)
  mSleep(17)
  touchMove(1,1087,880)
  mSleep(33)
  touchMove(1,1086,880)
  mSleep(16)
  touchMove(1,1085,880)
  mSleep(17) 
  touchMove(1,1084,880)
  mSleep(18) 
  touchUp(1,1084,880)
  mSleep(50)
end

function beatit()
  for i=1,10 do
    touchDown(1,enemy[i].x,enemy[i].y)
    mSleep(60)
    touchUp(1,enemy[i].x,enemy[i].y)
    mSleep(30)
  end
end

t_start=os.time()

init("0",0)
tic=0
while true do

b_start=os.time()
tic=tic+1


dragIt()
touchDown(1,1419,407) --1. X
mSleep(82)
touchUp(1,1420,401)
mSleep(1101)

touchDown(1,895,1023) --2 Occ
mSleep(82)
touchUp(1,892,1022)
mSleep(968)

touchDown(1,840,992) --3 battle
mSleep(49)
touchUp(1,845,991)

waitForImage("begin_grey_esv.png",90,740,1904,794,1940,0,30)  --wait the grey button for 30 seconds
--waitForImage("begin_grey_v.png",90,648,1802,905,2047,0,30)  --wait the grey button for 30 seconds

-- plasma trooper
click(unitselect.all,unitselecty)--[点选兵分类按钮]
click(unitselect.soldiers,unitselecty)
mSleep(200)
dropDrag(unitx,unity[16],unitx,unity[1])
mSleep(200)
dropDrag(unitx,unity[16],unitx,unity[10])
mSleep(2000)
click(unitx,unity[14])
mSleep(200)

--[[
touchDown(1,1482,1984)   -- B10
mSleep(182)
touchUp(1,1471,1990)
mSleep(500)]]

touchDown(1,1370,1978) --4 type
mSleep(100)
touchUp(1,1374,1973)
mSleep(783)

touchDown(1,1220,1971) --5 animal
mSleep(83)
touchUp(1,1223,1958)
mSleep(1101)

touchDown(1,1485,1872) --6 1mm
mSleep(82)
touchUp(1,1488,1875)
mSleep(167)

touchDown(1,1485,1865) --7 2mm
mSleep(66)
touchUp(1,1483,1864)
mSleep(151)

touchDown(1,1486,1867) --8 3mm
mSleep(66)
touchUp(1,1485,1869)
mSleep(150)

touchDown(1,1489,1867) --9 4mm
mSleep(66)
touchUp(1,1487,1868)
mSleep(101)

touchDown(1,1491,1863) --10 5mm
mSleep(66)
touchUp(1,1497,1865)
mSleep(217)

touchDown(1,764,1913) --11 begin
mSleep(66)
touchUp(1,765,1910)

waitForImage("abort_esv.png",90,298,1913,339,1940,0,12)  --wait the abort button for 10 seconds
--waitForImage("abort_v.png",90,274,1815,368,2047,0,12)  --wait the abort button for 10 seconds
--mSleep(2851)
--[[
touchDown(1,945,1409)       --select B10
mSleep(99)
touchUp(1,948,1406)
mSleep(50)

touchDown(1,1476,1219)      --weapon 3
mSleep(83)
touchUp(1,1469,1223)
mSleep(68)
]]

beatit()

waitForImage("abort_esv.png",90,298,1913,339,1940,0,12)  --wait the abort button for 10 seconds
--waitForImage("abort_v.png",90,274,1815,368,2047,0,12)  --wait the abort button for 10 seconds

--dialog(string.format("%d",w),1)
--[[
touchDown(1,841,1184)  --select the centre mm
mSleep(99)
touchUp(1,847,1185)
mSleep(150)

touchDown(1,841,1184)  --select the centre mm
mSleep(99)
touchUp(1,847,1185)
mSleep(150)]]

touchDown(1,1484,1223) --15 select yell
mSleep(49)
touchUp(1,1484,1223)
mSleep(184)

beatit()   -- yell #1

rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,              --wait for victory dialog or
                               "abort_esv.png",90,298,1913,339,1940,0,16)            --the abort button for 16sec

if rx~=-1 and ry~=-1 then
  goto vict
end

click(1057,1611) -- plasma
beatit()
touchDown(1,578,671)       --fire
mSleep(49)
touchUp(1,572,670)
mSleep(50)

rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,              --wait for victory dialog or
                               "abort_esv.png",90,298,1913,339,1940,0,16)            --the abort button for 16sec

if rx~=-1 and ry~=-1 then
  goto vict
end

touchDown(1,1039,773) --17 switch mm
mSleep(32)
touchUp(1,1040,772)
mSleep(218)

touchDown(1,1470,1226) --18 select Yell
mSleep(66)
touchUp(1,1470,1227)
mSleep(151)

beatit()     --19 Yell #2

rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,"abort_esv.png",90,298,1913,339,1940,0,16)         --wait for victory dialog for 5sec
--rx,ry,rx1,ry1=waitForTwoImages("victory_v.png",90,433,941,641,1152,0,"abort_v.png",90,274,1815,368,2047,0,16)         --wait for victory dialog for 5sec
--rx,ry=findImageInRegionFuzzy("victory_v.png",90,433,941,641,1152,0)
if rx~=-1 and ry~=-1 then
  goto vict
end

--waitForImage("abort_v.png",90,274,1815,368,2047,0,10)  --wait for the abort button for 10 seconds

touchDown(1,954,973) --20 switch mm
mSleep(82)
touchUp(1,952,973)
mSleep(151)

touchDown(1,1459,1228) --21 select yell
mSleep(66)
touchUp(1,1453,1228)
mSleep(134)

beatit()             -- yell #3

rx,ry=waitForImage("victory_esv.png",90,531,996,554,1058,0,13)    --wait for victory dialog for 10sec
--touchDown(1,1001,808) 
--mSleep(33)
--touchUp(1,998,794)
--mSleep(584)

touchDown(1,196,1970) -- push pullback button 3 times
mSleep(99)
touchUp(1,202,1967)
mSleep(234)

touchDown(1,194,1973)
mSleep(83)
touchUp(1,199,1967)
mSleep(317)

touchDown(1,205,1965)
mSleep(66)
touchUp(1,208,1955)
mSleep(500)

touchDown(1,1029,827) -- in case of touching mission button
mSleep(49)
touchUp(1,1027,820)
mSleep(50)

::vict::

touchDown(1,966,800) --23 ok
mSleep(49)
touchUp(1,965,804)
mSleep(617)

touchDown(1,1013,782) --24 ok2
mSleep(49)
touchUp(1,1014,787)
mSleep(1000)

touchDown(1,1257,874)  --  for the event ad
mSleep(49)
touchUp(1,1259,869)
mSleep(50)

touchDown(1,829,1007) --new ad
mSleep(28)
touchUp(1,833,1007)
mSleep(50)

click(1264,438)

waitForImage("smallhouse_v.png",90,171,1881,904,2047,0,35)

if rx~=-1 and ry~=-1 then
  initLog("mm.log",0)
  wLog("mm.log", string.format("%d sec, Totally %d sec, battle %d", os.time()-b_start, os.time()-t_start, tic))
  closeLog("mm.log")
end

end