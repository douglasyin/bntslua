BS_CURRENT = "dragon"

-- +--------------------------------+
-- | Battle field unit definition
-- +--------------------------------+

units = { samurai  = { {cat="aircraft",page=0,pos=1,num=3,delay=0,drag={2,2,1,1,2,3,1,3,2,4,1,5}},
                       {cat="vehicles",page=2,pos=5,num=2,delay=500,drag={}},
                       {cat="critters",page=0,pos=2,num=4,delay=0,drag={}},
                       {cat="soldiers",page=3,pos=14,num=1,delay=0,drag={}},
                       {cat="aircraft",page=0,pos=9,num=1,delay=0,drag={}},
                       {cat="soldiers",page=1,pos=3,num=2,delay=0,drag={}}
                     },
          dragon   = { {cat="soldiers",page=3,pos=3,num=5,delay=0,drag={2,3,1,1,2,4,1,2,2,5,3,2}},
                       {cat="critters",page=0,pos=1,num=0,delay=0,drag={}},
                       {cat="soldiers",page=0,pos=13,num=3,delay=0,drag={1,4,2,3,1,5,3,3}}
                     }
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

function click(x,y) 
  touchDown(x,y)
  mSleep(50)
  touchUp(x,y)
  mSleep(100)
end


-- +--------------------------------+
-- | quick version of click
-- +--------------------------------+
function touchScreen(x,y) 
  touchDown(x,y)
  mSleep(20)
  touchUp(x,y)
  mSleep(100)
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

function deployTroop( u )
  local row,col,row1,col1

  for i=1,#(u) do
    click(unitselect.all, unitselecty)                -- unit category button
    touchScreen(unitselect[u[i].cat], unitselecty)      -- category
    
    mSleep(300)
    pg=1                                              -- page
    while pg<=u[i].page do
      preciseDrag(unitx,unity[16],unitx,unity[1],20)
      mSleep(200)
      pg=pg+1
    end
    mSleep(u[i].delay)

    mSleep(200)

    for j=1,u[i].num do                           -- deploy the unit(s)
      touchScreen(unitx, unity[u[i].pos])
    end

    for k=1,#(u[i].drag)/4 do                    -- drag unit(s) to the right position
      local start=4*(k-1)+1
      row=u[i].drag[start]
      col=u[i].drag[start+1]
      row1=u[i].drag[start+2]
      col1=u[i].drag[start+3]

      dragDrop(hl[row][col].x,hl[row][col].y,hl[row1][col1].x,hl[row1][col1].y,5)
      mSleep(300)
    end
  end
end

init("0",0)
mSleep(1000)
click(0,0)

deployTroop( units[BS_CURRENT])