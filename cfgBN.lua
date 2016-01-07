RELAUNCH = 0
RELAUNCH_MAX = 25
LOGFILE="mm"
PVP_MAX=20

BIGFOOT_CURRENT = "mechtank"
OCTOPUS_CURRENT = "ddd"
PVP_CURRENT = "pvp471361082"


-- ehl={          -- I5
-- {{x=1a57,y=711},{x=217,y=593},{x=278,y=475},{x=336,y=363},{x=397,y=237}},
-- {{x=101,y=596},{x=151,4=478},{x=210,y=352},{x=268,y=232},{x=330,y=108}},
-- {{x=90,y=349},{x=90,y=349},{x=148,y=231},{x=210,y=116},{x=210,y=116}},
-- }

ehl={
{{x=474,y=1291},{x=580,y=1077},{x=687,y=862},{x=794,y=650},{x=900,y=437}},
{{x=368,y=1077},{x=474,y=862},{x=580,y=650},{x=687,y=437},{x=794,y=224}},
{{x=368,y=650},{x=368,y=650},{x=474,y=437},{x=580,y=224},{x=580,y=224}},
}


hl={
{{x=630,y=1640},{x=710,y=1400},{x=804,y=1184},{x=895,y=964},{x=1070,y=770}},
{{x=740,y=1830},{x=850,y=1640},{x=960,y=1420},{x=1060,y=1200},{x=1170,y=980}},
{{x=0,y=0},{x=960,y=1850},{x=1060,y=1620},{x=1170,y=1420}},
}


bugleg = {   -- migrate from redbull's code
  {{x=1536-(530+28)*2,y=2048-(485-67)*2},{x=1536-(477+28)*2,y=2048-(592-67)*2},{x=1536-(423+28)*2,y=2048-(698-67)*2},{x=1536-(370+28)*2,y=2048-(805 -67)*2},{x=1536-(317+28)*2,y=2048-(911 -67)*2}},
  {{x=1536-(583+28)*2,y=2048-(591-67)*2},{x=1536-(530+28)*2,y=2048-(698-67)*2},{x=1536-(477+28)*2,y=2048-(805-67)*2},{x=1536-(423+28)*2,y=2048-(911 -67)*2},{x=1536-(370+28)*2,y=2048-(1018-67)*2}},
  {{x=0,              y=0              },{x=1536-(583+28)*2,y=2048-(805-67)*2},{x=1536-(530+28)*2,y=2048-(911-67)*2},{x=1536-(477+28)*2,y=2048-(1018-67)*2},{x=0,              y=0               }}
}
  

BBE_color=0x609A31


unitx=1465
unity={1973,1780,1597,1414,1231,1048,865,682,499,316,117} 

unitselectx=1335
unitselecty={all=1920, soldiers=1666,vehicles=1408,critters=1150,
             infect=896,ignorable=638,defense=638,aircraft=386,navy=126}

mapx={lefttop=512,leftbottom=1024,center=768,righttop=512,rightbottom=1024}
mapy={lefttop=1360,leftbottom=1360,center=1024,righttop=680,rightbottom=680}


-- +----------------------------------+
-- | color and coordinate definition
-- | for invader searching
-- | and assistant
-- +----------------------------------+
searchmap={x=100,y=150,x1=1450,y1=1800}
logoBaseColor={invasion=0xff8000}
logoMultiColor={invasion="8|0|0x000000,50|0|0xff8000,80|0|0x000000"}


adsafe={x=1515,y=500}

abortx,aborty,abortcolor=240,1836,0xED8000 
victoryx,victoryy,victorycolor=980,821,16315892

map2big_x,map2big_y=195,135


-- +--------------------------------+
-- | Button definition (singlePixel):
-- +--------------------------------+
BS_abort={x=240,y=1836,color=0xED8000}    -- Abort button
BS_victok={x=980,y=821,color=0xF8F5F4}    -- ok button of victory dialog
BS_victok2={x=1012,y=782}
BS_pullback={x=196,y=1970}
BS_pullbackok={x=966,y=800}
BS_worldmap={x=1173,y=101}

BS_fight={x=1038,y=146}


-- +-----------------------------------+ 
-- | Button definition (multiPixel):
-- | 
-- +-----------------------------------+
-- BM_beginGrey = {{x=189, y=1963, color=0x605C5A},
--                 {x=227, y=1965, color=0xDBD8D1},
--                 {x=249, y=1963, color=0x070A0B}}

BM_beginGrey = {{x=218, y=1962, color=0x483F1B},
                {x=227, y=1965, color=0xD7D4D2},
                {x=249, y=1963, color=0x070A0C}}

BM_savedBttl = {{x=929, y=50, color=0xD50F06},
                {x=963, y=96, color=0xFFC800},
                {x=930, y=124, color=0xF1F2F2}}

BM_glass_BS = {{x=1137,y=67,color=0x5B5B5B},
              {x=1213,y=115,color=0x575757},
              {x=1211,y=101,color=0xFEC253}}

BM_xmas = {{x=1290,y=243,color=0x8E0F05},
              {x=1292,y=372,color=0xF0F0F0},
              {x=1289,y=492,color=0x8D0F05}}


promo_popups = {
  {{x=1300,y=228,color=0x900F05},{x=1314,y=338,color=0xF0F0F0},{x=1028,y=382,color=0xC5F645}}, --xmas
  -- {{x=1289,y=247,color=0x8D0F05},{x=1305,y=300,color=0xF0F0F0},{x=1314,y=375,color=0xF0F0F0}},
  -- {{x=1338,y=364,color=0xF26A21},{x=382,y=453,color=0xF26A21},{x=376,y=594,color=0x3DF8FF}},   -- offline pvp dialog
  -- {{x=1325,y=631,color=0x900F05},{x=1318,y=548,color=0x000000},{x=1309,y=469,color=0x921005}}
}

-- +----------------------------------+
-- | PvP
-- +----------------------------------+

BM_arenalogo = {{x=399, y=1944, color=0xFCCB75},
            {x=443, y=1952, color=0xD1D1D1},
            {x=453, y=1981, color=0x233D61}}

BM_arena = {{x=336, y=1494, color=0x7BF0FE},       -- Arena dialog
            {x=1444, y=979, color=0x439D03},       -- fight button
            {x=1444, y=1083, color=0xF26A21}}      -- top board

BM_again = {{x=572, y=596, color=0x2AFBFF},
            {x=650, y=904, color=0xF26721},
            {x=655, y=374, color=0x910E1E}}

BM_stars = {{x=1234, y=654, color=0xF26A21},
            {x=936, y=1125, color=0x6DC5FF},
            {x=1297, y=396, color=0xF26720}}
-- BM_again = {{x=574, y=591, color=0x22FBFF},
--             {x=633, y=641, color=0xF26A21},
--             {x=592, y=775, color=0xF0F0F0}}

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

enterBFH ={x=186,y=131}
enterBoarL={x=1176,y=131}
enterRaptorL={x=993,y=713}


-- +--------------------------------+
-- | Touch coordinates: Bigfoot home
-- +--------------------------------+

BFFx={x=1349, y=650}      -- X
BFFocc={x=895, y=1023}    -- Occupation
BFFbttl={x=820, y=975}    -- Enter Battle


-- +--------------------------------+
-- | Map mark defination (multiPixel)
-- | Base, WorldMap, and branch map
-- +--------------------------------+
MM_base      = {{color=0xEA7309,x=1314,y=76},   -- BASE, sheild button
                {color=0xCFD4D4,x=1318,y=132},
                {color=0xF8940C,x=1349,y=123}}

MM_branchMap = {{color=0xE5AD09,x=1159,y=62},   -- bigfoot's home, worldmap button
                {color=0x84BC48,x=1160,y=113},
                {color=0xF8F7F8,x=1182,y=131}}

MM_worldMap  = {{color=0xF26A21,x=1321,y=102},
                {color=0x858987,x=1303,y=85},
                {color=0x3C4324,x=1376,y=101}}

MM_base_F      = {{color=0x808480,x=1308,y=74},   -- Friend BASE, Home button
                {color=0xF26A21,x=1322,y=98},
                {color=0x3C4324,x=1372,y=94}}


-- +--------------------------------+
-- | Battle field unit definition
-- +--------------------------------+

units = { bigfoot  = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },             -- mammoth
                       {cat="vehicles",page=2,pos=11,num=1,delay=500,drag={}} },         -- arctic tank

          legenddragon = { {cat="critters",page=0,pos=4,num=5,delay=0,drag={} },
                          {cat="critters",page=0,pos=10,num=1,delay=0,drag={}},
                         },

          ddd = { {cat="navy",page=0,pos=2,num=1,delay=0,drag={}},
                  {cat="navy",page=0,pos=5,num=3,delay=0,drag={}}
                       },

          mechtank = { {cat="vehicles",page=2,pos=6,num=5,delay=0,drag={}}
                       },

          agt  = {   {cat="critters",page=0,pos=4,num=5,delay=0,drag={} },
                     {cat="vehicles",page=0,pos=3,num=1,delay=0,drag={} }
                   },

          sandworm = { {cat="vehicles",page=0,pos=6,num=1,delay=0,drag={} },
                          {cat="critters",page=0,pos=10,num=3,delay=0,drag={} }
                         },

          monger = { {cat="critters",page=0,pos=3,num=5,delay=0,drag={} },
                      {cat="soldiers",page=1,pos=5,num=1,delay=0,drag={}},
                   },

          range  = {  {cat="vehicles",page=4,pos=5,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=3,num=4,delay=0,drag={} }
                   },

          ma  = {  {cat="vehicles",page=2,pos=3,num=1,delay=0,drag={}},
                    {cat="soldiers",page=0,pos=3,num=1,delay=0,drag={}},
                    {cat="hold",page=0,pos=4,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=5,num=4,delay=0,drag={} }
                   },

          deadshot  = {  {cat="soldiers",page=0,pos=3,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=4,num=5,delay=0,drag={} }
                   },

          pelikan  = {  {cat="aircraft",page=2,pos=10,num=1,delay=500,drag={}},
                      {cat="critters",page=0,pos=4,num=5,delay=0,drag={} }
                   },

          gunship  = {  {cat="aircraft",page=1,pos=8,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=4,num=5,delay=0,drag={} }
                   },

          deadshota  = {  {cat="soldiers",page=0,pos=3,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=4,num=5,delay=0,drag={} }
                   },

          killshot  = {  {cat="soldiers",page=0,pos=4,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=4,num=5,delay=0,drag={} }
                   },

          killshota  = {  {cat="soldiers",page=0,pos=4,num=1,delay=0,drag={}},
                      {cat="critters",page=0,pos=4,num=5,delay=0,drag={} }
                   },

          pvpdouglasyin = { {cat="soldiers",page=0,pos=11,num=2,delay=0,drag={}},
                        {cat="defense",page=0,pos=7,num=1,delay=0,drag={}},
                        {cat="soldiers",page=7,pos=6,num=2,delay=500,drag={}}
                },

          pvp471361082 = { {cat="soldiers",page=0,pos=10,num=2,delay=0,drag={}},
                        {cat="defense",page=0,pos=6,num=1,delay=0,drag={}},
                        {cat="soldiers",page=6,pos=10,num=2,delay=500,drag={}}
                },

          pvpangel = { {cat="soldiers",page=1,pos=10,num=2,delay=0,drag={}},
                        {cat="defense",page=0,pos=10,num=1,delay=0,drag={}},
                        {cat="soldiers",page=9,pos=5,num=2,delay=500,drag={}}
                },

          pvpjun2000 = { {cat="soldiers",page=0,pos=11,num=2,delay=0,drag={}},
                        {cat="defense",page=0,pos=8,num=1,delay=0,drag={}},
                        {cat="soldiers",page=6,pos=8,num=2,delay=500,drag={}}
                },

          pvpfindme = { {cat="vehicles",page=3,pos=11,num=3,delay=0,drag={} },
                  {cat="soldiers",page=1,pos=2,num=2,delay=0,drag={}}
                },

          pvpcard9108 = { {cat="soldiers",page=1,pos=2,num=2,delay=0,drag={}},
                        {cat="defense",page=0,pos=7,num=1,delay=0,drag={}},
                        {cat="soldiers",page=4,pos=7,num=2,delay=500,drag={}}
                },

          pvpddwhzy = { {cat="vehicles",page=5,pos=3,num=1,delay=0,drag={} },
                  {cat="soldiers",page=1,pos=2,num=2,delay=0,drag={}},
                  {cat="vehicles",page=6,pos=11,num=2,delay=500,drag={} }
                },


          pvp00678 = { {cat="soldiers",page=1,pos=10,num=2,delay=0,drag={}},
                        {cat="defense",page=0,pos=10,num=1,delay=0,drag={}},
                        {cat="soldiers",page=8,pos=5,num=2,delay=500,drag={}}
                },

          mk2 ={ {cat="vehicles",page=0,pos=5,num=3,delay=0,drag={} } },

          -- M10
          invasion ={ {cat="critters",page=0,pos=3,num=4,delay=0,drag={} },
                      {cat="navy",page=0,pos=10,num=1,delay=0,drag={} }
                    },

          -- Mine layer
          -- invasion ={ {cat="critters",page=0,pos=3,num=4,delay=0,drag={} },
          --             {cat="navy",page=0,pos=4,num=1,delay=0,drag={} }
          --           },

          m1 = {  {cat="critters",page=0,pos=5,num=1,delay=0,drag={}},
                    {cat="critters",page=0,pos=6,num=5,delay=0,drag={} }
                  },
          m2 = {  {cat="soldiers",page=7,pos=6,num=1,delay=0,drag={}},
                    {cat="critters",page=0,pos=6,num=5,delay=0,drag={} }
                  },
          m3 = {  {cat="soldiers",page=7,pos=8,num=1,delay=0,drag={}},
                    {cat="critters",page=0,pos=6,num=5,delay=0,drag={} }
                  },
          m4 = {  {cat="soldiers",page=9,pos=8,num=1,delay=500,drag={}},
                    {cat="critters",page=0,pos=6,num=5,delay=0,drag={} }
                  },
          m5 = {  {cat="critters",page=1,pos=3,num=1,delay=0,drag={}},
                    {cat="critters",page=0,pos=6,num=5,delay=0,drag={} }
                  },


          wrp = { 
                   {cat="vehicles",page=0,pos=8,num=1,delay=0,drag={} },
                   {cat="critters",page=1,pos=8,num=3,delay=500,drag={} }
                  },

          angel = {
                   {cat="critters",page=0,pos=4,num=5,delay=0,drag={} },
                   {cat="vehicles",page=0,pos=3,num=1,delay=0,drag={} }
                  },


          -- lingfeng9998
          -- dragon = { {cat="soldiers",page=3,pos=10,num=5,delay=0,drag={2,5,3,4,2,1,3,3} },
          --          {cat="soldiers",page=1,pos=4,num=3,delay=0,drag={}} }

          -- card9108
          dragon = { {cat="soldiers",page=3,pos=9,num=5,delay=0,drag={2,5,3,4,2,1,3,3} },
                   {cat="soldiers",page=1,pos=8,num=3,delay=0,drag={}} }

          -- douglasyin
          -- dragon = { {cat="soldiers",page=5,pos=10,num=5,delay=0,drag={2,5,3,4,2,1,3,3} },
          --          {cat="soldiers",page=2,pos=3,num=3,delay=0,drag={}} }

          -- bengege
          -- dragon = { {cat="soldiers",page=5,pos=11,num=5,delay=0,drag={2,5,3,4,2,1,3,3} },
          --          {cat="soldiers",page=1,pos=7,num=3,delay=0,drag={}} }


        }

-- +--------------------------------+
-- | Attack sequence definition
-- +--------------------------------+

attackSequence = { 

                bigfoot  = {  -- unit row,unit col, weapon inx,armrack #,ammorack count, aim drag?, taget row, target col
                    {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1},    -- row2 col3, weapon #1 rack1, aiming drag, use beatit() to fire 
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},    -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},    -- mammoth 2, yell
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}     -- mammoth 3, yell
                },
                ddd  = {  
                    -- {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,aim=true,asdrag={2,3,1,1},starget=-1},
                    -- {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,aim=true,asdrag={2,3,2,5},starget=-1},
                    -- {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,aim=true,asdrag={2,3,2,5},starget=-1},
                    -- {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,aim=true,asdrag={2,3,2,5},starget=-1},
                    -- {row=2,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    -- {row=2,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,combo=true,loop={7,10000}},
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1},
                    {row=2,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=2,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1}
                },
                mechtank  = {  
                    -- {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=true,starget=-1},
                    {row=1,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1}
                },
                legenddragon = {
                    {row=2,col=3,wpn=4,armrack=3,ammorack=0,drag=false,starget=1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                agt = {
                    {row=2,col=3,wpn=3,armrack=3,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                sandworm = {
                    {row=2,col=2,wpn=3,armrack=3,ammorack=0,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=0,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=0,drag=false,starget=-1},
                    {row=2,col=2,wpn=4,armrack=3,ammorack=1,drag=false,starget=-1}

                },
                gunship = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=true,starget=-1},
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
                ma = {
                    {row=3,col=3,wpn=1,armrack=1,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                maa = {
                    {row=3,col=3,wpn=1,armrack=1,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                deadshot = {
                    {row=3,col=3,wpn=2,armrack=2,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                pelikan = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                deadshota = {
                    {row=3,col=3,wpn=2,armrack=2,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                killshot = {
                    {row=3,col=3,wpn=2,armrack=2,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                killshota = {
                    {row=3,col=3,wpn=2,armrack=2,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                angel = {
                    {row=2,col=3,wpn=3,armrack=3,ammorack=1,drag=true,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                range = {
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                pvpdouglasyin = {
                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                },
                pvp471361082 = {
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                },
                pvpjun2000 = {
                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                },
                pvpangel = {
                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                },
                pvpfindme = {
                    {row=1,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},

                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=1,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},

                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1}

                },
                pvpcard9108 = {
                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                },

                pvpddwhzy= {
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},

                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},

                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                },

                pvp00678 = {
                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                    {row=2,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1},

                },
                m1 = {
                    {row=1,col=1,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=2,col=3,wpn=2,armrack=1,ammorack=1,drag=true,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                m2 = {
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=5,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},                    
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                m3 = {
                    {row=3,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=1,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                m4 = {    -- ground shaker

                    {row=1,col=1,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=3,col=3,wpn=1,armrack=1,ammorack=0,drag=true,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                m5 = {

                    {row=1,col=3,wpn=4,armrack=3,ammorack=0,drag=false,starget=1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
                wrp = {
                    {row=2,col=2,wpn=3,armrack=3,ammorack=0,drag=false,starget=-1},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=0,drag=false,starget=-1},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=0,drag=false,starget=-1},
                    {row=2,col=2,wpn=4,armrack=3,ammorack=1,drag=false,starget=-1},
                    {row=2,col=3,wpn=4,armrack=3,ammorack=1,drag=false,starget=-1}
                },
                invasion = {
                    {row=1,col=5,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                },
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

  touchDown(7,367,557)
  mSleep(65)
  touchMove(7,374,559)
  mSleep(17)
  touchMove(7,387,559)
  mSleep(16)
  touchMove(7,401,565)
  mSleep(17)
  touchMove(7,416,574)
  mSleep(17)
  touchMove(7,431,583)
  mSleep(18)
  touchMove(7,444,593)
  mSleep(16)
  touchMove(7,456,603)
  mSleep(16)
  touchMove(7,470,613)
  mSleep(17)
  touchMove(7,482,624)
  mSleep(17)
  touchMove(7,495,636)
  mSleep(17)
  touchMove(7,515,652)
  mSleep(17)
  touchMove(7,535,670)
  mSleep(17)
  touchMove(7,556,687)
  mSleep(16)
  touchMove(7,581,708)
  mSleep(17)
  touchMove(7,606,732)
  mSleep(17)
  touchMove(7,630,756)
  mSleep(17)
  touchMove(7,656,780)
  mSleep(17)
  touchMove(7,684,805)
  mSleep(17)
  touchMove(7,714,828)
  mSleep(17)
  touchMove(7,744,856)
  mSleep(17)
  touchMove(7,776,882)
  mSleep(17)
  touchMove(7,808,910)
  mSleep(16)
  touchMove(7,843,936)
  mSleep(17)
  touchMove(7,885,969)
  mSleep(17)
  touchMove(7,924,997)
  mSleep(16)
  touchMove(7,958,1020)
  mSleep(17)
  touchMove(7,995,1046)
  mSleep(17)
  touchMove(7,1034,1069)
  mSleep(17)
  touchMove(7,1073,1093)
  mSleep(17)
  touchMove(7,1111,1116)
  mSleep(17)
  touchMove(7,1147,1138)
  mSleep(16)
  touchMove(7,1178,1159)
  mSleep(17)
  touchMove(7,1206,1179)
  mSleep(17)
  touchMove(7,1229,1195)
  mSleep(16)
  touchMove(7,1248,1209)
  mSleep(17)
  touchMove(7,1267,1222)
  mSleep(17)
  touchMove(7,1283,1232)
  mSleep(16)
  touchMove(7,1303,1243)
  mSleep(17)
  touchMove(7,1319,1252)
  mSleep(17)
  touchMove(7,1337,1261)
  mSleep(17)
  touchMove(7,1351,1267)
  mSleep(16)
  touchMove(7,1360,1272)
  mSleep(17)
  touchMove(7,1368,1276)
  mSleep(16)
  touchMove(7,1373,1279)
  mSleep(18)
  touchMove(7,1376,1280)
  mSleep(16)
  touchMove(7,1377,1281)
  mSleep(16)
  touchMove(7,1378,1282)
  mSleep(17)
  touchMove(7,1379,1282)
  mSleep(50)
  touchUp(7,1380,1284)
  mSleep(752)

  touchDown(11,444,712)
  mSleep(49)
  touchMove(11,452,717)
  mSleep(17)
  touchMove(11,459,717)
  mSleep(18)
  touchMove(11,469,722)
  mSleep(15)
  touchMove(11,484,731)
  mSleep(17)
  touchMove(11,499,741)
  mSleep(16)
  touchMove(11,516,754)
  mSleep(17)
  touchMove(11,531,767)
  mSleep(17)
  touchMove(11,549,784)
  mSleep(16)
  touchMove(11,564,802)
  mSleep(16)
  touchMove(11,581,820)
  mSleep(17)
  touchMove(11,601,839)
  mSleep(16)
  touchMove(11,625,866)
  mSleep(17)
  touchMove(11,652,890)
  mSleep(17)
  touchMove(11,680,918)
  mSleep(16)
  touchMove(11,707,944)
  mSleep(16)
  touchMove(11,732,968)
  mSleep(17)
  touchMove(11,757,992)
  mSleep(18)
  touchMove(11,783,1017)
  mSleep(16)
  touchMove(11,812,1043)
  mSleep(17)
  touchMove(11,842,1067)
  mSleep(16)
  touchMove(11,870,1091)
  mSleep(17)
  touchMove(11,898,1113)
  mSleep(17)
  touchMove(11,918,1133)
  mSleep(16)
  touchMove(11,940,1150)
  mSleep(18)
  touchMove(11,959,1168)
  mSleep(16)
  touchMove(11,978,1183)
  mSleep(19)
  touchMove(11,992,1196)
  mSleep(14)
  touchMove(11,1007,1209)
  mSleep(17)
  touchMove(11,1022,1222)
  mSleep(16)
  touchMove(11,1035,1233)
  mSleep(17)
  touchMove(11,1049,1245)
  mSleep(18)
  touchMove(11,1059,1252)
  mSleep(15)
  touchMove(11,1069,1262)
  mSleep(17)
  touchMove(11,1077,1267)
  mSleep(26)
  touchMove(11,1084,1273)
  mSleep(7)
  touchMove(11,1095,1279)
  mSleep(17)
  touchMove(11,1102,1284)
  mSleep(17)
  touchMove(11,1111,1289)
  mSleep(16)
  touchMove(11,1118,1293)
  mSleep(17)
  touchMove(11,1128,1297)
  mSleep(17)
  touchMove(11,1142,1305)
  mSleep(16)
  touchMove(11,1154,1310)
  mSleep(17)
  touchMove(11,1167,1317)
  mSleep(17)
  touchMove(11,1180,1325)
  mSleep(17)
  touchMove(11,1192,1332)
  mSleep(17)
  touchMove(11,1203,1338)
  mSleep(17)
  touchMove(11,1211,1344)
  mSleep(16)
  touchMove(11,1220,1349)
  mSleep(17)
  touchMove(11,1228,1354)
  mSleep(18)
  touchMove(11,1234,1357)
  mSleep(15)
  touchMove(11,1240,1360)
  mSleep(16)
  touchMove(11,1245,1363)
  mSleep(17)
  touchMove(11,1249,1364)
  mSleep(16)
  touchMove(11,1253,1366)
  mSleep(17)
  touchMove(11,1258,1368)
  mSleep(17)
  touchMove(11,1261,1369)
  mSleep(18)
  touchMove(11,1264,1370)
  mSleep(15)
  touchMove(11,1266,1371)
  mSleep(17)
  touchMove(11,1267,1372)
  mSleep(17)
  touchMove(11,1270,1374)
  mSleep(17)
  touchUp(11,1274,1378)
  mSleep(656)

  touchDown(4,294,1077)
  mSleep(97)
  touchUp(4,297,1076)
  mSleep(931)

  touchDown(9,376,340)
  mSleep(116)
  touchUp(9,371,338)
end
