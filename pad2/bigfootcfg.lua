RELAUNCH = 0
RELAUNCH_MAX = 25
LOGFILE="mm"
PVP_MAX=15

BIGFOOT_CURRENT = "bigfoot"
PVP_CURRENT = "pvpfindme"


-- ehl={          -- I5
-- {{x=157,y=711},{x=217,y=593},{x=278,y=475},{x=336,y=363},{x=397,y=237}},
-- {{x=101,y=596},{x=151,y=478},{x=210,y=352},{x=268,y=232},{x=330,y=108}},
-- {{x=90,y=349},{x=90,y=349},{x=148,y=231},{x=210,y=116},{x=210,y=116}},
-- }

ehl={
{{x=237,y=645},{x=290,y=539},{x=344,y=431},{x=397,y=325},{x=450,y=218}},
{{x=184,y=539},{x=237,y=431},{x=290,y=325},{x=344,y=218},{x=397,y=112}},
{{x=184,y=325},{x=184,y=325},{x=237,y=218},{x=290,y=112},{x=290,y=112}},
}


hl={
{{x=286,y=810},{x=340,y=700},{x=390,y=600},{x=445,y=490},{x=500,y=385}},
{{x=338,y=917},{x=390,y=810},{x=445,y=705},{x=495,y=595},{x=552,y=490}},
{{x=0,y=0},{x=480,y=925},{x=530,y=810},{x=585,y=710}},
}


-- bigbugeye={
-- {{x=382,y=1376,x1=422,y1=1344},{x=492,y=1161,x1=532,y1=1129},{x=597,y=948,x1=637,y1=916},{x=704,y=735,x1=1744,y1=703},{x=810,y=522,x1=850,y1=490}},
-- {{x=276,y=1161,x1=316,y1=1129},{x=384,y=948,x1=424,y1=916},{x=490,y=168,x1=530,y1=702},{x=597,y=520,x1=637,y1=488},{x=703,y=309,x1=743,y1=277}},
-- {{x=0,y=0,x1=0,y1=0},{x=275,y=731,x1=315,y1=699},{x=384,y=522,x1=424,y1=490},{x=490,y=307,x1=530,y1=275},{x=0,y=0,x1=0,y1=0}}
-- }

bugleg = {   -- migrate from redbull's code
  {{x=768-(265+14),y=1024-(242-33)},{x=768-(238+14),y=1024-(296-33)},{x=768-(211+14),y=1024-(349-33)},{x=768-(185+14),y=1024-(402 -33)},{x=768-(158+14),y=1024-(455 -33)}},
  {{x=768-(291+14),y=1024-(295-33)},{x=768-(265+14),y=1024-(349-33)},{x=768-(238+14),y=1024-(402-33)},{x=768-(211+14),y=1024-(455 -33)},{x=768-(185+14),y=1024-(509-33)}},
  {{x=0,              y=0              },{x=768-(291+14),y=1024-(402-33)},{x=768-(265+14),y=1024-(455-33)},{x=768-(238+14),y=1024-(509-33)},{x=0,              y=0               }}
}
  

BBE_color=0x609A31

-- {{x=740,y=1830},{x=850,y=1640},{x=960,y=1420},{x=1060,y=1200},{x=1170,y=980}},
-- {{x=0,y=0},{x=960,y=1850},{x=1060,y=1620},{x=1170,y=1420}},
-- }

unitx=732
unity={982,890,798,707,615,524,432,341,250,158,67} 

unitselectx=667
-- unitselecty={all=1925, soldiers=1663,vehicles=1408,critters=1153,
--              infect=898,ignorable=643,defense=388,aircraft=133,navy=}
unitselecty={all=962, soldiers=831,vehicles=704,critters=576,
             infect=449,defense=321,aircraft=194,navy=67}

mapx={lefttop=256,leftbottom=512,center=384,righttop=256,rightbottom=512}
mapy={lefttop=680,leftbottom=680,center=512,righttop=340,rightbottom=340}


-- +----------------------------------+
-- | color and coordinate definition
-- | for invader searching
-- | and assistant
-- +----------------------------------+
searchmap={x=50,y=75,x1=725,y1=900}
logoBaseColor={invasion=0xff8000}
logoMultiColor={invasion="8|0|0x000000,50|0|0xff8000,80|0|0x000000"}


adsafe={x=757,y=250}

abortx,aborty,abortcolor=120,918,0xED8000 
victoryx,victoryy,victorycolor=490,410,16315892

map2big_x,map2big_y=97,67


-- +--------------------------------+
-- | Button definition (singlePixel):
-- +--------------------------------+
BS_abort={x=120,y=918,color=0xED8000}    -- Abort button
BS_victok={x=486,y=424,color=0xEB7800}    -- ok button of victory dialog
BS_victok2={x=506,y=391}
BS_pullback={x=98,y=985}
BS_pullbackok={x=483,y=400}
BS_worldmap={x=587,y=51}

BS_fight={x=519,y=73}


-- +-----------------------------------+ 
-- | Button definition (multiPixel):
-- | 
-- +-----------------------------------+
BM_beginGrey = {{x=95, y=981, color=0x797266},
                {x=113, y=982, color=0xDBD9D1},
                {x=124, y=981, color=0x0A0D10}}

BM_savedBttl = {{x=465, y=25, color=0xCE0E05},
                {x=482, y=48, color=0xFFC800},
                {x=465, y=62, color=0xF1F2F2}}

BM_glass_BS = {{x=568,y=33,color=0x5B5B5B},
              {x=606,y=57,color=0x575757},
              {x=605,y=50,color=0xFEC253}}

BM_xmas = {{x=645,y=121,color=0x8E0F05},
              {x=646,y=186,color=0xF0F0F0},
              {x=644,y=246,color=0x8D0F05}}


promo_popups = {
  -- {{x=1290,y=243,color=0x8E0F05},{x=1292,y=372,color=0xF0F0F0},{x=1289,y=492,color=0x8D0F05}}, --xmas
  {{x=644,y=123,color=0x8D0F05},{x=652,y=150,color=0xF0F0F0},{x=657,y=187,color=0xF0F0F0}}
}



-- +----------------------------------+
-- | PvP
-- +----------------------------------+

BM_arenalogo = {{x=199, y=972, color=0xFCCB75},
            {x=221, y=976, color=0xD1D1D1},
            {x=453, y=1981, color=0x233D61}}

BM_arena = {{x=336, y=1494, color=0x7BF0FE},       -- Arena dialog
            {x=1444, y=979, color=0x439D03},       -- fight button
            {x=1444, y=1083, color=0xF26A21}}      -- top board

BM_again = {{x=574, y=591, color=0x22FBFF},
            {x=633, y=641, color=0xF26A21},
            {x=592, y=775, color=0xF0F0F0}}

BM_nano = {{x=716, y=534, color=0xD6FFFF},
            {x=827, y=531, color=0xB1F059},
            {x=1033, y=531, color=0x46A002}}      -- click here

BM_win = {{x=1257, y=671, color=0xF26A21},        -- click here
            {x=964, y=1192, color=0x3CADFC},
            {x=914, y=1197, color=0xFFFFFF}}

BS_nanoconfirm = {x=856, y=775, color=0xED7E00}

BS_nanook = {x=856, y=1020, color=0xED8000}


-- +--------------------------------+
-- | Branch map entrance coordinate
-- +--------------------------------+

enterBFH ={x=93,y=65}
enterBoarL={x=588,y=65}
enterRaptorL={x=496,y=356}


-- +--------------------------------+
-- | Touch coordinates: Bigfoot home
-- +--------------------------------+

BFFx={x=674, y=325}      -- X
BFFocc={x=447, y=512}    -- Occupation
BFFbttl={x=410, y=487}    -- Enter Battle


-- +--------------------------------+
-- | Map mark defination (multiPixel)
-- | Base, WorldMap, and branch map
-- +--------------------------------+
MM_base      = {{color=0xEA7409,x=657,y=38},   -- BASE, sheild button
                {color=0xCDD1D1,x=659,y=66},
                {color=0xF1940C,x=675,y=61}}

MM_branchMap = {{color=0xE5AD09,x=580,y=31},   -- bigfoot's home, worldmap button
                {color=0x84BC48,x=580,y=57},
                {color=0xDBE1D3,x=591,y=66}}

MM_worldMap  = {{color=0xF26A21,x=660,y=51},
                {color=0x8B8F8E,x=651,y=42},
                {color=0x3C4324,x=688,y=50}}

MM_base_F      = {{color=0x808480,x=654,y=37},   -- Friend BASE, Home button
                {color=0xF26A21,x=661,y=49},
                {color=0x3C4324,x=686,y=47}}


-- +--------------------------------+
-- | Battle field unit definition
-- +--------------------------------+
--cat="aircraft",page=3,pos=9,num=1,delay=500   tihu
--cat="aircraft",page=1,pos=2,num=1,delay=500   T10paoting

units = { bigfoot  = { {cat="critters",page=0,pos=3,num=4,delay=0,drag={} },             -- mammoth
                       {cat="vehicles",page=0,pos=3,num=1,delay=500,drag={}} },         -- arctic tank

          legenddragon = { {cat="critters",page=0,pos=3,num=5,delay=0,drag={} },
                          {cat="critters",page=0,pos=9,num=1,delay=0,drag={}},
                         },

          monger = { {cat="critters",page=0,pos=3,num=5,delay=0,drag={} },
                      {cat="soldiers",page=1,pos=5,num=1,delay=0,drag={}},
                   },

          pvpdouglasyin = { {cat="vehicles",page=0,pos=5,num=2,delay=0,drag={} },
                  {cat="soldiers",page=1,pos=2,num=3,delay=0,drag={}}
                },

          pvp00678 = { {cat="vehicles",page=0,pos=11,num=1,delay=0,drag={} },
                      {cat="vehicles",page=5,pos=2,num=1,delay=0,drag={} },
                      {cat="soldiers",page=1,pos=2,num=3,delay=0,drag={}},
                },

            invasion ={ {cat="critters",page=0,pos=3,num=4,delay=0,drag={} },
                      {cat="navy",page=0,pos=9,num=1,delay=0,drag={} }
                    },

          -- Mine layer
          -- invasion ={ {cat="critters",page=0,pos=3,num=4,delay=0,drag={} },
          --             {cat="navy",page=0,pos=4,num=1,delay=0,drag={} }
          --           },

          moon = { 
                   {cat="critters",page=0,pos=4,num=3,delay=0,drag={} },
                   {cat="soldiers",page=1,pos=2,num=1,delay=0,drag={} },
                   {cat="hold",page=0,pos=1,num=1,delay=0,drag={} }
                  },

          wrp = { 
                   {cat="soldiers",page=1,pos=3,num=1,delay=0,drag={1,3,2,3} },
                   {cat="critters",page=0,pos=4,num=5,delay=0,drag={} },
                   {cat="soldiers",page=0,pos=3,num=1,delay=0,drag={} }
                  },
      
        }

-- +--------------------------------+
-- | Attack sequence definition
-- +--------------------------------+

attackSequence = { 

                bigfoot  = {  -- unit row,unit col, weapon inx,armrack #,ammorack count, aim drag?, taget row, target col
                    {row=1,col=5,wpn=3,armrack=2,ammorack=1,drag=true,starget=1},    -- row2 col3, weapon #1 rack1, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},    -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},    -- mammoth 2, yell
					{row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},    -- mammoth 3, yell
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}     -- mammoth 4, yell
                },
                legenddragon = {
                    {row=2,col=3,wpn=4,armrack=3,ammorack=0,drag=false,starget=1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                monger = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                pvpdouglasyin = {
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                },
                pvp00678 = {
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1}

                },
                moon = {
                    {row=1,col=1,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1}, 
                    {row=1,col=5,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                },
                wrp = {
                    {row=2,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1}, 
                    {row=2,col=2,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },                
                invasion = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                -- invasion = {
                --     {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1}, 
                --     {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                --     {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,2}},
                --     {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,4}},
                --     {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,4}},
                --     {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,4}},
                --     {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1}, 
                --     {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                --     {row=2,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                --     {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                --     {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                --     {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                --     {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                --     {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                --     {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                --     {row=2,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                --     {row=2,col=1,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1}
                -- },
                mk2 = {
                    {row=2,col=3,wpn=2,armrack=2,ammorack=1,drag=true,starget=-1}, 
                    {row=1,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,2}},
                    {row=1,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,4}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1}
                }
}

function gobf()

  mSleep(2190)

  touchDown(8,431,47)
mSleep(45)
touchMove(8,427,51)
mSleep(18)
touchMove(8,426,57)
mSleep(14)
touchMove(8,426,66)
mSleep(16)
touchMove(8,426,79)
mSleep(15)
touchMove(8,424,93)
mSleep(17)
touchMove(8,422,111)
mSleep(16)
touchMove(8,420,129)
mSleep(15)
touchMove(8,417,149)
mSleep(16)
touchMove(8,417,171)
mSleep(17)
touchMove(8,415,198)
mSleep(15)
touchMove(8,414,221)
mSleep(17)
touchMove(8,412,251)
mSleep(16)
touchMove(8,412,280)
mSleep(16)
touchMove(8,410,307)
mSleep(16)
touchMove(8,409,333)
mSleep(18)
touchMove(8,407,361)
mSleep(14)
touchMove(8,407,387)
mSleep(20)
touchMove(8,404,409)
mSleep(12)
touchMove(8,402,431)
mSleep(20)
touchMove(8,400,454)
mSleep(11)
touchMove(8,400,476)
mSleep(22)
touchMove(8,399,499)
mSleep(11)
touchMove(8,399,522)
mSleep(21)
touchMove(8,399,545)
mSleep(10)
touchMove(8,399,567)
mSleep(14)
touchMove(8,401,590)
mSleep(16)
touchMove(8,403,612)
mSleep(16)
touchMove(8,406,634)
mSleep(16)
touchMove(8,409,656)
mSleep(16)
touchMove(8,412,675)
mSleep(17)
touchMove(8,414,693)
mSleep(16)
touchMove(8,416,709)
mSleep(15)
touchMove(8,417,726)
mSleep(17)
touchMove(8,420,741)
mSleep(16)
touchMove(8,421,754)
mSleep(16)
touchMove(8,422,766)
mSleep(16)
touchMove(8,423,776)
mSleep(16)
touchMove(8,423,786)
mSleep(16)
touchMove(8,423,795)
mSleep(17)
touchMove(8,424,801)
mSleep(16)
touchMove(8,424,809)
mSleep(15)
touchMove(8,424,814)
mSleep(18)
touchMove(8,425,820)
mSleep(17)
touchMove(8,426,824)
mSleep(17)
touchMove(8,426,829)
mSleep(14)
touchMove(8,426,832)
mSleep(20)
touchMove(8,426,834)
mSleep(13)
touchMove(8,426,836)
mSleep(19)
touchMove(8,426,837)
mSleep(15)
touchMove(8,426,838)
mSleep(10)
touchMove(8,426,838)
mSleep(33)
touchMove(8,427,838)
mSleep(32)
touchUp(8,428,837)
mSleep(481)

touchDown(5,404,92)
mSleep(47)
touchMove(5,402,96)
mSleep(16)
touchMove(5,402,104)
mSleep(15)
touchMove(5,402,117)
mSleep(26)
touchMove(5,401,136)
mSleep(6)
touchMove(5,398,156)
mSleep(18)
touchMove(5,397,180)
mSleep(15)
touchMove(5,395,209)
mSleep(18)
touchMove(5,392,239)
mSleep(14)
touchMove(5,391,269)
mSleep(21)
touchMove(5,389,299)
mSleep(11)
touchMove(5,387,330)
mSleep(20)
touchMove(5,385,362)
mSleep(12)
touchMove(5,383,396)
mSleep(15)
touchMove(5,381,426)
mSleep(16)
touchMove(5,380,455)
mSleep(16)
touchMove(5,380,484)
mSleep(16)
touchMove(5,380,516)
mSleep(15)
touchMove(5,381,547)
mSleep(17)
touchMove(5,383,576)
mSleep(15)
touchMove(5,385,603)
mSleep(17)
touchMove(5,388,629)
mSleep(16)
touchMove(5,390,653)
mSleep(15)
touchMove(5,393,677)
mSleep(16)
touchMove(5,394,695)
mSleep(17)
touchMove(5,395,713)
mSleep(16)
touchMove(5,395,731)
mSleep(16)
touchMove(5,396,748)
mSleep(17)
touchMove(5,397,766)
mSleep(15)
touchMove(5,398,784)
mSleep(18)
touchMove(5,400,797)
mSleep(15)
touchMove(5,401,810)
mSleep(18)
touchMove(5,402,821)
mSleep(17)
touchMove(5,404,831)
mSleep(15)
touchMove(5,405,840)
mSleep(17)
touchMove(5,406,847)
mSleep(14)
touchMove(5,407,853)
mSleep(18)
touchMove(5,407,858)
mSleep(14)
touchMove(5,408,862)
mSleep(15)
touchMove(5,409,866)
mSleep(17)
touchMove(5,410,869)
mSleep(16)
touchMove(5,411,873)
mSleep(17)
touchMove(5,412,876)
mSleep(17)
touchMove(5,412,879)
mSleep(15)
touchMove(5,413,882)
mSleep(16)
touchMove(5,413,885)
mSleep(17)
touchMove(5,413,887)
mSleep(15)
touchMove(5,413,889)
mSleep(16)
touchMove(5,414,890)
mSleep(16)
touchMove(5,414,891)
mSleep(32)
touchUp(5,413,886)
mSleep(480)

touchDown(1,401,65)
mSleep(31)
touchMove(1,399,70)
mSleep(17)
touchMove(1,399,80)
mSleep(16)
touchMove(1,399,92)
mSleep(17)
touchMove(1,398,109)
mSleep(15)
touchMove(1,397,129)
mSleep(20)
touchMove(1,395,150)
mSleep(12)
touchMove(1,393,177)
mSleep(16)
touchMove(1,392,206)
mSleep(16)
touchMove(1,392,237)
mSleep(16)
touchMove(1,392,270)
mSleep(16)
touchMove(1,392,303)
mSleep(16)
touchMove(1,392,335)
mSleep(16)
touchMove(1,392,367)
mSleep(16)
touchMove(1,392,398)
mSleep(17)
touchMove(1,392,427)
mSleep(15)
touchMove(1,392,456)
mSleep(16)
touchMove(1,392,484)
mSleep(16)
touchMove(1,392,512)
mSleep(15)
touchMove(1,393,537)
mSleep(17)
touchMove(1,394,561)
mSleep(16)
touchMove(1,395,584)
mSleep(15)
touchMove(1,396,605)
mSleep(19)
touchMove(1,397,625)
mSleep(14)
touchMove(1,397,643)
mSleep(17)
touchMove(1,397,660)
mSleep(15)
touchMove(1,397,673)
mSleep(16)
touchMove(1,397,688)
mSleep(16)
touchMove(1,397,698)
mSleep(16)
touchMove(1,398,709)
mSleep(16)
touchMove(1,398,716)
mSleep(19)
touchMove(1,398,723)
mSleep(13)
touchMove(1,398,730)
mSleep(16)
touchMove(1,398,736)
mSleep(16)
touchMove(1,399,740)
mSleep(16)
touchMove(1,400,744)
mSleep(17)
touchMove(1,400,747)
mSleep(15)
touchMove(1,401,751)
mSleep(16)
touchMove(1,401,754)
mSleep(17)
touchMove(1,402,756)
mSleep(15)
touchMove(1,402,759)
mSleep(17)
touchMove(1,402,761)
mSleep(17)
touchMove(1,402,763)
mSleep(15)
touchMove(1,402,766)
mSleep(15)
touchMove(1,402,767)
mSleep(17)
touchMove(1,402,769)
mSleep(15)
touchMove(1,402,770)
mSleep(17)
touchMove(1,402,772)
mSleep(16)
touchMove(1,402,773)
mSleep(16)
touchMove(1,402,775)
mSleep(16)
touchMove(1,402,775)
mSleep(16)
touchMove(1,402,776)
mSleep(17)
touchMove(1,402,777)
mSleep(16)
touchMove(1,402,778)
mSleep(16)
touchMove(1,402,779)
mSleep(64)
touchUp(1,401,780)
mSleep(705)

touchDown(11,96,187)
mSleep(47)
touchMove(11,98,190)
mSleep(17)
touchMove(11,106,191)
mSleep(14)
touchMove(11,121,192)
mSleep(18)
touchMove(11,138,194)
mSleep(15)
touchMove(11,159,196)
mSleep(16)
touchMove(11,180,197)
mSleep(16)
touchMove(11,203,198)
mSleep(16)
touchMove(11,227,199)
mSleep(16)
touchMove(11,251,199)
mSleep(16)
touchMove(11,273,199)
mSleep(15)
touchMove(11,295,197)
mSleep(16)
touchMove(11,317,196)
mSleep(16)
touchMove(11,338,194)
mSleep(16)
touchMove(11,359,192)
mSleep(17)
touchMove(11,379,191)
mSleep(16)
touchMove(11,399,189)
mSleep(16)
touchMove(11,420,189)
mSleep(15)
touchMove(11,442,189)
mSleep(18)
touchMove(11,465,189)
mSleep(13)
touchMove(11,485,189)
mSleep(20)
touchMove(11,504,189)
mSleep(13)
touchMove(11,518,189)
mSleep(17)
touchMove(11,532,189)
mSleep(14)
touchMove(11,542,188)
mSleep(18)
touchMove(11,551,186)
mSleep(13)
touchMove(11,559,183)
mSleep(19)
touchMove(11,564,182)
mSleep(14)
touchMove(11,569,181)
mSleep(22)
touchMove(11,573,179)
mSleep(10)
touchMove(11,577,178)
mSleep(16)
touchMove(11,580,177)
mSleep(15)
touchMove(11,585,177)
mSleep(16)
touchMove(11,591,177)
mSleep(17)
touchMove(11,598,177)
mSleep(16)
touchMove(11,605,178)
mSleep(16)
touchMove(11,613,179)
mSleep(16)
touchMove(11,620,180)
mSleep(16)
touchMove(11,627,181)
mSleep(15)
touchMove(11,633,182)
mSleep(17)
touchMove(11,637,182)
mSleep(15)
touchMove(11,640,182)
mSleep(16)
touchMove(11,645,182)
mSleep(17)
touchMove(11,648,182)
mSleep(16)
touchMove(11,651,182)
mSleep(16)
touchUp(11,651,181)
mSleep(433)

touchDown(6,125,153)
mSleep(31)
touchMove(6,133,156)
mSleep(18)
touchMove(6,142,157)
mSleep(14)
touchMove(6,155,158)
mSleep(17)
touchMove(6,170,161)
mSleep(15)
touchMove(6,188,163)
mSleep(18)
touchMove(6,207,164)
mSleep(15)
touchMove(6,225,166)
mSleep(16)
touchMove(6,244,167)
mSleep(16)
touchMove(6,263,169)
mSleep(16)
touchMove(6,281,171)
mSleep(15)
touchMove(6,295,172)
mSleep(17)
touchMove(6,313,173)
mSleep(16)
touchMove(6,328,174)
mSleep(16)
touchMove(6,344,175)
mSleep(17)
touchMove(6,358,176)
mSleep(15)
touchMove(6,373,177)
mSleep(16)
touchMove(6,387,177)
mSleep(17)
touchMove(6,400,177)
mSleep(15)
touchMove(6,413,177)
mSleep(16)
touchMove(6,426,176)
mSleep(17)
touchMove(6,441,176)
mSleep(15)
touchMove(6,456,176)
mSleep(18)
touchMove(6,470,176)
mSleep(15)
touchMove(6,481,176)
mSleep(17)
touchMove(6,491,176)
mSleep(16)
touchMove(6,499,176)
mSleep(17)
touchMove(6,503,176)
mSleep(14)
touchMove(6,508,176)
mSleep(17)
touchMove(6,512,176)
mSleep(16)
touchMove(6,515,175)
mSleep(16)
touchMove(6,519,175)
mSleep(16)
touchMove(6,522,175)
mSleep(17)
touchMove(6,524,174)
mSleep(16)
touchMove(6,524,174)
mSleep(16)
touchMove(6,525,174)
mSleep(16)
touchMove(6,526,174)
mSleep(32)
touchUp(6,524,172)
mSleep(369)

touchDown(2,115,158)
mSleep(63)
touchMove(2,120,159)
mSleep(17)
touchMove(2,130,159)
mSleep(15)
touchMove(2,144,159)
mSleep(16)
touchMove(2,164,160)
mSleep(17)
touchMove(2,179,161)
mSleep(15)
touchMove(2,196,162)
mSleep(17)
touchMove(2,211,163)
mSleep(15)
touchMove(2,226,163)
mSleep(17)
touchMove(2,240,164)
mSleep(15)
touchMove(2,255,165)
mSleep(18)
touchMove(2,270,166)
mSleep(14)
touchMove(2,284,167)
mSleep(18)
touchMove(2,298,167)
mSleep(14)
touchMove(2,313,167)
mSleep(16)
touchMove(2,326,167)
mSleep(15)
touchMove(2,339,167)
mSleep(17)
touchMove(2,350,167)
mSleep(15)
touchMove(2,362,167)
mSleep(17)
touchMove(2,372,167)
mSleep(16)
touchMove(2,382,167)
mSleep(15)
touchMove(2,392,167)
mSleep(15)
touchMove(2,402,167)
mSleep(17)
touchMove(2,410,166)
mSleep(15)
touchMove(2,417,166)
mSleep(16)
touchMove(2,423,166)
mSleep(16)
touchMove(2,426,166)
mSleep(16)
touchMove(2,430,166)
mSleep(16)
touchMove(2,431,166)
mSleep(17)
touchMove(2,432,166)
mSleep(96)
touchUp(2,426,167)
mSleep(976)

touchDown(9,347,936)
mSleep(47)
touchMove(9,347,933)
mSleep(16)
touchMove(9,347,926)
mSleep(16)
touchMove(9,348,911)
mSleep(16)
touchMove(9,348,890)
mSleep(15)
touchMove(9,348,863)
mSleep(17)
touchMove(9,344,834)
mSleep(18)
touchMove(9,338,799)
mSleep(14)
touchMove(9,332,761)
mSleep(19)
touchMove(9,327,720)
mSleep(12)
touchMove(9,321,678)
mSleep(19)
touchMove(9,315,634)
mSleep(14)
touchMove(9,311,590)
mSleep(19)
touchMove(9,309,547)
mSleep(12)
touchMove(9,307,503)
mSleep(16)
touchMove(9,306,459)
mSleep(16)
touchMove(9,306,416)
mSleep(16)
touchMove(9,306,377)
mSleep(16)
touchMove(9,306,338)
mSleep(16)
touchMove(9,306,300)
mSleep(16)
touchMove(9,306,264)
mSleep(17)
touchMove(9,307,231)
mSleep(15)
touchMove(9,308,200)
mSleep(16)
touchMove(9,310,172)
mSleep(16)
touchMove(9,310,149)
mSleep(16)
touchMove(9,313,126)
mSleep(15)
touchMove(9,315,107)
mSleep(18)
touchMove(9,316,92)
mSleep(15)
touchMove(9,318,77)
mSleep(17)
touchMove(9,319,65)
mSleep(15)
touchMove(9,320,55)
mSleep(17)
touchMove(9,321,47)
mSleep(14)
touchMove(9,322,42)
mSleep(22)
touchMove(9,322,39)
mSleep(10)
touchMove(9,322,37)
mSleep(21)
touchMove(9,322,36)
mSleep(91)
touchMove(9,321,36)
mSleep(32)
touchMove(9,320,36)
mSleep(33)
touchMove(9,319,36)
mSleep(16)
touchMove(9,319,34)
mSleep(16)
touchUp(9,316,31)
mSleep(977)

touchDown(4,164,688)
mSleep(127)
touchUp(4,163,688)
mSleep(1138)

touchDown(10,148,329)
mSleep(94)
touchUp(10,149,330)
end
