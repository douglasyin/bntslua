BOSS_COUNT=100

RELAUNCH = 0
RELAUNCH_MAX = 25
LOGFILE="mm"

-- ehl={          -- I5
-- {{x=157,y=711},{x=217,y=593},{x=278,y=475},{x=336,y=363},{x=397,y=237}},
-- {{x=101,y=596},{x=151,y=478},{x=210,y=352},{x=268,y=232},{x=330,y=108}},
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


-- bigbugeye={
-- {{x=382,y=1376,x1=422,y1=1344},{x=492,y=1161,x1=532,y1=1129},{x=597,y=948,x1=637,y1=916},{x=704,y=735,x1=1744,y1=703},{x=810,y=522,x1=850,y1=490}},
-- {{x=276,y=1161,x1=316,y1=1129},{x=384,y=948,x1=424,y1=916},{x=490,y=168,x1=530,y1=702},{x=597,y=520,x1=637,y1=488},{x=703,y=309,x1=743,y1=277}},
-- {{x=0,y=0,x1=0,y1=0},{x=275,y=731,x1=315,y1=699},{x=384,y=522,x1=424,y1=490},{x=490,y=307,x1=530,y1=275},{x=0,y=0,x1=0,y1=0}}
-- }

bugleg = {   -- migrate from redbull's code
  {{x=1536-(530+28)*2,y=2048-(485-67)*2},{x=1536-(477+28)*2,y=2048-(592-67)*2},{x=1536-(423+28)*2,y=2048-(698-67)*2},{x=1536-(370+28)*2,y=2048-(805 -67)*2},{x=1536-(317+28)*2,y=2048-(911 -67)*2}},
  {{x=1536-(583+28)*2,y=2048-(591-67)*2},{x=1536-(530+28)*2,y=2048-(698-67)*2},{x=1536-(477+28)*2,y=2048-(805-67)*2},{x=1536-(423+28)*2,y=2048-(911 -67)*2},{x=1536-(370+28)*2,y=2048-(1018-67)*2}},
  {{x=0,              y=0              },{x=1536-(583+28)*2,y=2048-(805-67)*2},{x=1536-(530+28)*2,y=2048-(911-67)*2},{x=1536-(477+28)*2,y=2048-(1018-67)*2},{x=0,              y=0               }}
}
  

BBE_color=0x609A31

-- {{x=740,y=1830},{x=850,y=1640},{x=960,y=1420},{x=1060,y=1200},{x=1170,y=980}},
-- {{x=0,y=0},{x=960,y=1850},{x=1060,y=1620},{x=1170,y=1420}},
-- }


unitx=1465
unity={1963,1780,1597,1414,1231,1048,865,682,499,316,133} 

unitselectx=1335
-- unitselecty={all=1925, soldiers=1663,vehicles=1408,critters=1153,
--              infect=898,ignorable=643,defense=388,aircraft=133,navy=}
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

BS_BSFT={x=1349,y=261,color=0xED7F00}     -- Boss Strike start
BS13_clgicon={x=33,y=82,color=0xD1880B}   -- BS 13 challenge icon

BS16_land={x=34,y=82,color=0xFF2424} 
BS16_bay={x=34,y=82,color=0x3C96B0}
BS16_sea={x=34,y=82,color=0x08417E}

BS_BS_BPOK={x=978,y=801,color=0xED7F00}

BS_BS_PULLBACKCONFIRM={x=973,y=1036}
BS_OY={x=940,y=876}


BS_fight={x=1038,y=146}

-- BS_BS13_ad={color=0x8E0F05,x=1282,y=244}
-- BS_BS13_fght={color=0xDF7400,x=1309,y=183}



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

-- BM_beginGrey_BS = {{x=1001,y=77,color=0xC0C7D0},
--                    {x=1015,y=173,color=0xB7BFC8},
--                    {x=1096,y=220,color=0xA5ADB8}}

BM_glass_BS = {{x=1137,y=67,color=0x5B5B5B},
              {x=1213,y=115,color=0x575757},
              {x=1211,y=101,color=0xFEC253}}
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

MM_BS13_Fght={{color=0xDF7400,x=1309,y=183},               -- Boss Strike XIII fight button
              {color=0xFFFFFF,x=1331,y=257},
              {color=0xFF8500,x=1362,y=299}}

-- MM_BS13_logo={{x=484,y=1970,color=0xF0931B},                -- Boss Strike XIII mission button
--               {x=488,y=1926,color=0x697028},
--               {x=406,y=1952,color=0x651E0C}
--             }
MM_BS13_logo={{x=484,y=1970,color=0x817C64},                -- Boss Strike XIII mission button
              {x=488,y=1926,color=0x7F7A62},
              {x=418,y=1916,color=0xB98F97}
            }


MM_BS13_ad = {{color=0x900F05,x=1268,y=244},             -- Boss Strike XIII advertise OK button
              {color=0xF0F0F0,x=1272,y=298},
              {color=0x8E0F05,x=1272,y=398}}


BS_RETREAT = {challenge=false,normal=true,BSland=true,BSbay=false,BSsea=false}


BIGFOOT_CURRENT = "mk2"
BS_CURRENT="boss"

BS_LAND="boss"
BS_BAY="bay"
BS_SEA="sea"
BS_NORMAL="boss"
BS_CHALLENGE="boss"

-- +--------------------------------+
-- | Battle field unit definition
-- +--------------------------------+

units = { bigfoot  = { {cat="critters",page=0,pos=2,num=5,delay=0,drag={} },             -- mammoth
                       {cat="vehicles",page=2,pos=11,num=1,delay=500,drag={}} },         -- arctic tank

          sea={},

          legenddragon = { {cat="critters",page=0,pos=3,num=5,delay=0,drag={} },
                          {cat="critters",page=0,pos=9,num=1,delay=0,drag={}},
                          {cat="infect",page=0,pos=6,num=1,delay=0,drag={}} },

          boss = { {cat="critters",page=0,pos=3,num=1,delay=0,drag={} },
                   -- {cat="infect",page=0,pos=6,num=1,delay=0,drag={} },
                   {cat="vehicles",page=5,pos=11,num=7,delay=500,drag={}}},

          bossreal = { {cat="defense",page=0,pos=7,num=3,delay=0,drag={} },
                   -- {cat="infect",page=0,pos=6,num=1,delay=0,drag={} },
                   {cat="vehicles",page=5,pos=11,num=5,delay=500,drag={}}},

          bay = { {cat="navy",page=0,pos=4,num=1,delay=0,drag={} },  --minelayer
                  {cat="navy",page=0,pos=8,num=4,delay=0,drag={} },
                  {cat="navy",page=0,pos=10,num=1,delay=0,drag={} },
                  {cat="navy",page=0,pos=9,num=2,delay=0,drag={} } },
                  -- {cat="navy",page=0,pos=11,num=2,delay=0,drag={} } },

          yty = { {cat="vehicles",page=0,pos=2,num=1,delay=0,drag={} },  --minelayer
                  {cat="vehicles",page=0,pos=11,num=2,delay=0,drag={} },
                  {cat="vehicles",page=1,pos=11,num=1,delay=700,drag={} },
                  {cat="defense",page=0,pos=2,num=3,delay=0,drag={} } 
                },
                  -- {cat="navy",page=0,pos=11,num=2,delay=0,drag={} } },

          challenge = { {cat="ignorable",page=0,pos=6,num=3,delay=0,drag={} },
                   {cat="vehicles",page=5,pos=11,num=8,delay=500,drag={}}  }, 

          bosswimp ={ {cat="soldiers",page=0,pos=9,num=5,delay=0,drag={} },
                   {cat="vehicles",page=0,pos=4,num=5,delay=0,drag={}}  },

          bosss ={ {cat="vehicles",page=0,pos=5,num=3,delay=0,drag={} },
                   {cat="vehicles",page=0,pos=2,num=5,delay=0,drag={}}  },

          mk2 ={ {cat="vehicles",page=0,pos=5,num=3,delay=0,drag={} } },


          moon = { {cat="critters",page=0,pos=4,num=5,delay=0,drag={} },
                   {cat="soldiers",page=2,pos=6,num=1,delay=0,drag={}} }

        }

units["sea"] = units["bay"]
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
                legenddragon = {
                    {row=2,col=3,wpn=4,armrack=3,ammorack=0,drag=false,starget=1},
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                    },
                moon = {
                    {row=2,col=3,wpn=1,armrack=1,ammorack=1,drag=true,starget=-1}, 
                    {row=1,col=1,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
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
                    -- {row=1,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,4}},

                    -- {row=1,col=2,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1},
                    -- {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1}
                    },
                sea = {},

                yty  = {
                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=2,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}}

                },
                bay  = {
                    {row=1,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,5}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=true,asdrag={2,3,1,2}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=true,asdrag={2,3,1,4}},

                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,2}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,4}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=true,asdrag={2,3,1,1}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,2,4}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,2}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},
                    
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},

                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=1,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=2,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=4,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},
                    {row=2,col=5,wpn=3,armrack=3,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}}

                },
                bossreal = {
                    -- {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #1
                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    -- {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}}, 
                    -- {row=2,col=5,wpn=2,armrack=2,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},   -- raider summoner

                    -- {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- APC #2
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},   -- APC #3
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},          -- APC #4
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},     -- APC #5

                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
-------------------------
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},          -- APC #4
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},     -- APC #5

                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
-------------------------
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},          -- APC #4
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},     -- APC #5

                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
-------------------------
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},          -- APC #4
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},     -- APC #5

                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
-------------------------
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},          -- APC #4
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},     -- APC #5

                    {row=1,col=2,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=4,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}}          -- efence #3
-------------------------
                },
                boss = {
                    -- {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #1
                    {row=1,col=3,wpn=1,armrack=1,ammorack=0,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #2
                    {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3
                    -- {row=1,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}}, 
                    -- {row=2,col=5,wpn=2,armrack=2,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},   -- raider summoner

                    -- {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=4,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=true,asdrag={2,3,1,2}},  -- APC #2
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},  -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,4}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},          -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},     -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},         -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},          -- APC #8

                    -- {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    -- {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={1,3,1,2}}   -- last gamble

                    },

                challenge = {
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #1
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},         -- efence #3

                    {row=2,col=5,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1

                    {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},        -- APC #1
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},        -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},        -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},        -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- APC #8

                    {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #3
                    {row=2,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #4
                    {row=2,col=1,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #5
                    {row=3,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #6
                    {row=3,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #7
                    {row=3,col=2,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #8

                    {row=2,col=5,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #1
                    {row=2,col=4,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=false,asdrag={}},   -- APC #2
                    {row=2,col=3,wpn=2,armrack=2,ammorack=2,drag=false,starget=-1,aim=true,asdrag={1,3,1,2}}    -- APC #2
                    },

                bosss =  {
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3
                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},      -- 
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=true,asdrag={2,3,1,2}},  -- 
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- 
                    {row=1,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=true,asdrag={2,3,1,4}},   -- 
                    {row=2,col=5,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=true,asdrag={2,3,1,3}},  -- 
                    
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,2
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3

                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},      -- 
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=1,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},   -- 
                    {row=2,col=5,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,2
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3

                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},      -- 
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=1,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},   -- 
                    {row=2,col=5,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,2
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3

                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},      -- 
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=1,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},   -- 
                    {row=2,col=5,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,2
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3

                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},      -- 
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=1,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},   -- 
                    {row=2,col=5,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,2
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3

                    {row=2,col=1,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},      -- 
                    {row=2,col=2,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=2,col=3,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    {row=1,col=4,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},   -- 
                    {row=2,col=5,wpn=3,armrack=3,ammorack=3,drag=false,starget=-1,aim=false,asdrag={}},  -- 
                    
                    {row=1,col=2,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,2
                    {row=1,col=3,wpn=1,armrack=1,ammorack=1,drag=false,starget=-1,aim=false,asdrag={}},      -- suv  1,3

                }

}

attackSequence.sea = attackSequence.bay

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
