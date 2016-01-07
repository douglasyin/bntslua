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


function hit()
touchDown(1,903,437)
mSleep(116)
touchUp(1,915,436)
mSleep(48)

touchDown(1,775,659)
mSleep(116)
touchUp(1,780,660)
mSleep(48)

touchDown(1,682,858)
mSleep(116)
touchUp(1,685,860)
mSleep(50)

touchDown(1,577,1071)
mSleep(100)
touchUp(1,578,1074)
mSleep(55)

touchDown(1,470,1285)
mSleep(80)
touchUp(1,473,1291)
mSleep(45)

touchDown(1,364,1075)
mSleep(66)
touchUp(1,371,1066)
mSleep(45)

touchDown(1,475,868)
mSleep(66)
touchUp(1,480,863)
mSleep(55)

touchDown(1,591,636)
mSleep(66)
touchUp(1,598,625)
mSleep(51)

touchDown(1,709,426)
mSleep(83)
touchUp(1,714,423)
mSleep(53)

touchDown(1,814,200)
mSleep(100)
touchUp(1,821,197)
mSleep(48)

touchDown(1,593,202)
mSleep(100)
touchUp(1,591,208)
mSleep(55)

touchDown(1,482,460)
mSleep(83)
touchUp(1,476,454)
mSleep(45)

touchDown(1,376,649)
mSleep(84)
touchUp(1,378,644)
mSleep(50)
end


init("0",0)
while true do
mSleep(1652)

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
mSleep(18702)

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
mSleep(717)

touchDown(1,764,1913) --11 begin
mSleep(66)
touchUp(1,765,1910)
mSleep(2851)

touchDown(1,1470,1454) --12 skill2
mSleep(99)
touchUp(1,1468,1453)
mSleep(1319)

touchDown(1,578,675) --13 tap1
mSleep(99)
touchUp(1,577,678)
mSleep(200)

touchDown(1,690,859) --14 tap 2
mSleep(66)
touchUp(1,693,865)
mSleep(6451)

touchDown(1,1484,1223) --15 select yell
mSleep(49)
touchUp(1,1484,1223)
mSleep(184)

hit()     --16 Yell
mSleep(5901)

rx,ry=findImageInRegionFuzzy("victory_v.png",90,433,941,641,1152,0)
if rx~=-1 and ry~=-1 then
   goto vict
end

touchDown(1,1039,773) --17 switch mm
mSleep(32)
touchUp(1,1040,772)
mSleep(518)

touchDown(1,1470,1226) --18 select Yell
mSleep(66)
touchUp(1,1470,1227)
mSleep(751)

hit()
--touchDown(1,490,1245) --19 Yell
--mSleep(50)
--touchUp(1,489,1246)
mSleep(5583)

rx,ry=findImageInRegionFuzzy("victory_v.png",90,433,941,641,1152,0)
if rx~=-1 and ry~=-1 then
   goto vict

end

touchDown(1,954,973) --20 switch mm
mSleep(82)
touchUp(1,952,973)
mSleep(551)

touchDown(1,1459,1228) --21 sy
mSleep(66)
touchUp(1,1453,1228)
mSleep(634)

hit()
 --22 Yell
mSleep(3583)

touchDown(1,196,1970) --pullback
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
mSleep(500)

::vict::
touchDown(1,966,800) --23 ok
mSleep(49)
touchUp(1,965,804)
mSleep(1317)

touchDown(1,1013,782) --24 ok2
mSleep(49)
touchUp(1,1014,787)
mSleep(16000)


end