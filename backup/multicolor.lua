
home_posandcolor="32|40|0xff8000,0|82|0x000000"
jungle_posandcolor="32|40|0xf5ab00,0|82|0x000000"

homeMapColor={{color=0xd17902,x=1385,y=64},
              {color=0xe9b009,x=1405,y=43},
     			    {color=0x6fa13a,x=1419,y=59}}

jungleMapColor={{color=0x7cef03,x=1429,y=408},
						    {color=0xc1b9b1,x=1470,y=374},
 							  {color=0xd5ac8c,x=1466,y=439}}

worldMapColor={{color=0xffed8a,x=1398,y=258},
						   {color=0x3172ff,x=1422,y=240},
						   {color=0xd92207,x=1422,y=280}}

begin_grey_Color={{color=0xdedbd5,x=220,y=1987},
								  {color=0x595043,x=225,y=2023},
								  {color=0xbdb5a7,x=192,y=1994}}

function waitMultiPixel(img,diff,waitfor)
	for i=1,waitfor*4 do
		mSleep(250)
		keepScreen(true)

		for j=1,#(img) do
   		local rx = findColorInRegionFuzzy(img[j].color, diff, img[j].x, img[j].y, img[j].x, img[j].y)
	    m=j
			if rx==-1 then
				break
			end
		end

		keepScreen(false)	

		if m == #(img) then
			return ture
		end
	end

	return false
end


function jungle_attacks()
	require "jungle_config"
	while true do	

		wolfx,wolfy = findMultiColorInRegionFuzzy(atall_x,jungle_posandcolor,90,atall_x1,atall_y1,atall_x2,atall_y2)		
		if wolfx~=-1 and wolfy~=-1 then
			click(wolfx-35,wolfy-21)
			mSleep(100)
			click(wolfx-18,wolfy-121)

			waitMultiPixel(begin_grey_Color,95,35)	

			deployTroop(jungle_units)

			proceedAttackSequence(jungle_a_seq)

			ifwait = waitMultiPixel(jungleMapColor,95,35)						

			if ifwait==false then
				return false				
			end							
		else		
			return		
		end		
	end			
end