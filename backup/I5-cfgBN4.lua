ehl={
{{x=474,y=1291},{x=580,y=1077},{x=687,y=862},{x=794,y=650},{x=900,y=437}},
{{x=368,y=1077},{x=474,y=862},{x=580,y=650},{x=687,y=437},{x=794,y=224}},
{{x=368,y=650},{x=368,y=650},{x=474,y=437},{x=580,y=224},{x=580,y=224}},
}

hl={
{{x=630,y=1640},{x=710,y=1400},{x=830,y=1180},{x=955,y=955},{x=1070,y=770}},
{{x=740,y=1830},{x=850,y=1640},{x=960,y=1420},{x=1060,y=1200},{x=1170,y=980}},
{{x=0,y=0},{x=960,y=1850},{x=1060,y=1620},{x=1170,y=1420}},
}

unitx=1465
unity={1963,1780,1597,1414,1231,1048,865,682,499,316,133} 

unitselectx=1335
unitselecty={all=1925, soldiers=1663,vehicles=1408,critters=1153,
             infect=898,ignorable=643,defense=388,aircraft=133}


mapx={lefttop=512,leftbottom=1024,center=768,righttop=512,rightbottom=1024}
mapy={lefttop=1360,leftbottom=1360,center=1024,righttop=680,rightbottom=680}


adsafe={x=1515,y=500}

abortx,aborty,abortcolor=240,1836,0xED8000 
victoryx,victoryy,victorycolor=980,821,16315892

map2big_x,map2big_y=195,135


-- +--------------------------------+
-- | Button definition (singlePixel):
-- +--------------------------------+
BS_abort={x=240,y=1836,color=0xED8000}    -- Abort button
BS_victok={x=980,y=821,color=0xF8F5F4}    -- ok button of victory dialog

-- +-----------------------------------+ 
-- | Button definition (multiPixel):
-- | Battle field - Grey begin button
-- +-----------------------------------+
BM_beginGrey = {{x=189, y=1963, color=0x605C5A},
                {x=227, y=1965, color=0xDBD8D1},
                {x=249, y=1963, color=0x070A0B}}

BM_savedBttl = {{x=929, y=50, color=0xD50F06},
                {x=963, y=96, color=0xFFC800},
                {x=930, y=124, color=0xF1F2F2}}
-- +--------------------------------+
-- | Branch map entrance coordinate
-- +--------------------------------+

enterBFH ={x=186,y=131}
enterBoarL={x=1176,y=131}
enterRaptorL={x=993,y=713}


-- +--------------------------------+
-- | Touch coordinates: Bigfoot home
-- +--------------------------------+

BFFx={x=552, y=320}      -- X   
-- BFFocc={x=895, y=1023}    -- Occupation 
BFFbttl={x=352, y=567}    -- Enter Battle


-- +--------------------------------+
-- | Map mark defination (multiPixel)
-- | Base, WorldMap, and branch map
-- +--------------------------------+
MM_base      = {{color=0xEA7309,x=1314,y=76},   -- BASE, sheild button
                {color=0xCFD4D4,x=1318,y=132},
                {color=0xF8940C,x=1349,y=123}}

MM_branchMap = {{color=0xE5AD09,x=1159,y=62},  -- bigfoot's home, worldmap button
                {color=0x84BC48,x=1160,y=113},
                {color=0xF8F7F8,x=1182,y=131}}

MM_worldMap  = {{color=0xF26A21,x=1321,y=102},
                {color=0x858987,x=1303,y=85},
                {color=0x3C4324,x=1376,y=101}}


    atall_x1,atall_y1,atall_x2,atall_y2=100,150,1450,1800
    
    map3x1,map3y1,map3x2,map3y2,map3x3,map3y3=1385,64,1405,43,1419,59
    map3color1,map3color2,map3color3=0xd17902,0xe9b009,0x6fa13a
    
    lmap3x1,lmap3y1,lmap3x2,lmap3y2,lmap3x3,lmap3y3=1429,408,1470,374,1466,439
    lmap3color1,lmap3color2,lmap3color3=0x7cef03,0xc1b9b1,0xd5ac8c
    
    world3x1,world3y1,world3x2,world3y2,world3x3,world3y3=1398,258,1422,240,1422,280
    world3color1,world3color2,world3color3=0xffed8a,0x3172ff,0xd92207   
    
    begin_grey_x1,begin_grey_y1,begin_grey_x2,begin_grey_y2,begin_grey_x3,begin_grey_y3=220,1987,225,2023,192,1994
    begin_grey_color1,begin_grey_color2,begin_grey_color3=0xdedbd5,0x595043,0xbdb5a7
    
    -- redx_color,redx_x,redx_y=0xff6f00,334,61
    begin_x,begin_y=760,1910


homeMapColor={{color=0xD17902,x=1385,y=64},
              {color=0xE9B009,x=1405,y=43},
              {color=0x6FA13A,x=1419,y=59}}

jungleMapColor={{color=0x7CEF03,x=1429,y=408},
                {color=0xC1B9B1,x=1470,y=374},
                {color=0xD5AC8C,x=1466,y=439}}

worldMapColor={{color=0xFFED8A,x=1398,y=258},
               {color=0x3172FF,x=1422,y=240},
               {color=0xD92207,x=1422,y=280}}

begin_grey_Color={{color=0xDEDBD5,x=220,y=1987},
                  {color=0x595043,x=225,y=2023},
                  {color=0xBDB5A7,x=192,y=1994}}


BIGFOOT_CURRENT = "ewall"

-- +--------------------------------+
-- | Battle field unit definition
-- +--------------------------------+

units = { bigfoot  = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },             -- mammoth
                       {cat="vehicles",page=2,pos=11,num=1,delay=500,drag={}} },         -- arctic tank

          samurai  = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },             -- mammoth
                       {cat="soldiers",page=1,pos=4,num=1,delay=0,drag={}} },            -- samurai

          L7       = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },             -- mammoth
                       {cat="vehicles",page=2,pos=14,num=1,delay=500,drag={}} },       -- L7 Sandworm Drill

          mmtank   = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={}},             -- mammoth
                       {cat="critters",page=0,pos=1,num=1,delay=0,drag={}} },           -- mammoth tank

          frog     = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={}},             -- mammoth
                       {cat="infect",  page=0,pos=3,num=1,delay=0,drag={}} },           -- shit frog

          invasion = { {cat="vehicles",page=2,pos=9,num=5,delay=500,drag={} },          -- MT
                       {cat="critters",page=0,pos=2,num=3,delay=0,drag={}} },           -- mammoth

          tankcrusher = { {cat="vehicles",page=0,pos=8,num=1,delay=0,drag={} } ,        -- Tank crusher
                          {cat="critters",page=0,pos=2,num=5,delay=0,drag={}} },

          Blackbird  = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },          -- mammoth
                         {cat="aircraft",page=0,pos=10,num=1,delay=0,drag={}} },        -- samurai

          B10II  = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },             -- mammoth
                         {cat="aircraft",page=0,pos=6,num=1,delay=0,drag={}} },             -- samurai

          B10IItz  = { {cat="critters",page=0,pos=1,num=5,delay=0,drag={} },             -- mammoth
                         {cat="aircraft",page=0,pos=6,num=1,delay=0,drag={}} },             -- samurai

          boartz  = { {cat="critters",page=0,pos=1,num=5,delay=0,drag={} },
                         {cat="critters",page=0,pos=5,num=1,delay=0,drag={}} } ,

          samuraitz  = { {cat="critters",page=0,pos=1,num=5,delay=0,drag={} },
                         {cat="soldiers",page=1,pos=2,num=1,delay=0,drag={}} },

          tankcrushertz = { {cat="vehicles",page=0,pos=8,num=1,delay=0,drag={} },         -- Tank crusher
                            {cat="critters",page=0,pos=1,num=5,delay=0,drag={}} },

          Demolisher = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },
                           {cat="vehicles",page=0,pos=8,num=1,delay=0,drag={}} },

          tcandwmtz = { {cat="critters",page=0,pos=1,num=5,delay=0,drag={} },
                        {cat="vehicles",page=0,pos=8,num=1,delay=0,drag={} },         -- Tank crusher
                        {cat="soldiers",page=0,pos=14,num=1,delay=0,drag={}} },

          weaponmstrtz = { {cat="critters",page=0,pos=1,num=5,delay=0,drag={} },
                        {cat="soldiers",page=1,pos=2,num=1,delay=0,drag={}} },

          weaponmstr = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },
                        {cat="soldiers",page=1,pos=2,num=1,delay=0,drag={}} },

          mechtrooper = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },
                        {cat="soldiers",page=0,pos=11,num=1,delay=0,drag={}} },

          aerotz = { {cat="critters",page=0,pos=1,num=5,delay=0,drag={} },
                  {cat="soldiers",page=0,pos=8,num=1,delay=0,drag={}} },

          peacekeeper = { {cat="vehicles",page=0,pos=8,num=5,delay=0,drag={} },
                        {cat="soldiers",page=2,pos=4,num=1,delay=0,drag={}} },

          snake = { {cat="vehicles",page=0,pos=10,num=5,delay=0,drag={} },
                    {cat="vehicles",page=3,pos=4,num=1,delay=0,drag={}} },

          ewall = { {cat="ignorable",page=0,pos=6,num=1,delay=0,drag={} },
                    {cat="vehicles",page=0,pos=10,num=5,delay=0,drag={}} }                    
        }

-- +--------------------------------+
-- | Attack sequence definition
-- +--------------------------------+

attackSequence = { 

                bigfoot  = {  -- unit row,unit col, weapon inx,armrack #,ammorack count, aim drag?, taget row, target col
                    {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},    -- row2 col3, weapon #1 rack1, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}     -- mammoth 3, yell
                    },
                samurai  = {  -- unit row,unit col, weapon inx,armrack #,ammorack count, aim drag?, taget row, target col
                    {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},    -- row2 col3, weapon #1 rack1, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}     -- mammoth 3, yell
                    },                    
                L7       = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=1,drag=false,trow=-1,tcol=-1},   -- row2 col3, weapon #2 rack2, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}    -- mammoth 3, yell
                    },
                mmtank   = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},   -- row2 col3, weapon #2 rack2, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}    -- mammoth 3, yell
                    },
                frog     = {
                    {row=3,col=3,wpn=3,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1},   -- row3 col3, weapon #3 rack2, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}    -- mammoth 3, yell
                    },
                tankcrusher = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- mammoth 3, yell
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },
                Blackbird   = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },                    
                B10II   = {
                    {row=2,col=3,wpn=3,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}                    
                    },
                B10IItz   = {
                    {row=2,col=3,wpn=3,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}                    
                    },                    
                boartz   = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=true,trow=-1,tcol=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}                    
                    },  
                samuraitz   = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}                    
                    },                      
                Demolisher   = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=0,drag=true,trow=-1,tcol=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}                    
                    },                      
                tankcrushertz = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- mammoth 3, yell
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },
                tcandwmtz = {
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1},   -- 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},   -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    -- mammoth 3, yell
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },   
                weaponmstrtz = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },
                weaponmstr = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },
                mechtrooper = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=true,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },
                aerotz = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=true,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}
                    },
                peacekeeper = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=1,drag=true,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1}
                    },
                snake = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1}
                    },
                ewall = {
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=1,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1},
                    {row=1,col=5,wpn=1,armrack=1,ammorack=1,drag=false,trow=-1,tcol=-1}
                    },                    
                invasion = { 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},   
                    {row=2,col=2,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=2,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=1,col=1,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},  
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=5,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},
                    {row=2,col=2,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}, 
                    {row=2,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},    
                    {row=1,col=1,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},  
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=5,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},  
                    {row=2,col=2,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1}, 
                    {row=2,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trow=-1,tcol=-1},  
                    {row=1,col=1,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},  
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=5,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},  
                    {row=1,col=1,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1},  
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}, 
                    {row=1,col=5,wpn=1,armrack=1,ammorack=0,drag=false,trow=-1,tcol=-1}
            }
}


RELAUNCH = 0