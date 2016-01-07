MM_base      = {{color=0xD17902,x=1385,y=64},
                {color=0xE9B009,x=1405,y=43},
                {color=0x6FA13A,x=1419,y=59}}

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
-- | Try relaunch BN 5 times
-- | until the worldmap button is found
-- +--------------------------------+
function reEnterBN()
  for i=1,5 do      -- Try 5 times
    resetIDLETimer()
    closeApp("com.z2live.battlenations1")
    mSleep(5000)
    runApp("com.z2live.battlenations1")
    mSleep(10000)
    init("com.z2live.battlenations1",0)

    local found = waitMultiPixel( MM_base, 90, 60 )             -- wait for the base map mark: worldmap button

    if found==true then
      -- appendLog("mm.log", "relaunch battlenations: success")
      return true
    end
  end

  -- appendLog("mm.log", "relaunch battlenations: failed")
  return false
end



function dag()
--while true do
mSleep(2248)

touchDown(8,99,517)
mSleep(299)
touchMove(8,114,511)
mSleep(17)
touchMove(8,115,511)
mSleep(17)
touchMove(8,117,510)
mSleep(17)
touchMove(8,120,510)
mSleep(16)
touchMove(8,124,510)
mSleep(18)
touchMove(8,130,510)
mSleep(16)
touchMove(8,137,510)
mSleep(17)
touchMove(8,144,510)
mSleep(16)
touchMove(8,155,514)
mSleep(17)
touchMove(8,168,522)
mSleep(17)
touchMove(8,183,533)
mSleep(16)
touchMove(8,202,545)
mSleep(17)
touchMove(8,219,555)
mSleep(17)
touchMove(8,241,570)
mSleep(17)
touchMove(8,269,587)
mSleep(17)
touchMove(8,294,606)
mSleep(17)
touchMove(8,324,626)
mSleep(17)
touchMove(8,353,645)
mSleep(17)
touchMove(8,386,669)
mSleep(17)
touchMove(8,417,692)
mSleep(16)
touchMove(8,454,718)
mSleep(17)
touchMove(8,489,744)
mSleep(17)
touchMove(8,531,776)
mSleep(17)
touchMove(8,562,804)
mSleep(16)
touchMove(8,598,831)
mSleep(17)
touchMove(8,630,861)
mSleep(16)
touchMove(8,663,888)
mSleep(17)
touchMove(8,691,915)
mSleep(16)
touchMove(8,717,941)
mSleep(17)
touchMove(8,740,962)
mSleep(17)
touchMove(8,758,981)
mSleep(17)
touchMove(8,771,996)
mSleep(16)
touchMove(8,784,1008)
mSleep(17)
touchMove(8,792,1016)
mSleep(16)
touchMove(8,799,1022)
mSleep(17)
touchMove(8,805,1028)
mSleep(17)
touchMove(8,809,1031)
mSleep(18)
touchMove(8,812,1033)
mSleep(15)
touchMove(8,813,1035)
mSleep(16)
touchMove(8,814,1036)
mSleep(17)
touchMove(8,815,1037)
mSleep(16)
touchMove(8,816,1038)
mSleep(34)
touchMove(8,817,1038)
mSleep(818)
touchMove(8,816,1037)
mSleep(32)
touchMove(8,815,1037)
mSleep(16)
touchMove(8,815,1036)
mSleep(17)
touchMove(8,814,1036)
mSleep(17)
touchMove(8,814,1035)
mSleep(33)
touchMove(8,813,1035)
mSleep(17)
touchMove(8,813,1034)
mSleep(50)
touchMove(8,813,1033)
mSleep(16)
touchMove(8,812,1033)
mSleep(34)
touchMove(8,811,1033)
mSleep(16)
touchMove(8,811,1032)
mSleep(34)
touchMove(8,810,1031)
mSleep(83)
touchMove(8,809,1030)
mSleep(100)
touchMove(8,809,1028)
mSleep(383)
touchMove(8,810,1028)
mSleep(16)
touchMove(8,812,1030)
mSleep(17)
touchMove(8,814,1032)
mSleep(18)
touchMove(8,815,1034)
mSleep(15)
touchMove(8,817,1035)
mSleep(17)
touchMove(8,819,1037)
mSleep(17)
touchMove(8,821,1039)
mSleep(17)
touchMove(8,822,1040)
mSleep(17)
touchMove(8,824,1042)
mSleep(16)
touchMove(8,827,1044)
mSleep(17)
touchMove(8,829,1046)
mSleep(17)
touchMove(8,833,1049)
mSleep(16)
touchMove(8,836,1052)
mSleep(18)
touchMove(8,840,1055)
mSleep(16)
touchMove(8,844,1058)
mSleep(17)
touchMove(8,849,1062)
mSleep(16)
touchMove(8,854,1066)
mSleep(18)
touchMove(8,861,1071)
mSleep(16)
touchMove(8,867,1077)
mSleep(17)
touchMove(8,872,1082)
mSleep(17)
touchMove(8,876,1086)
mSleep(16)
touchMove(8,881,1090)
mSleep(18)
touchMove(8,885,1093)
mSleep(16)
touchMove(8,888,1096)
mSleep(16)
touchMove(8,892,1099)
mSleep(17)
touchMove(8,895,1101)
mSleep(17)
touchMove(8,897,1103)
mSleep(16)
touchMove(8,900,1105)
mSleep(17)
touchMove(8,902,1107)
mSleep(17)
touchMove(8,904,1109)
mSleep(17)
touchMove(8,907,1111)
mSleep(17)
touchMove(8,909,1113)
mSleep(16)
touchMove(8,911,1114)
mSleep(16)
touchMove(8,913,1116)
mSleep(17)
touchMove(8,914,1117)
mSleep(17)
touchMove(8,915,1118)
mSleep(17)
touchMove(8,916,1120)
mSleep(17)
touchMove(8,917,1120)
mSleep(17)
touchMove(8,918,1120)
mSleep(16)
touchMove(8,919,1120)
mSleep(284)
touchMove(8,920,1120)
mSleep(150)
touchMove(8,920,1118)
mSleep(34)
touchMove(8,920,1117)
mSleep(16)
touchMove(8,920,1116)
mSleep(16)
touchUp(8,918,1112)
mSleep(50)
end

init("0",0)

touchDown(9,1,1)
mSleep(99)
touchUp(9,1,1)
mSleep(117)

dag()

while true do

	::bg::

	resetIDLETimer()
	mSleep(233)

	touchDown(9,1363,867)        -- 制造
	mSleep(99)
	touchUp(9,1363,868)
	mSleep(2557)

	x,y=waitForImage( "cmenu_v.png", 95, 285,267,362,345, 0, 20)
	if x==-1 and y==-1 then
		reEnterBN()
		touchDown(9,1,1)
		mSleep(99)
		touchUp(9,1,1)
		mSleep(117)
		goto bg
	end

	touchDown(10,572,92)         -- 装饰
	mSleep(66)
	touchUp(10,566,84)
	mSleep(384)

	x,y=waitForImage( "giant_v.png", 90, 894,379,973,455,0, 20)
	if x==-1 and y==-1 then
		reEnterBN()
		touchDown(9,1,1)
		mSleep(99)
		touchUp(9,1,1)
		mSleep(117)
		goto bg
	end

	touchDown(7,773,369)         -- 白象
	mSleep(49)
	touchUp(7,771,363)
	mSleep(859)

	touchDown(6,1189,629)        -- 建造按钮
	mSleep(91)
	touchUp(6,1190,622)
	mSleep(751)

	touchDown(8,805,926)         -- 打勾
	mSleep(100)
	touchUp(8,808,933)
	mSleep(284)

	x,y=waitForImage( "pvp_v.png", 90,1371,352,1427,391, 0, 20)
	if x==-1 and y==-1 then
		reEnterBN()
		touchDown(9,1,1)
		mSleep(99)
		touchUp(9,1,1)
		mSleep(117)
		goto bg
	end


	touchDown(11,1382,688)       -- 移动
	mSleep(83)
	touchUp(11,1372,684)
	mSleep(367)

	touchDown(1,712,1002)        -- 点白象
	mSleep(50)
	touchUp(1,708,1001)
	mSleep(368)

	touchDown(5,812,1161)        -- $
	mSleep(99)
	touchUp(5,812,1157)
	mSleep(317)

	touchDown(5,835,1113)        -- 确定
	mSleep(50)
	touchUp(5,831,1108)
	mSleep(317)

	touchDown(3,1441,96)         -- 完成
	mSleep(83)
	touchUp(3,1446,104)
	mSleep(250)

	x,y=waitForImage( "pvp_v.png", 90,1371,352,1427,391, 0, 20)
	if x==-1 and y==-1 then
		reEnterBN()
		touchDown(9,1,1)
		mSleep(99)
		touchUp(9,1,1)
		mSleep(117)
		goto bg
	end

end