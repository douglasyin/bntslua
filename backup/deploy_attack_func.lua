BIGFOOT_CURRENT = "bigfoot"

units ={ bigfoot= { {cat="critters",page=0,pos=2,num=5,delay=0},             -- mammoth
                    {cat="vehicles",page=2,pos=11,num=1,delay=500} },        -- arctic tank
         pig    = { {cat="critters",page=0,pos=2,num=5,delay=0} }            

        }
        
attackSequence={ bigfoot ={  -- unit row,unit col, weapon inx,armrack #,ammorack count, aim drag?, taget row, target col
        {row=2,col=3,wpn=1,armrack=1,ammorack=0,drag=false,trgtx=-1,trgty=-1},   -- row2 col3, weapon #1 rack1, aiming drag, use beatit() to fire 
        {row=1,col=3,wpn=3,armrack=2,ammorack=2,drag=false,trgtx=-1,trgty=-1},   -- row1,col3, weapon:yell, no aim drag, use beatit() to fire
        {row=1,col=5,wpn=3,armrack=2,ammorack=2,drag=false,trgtx=-1,trgty=-1},   -- mammoth 2, yell
        {row=1,col=4,wpn=3,armrack=2,ammorack=2,drag=false,trgtx=-1,trgty=-1}    -- mammoth 3, yell
    }
}


function deployTroop( u )
  for i=1,#(u) do
    click(unitselect.all, unitselecty)                -- unit category button
    touchScreen(unitselect[u[i].cat], unitselecty)      -- category
    
    mSleep(300)
    pg=1                                              -- page
    while pg<=u[i].page do
      preciseDrag(unitx,unity[16],unitx,unity[1],20)
      mSleep(400)
      pg=pg+1
    end
    mSleep(u[i].delay)

    mSleep(200)

    for j=1,u[i].num do                           -- deploy the unit(s)
      touchScreen(unitx, unity[u[i].pos])
    end
  end
end

function proceedAttackSequence( as )
  local xx,yy
  local c1,c2

  bigonefound=false

  for i=1,#(as) do

    if i==1 then
      -- rx,ry=waitForImage("abort_esv.png",90,298,1913,339,1940,0,15)  --wait the abort button for 15 seconds
      -- if rx==-1 and ry==-1 then
      --   return i,false,false                                 -- timeout, mission failed
      -- end
      c=waitForColor(abortx, aborty, abortcolor,15)
      if c==false then                                          -- timeout, mission failed
        return i,false,false
      end
    end

    -- click(764,1913) 
    mSleep(100)

    xx=hl[as[i].row][as[i].col].x     -- get unit position
    yy=hl[as[i].row][as[i].col].y

    click(xx,yy)                            -- activate unit

    if as[i].wpn~=-1 then
      wx,wy = weaponCoordinate(as[i].wpn, as[i].armrack, as[i].ammorack)
      -- dialog(string.format("%d,%d",wx,wy),5)
      click(wx,wy)                   -- switch weapon
    end

    if as[i].drag==true then             -- drag the aiming scope
      xi,yi,bigonefound=findtheBigOne()
      if bigonefound==true then
        dragDrop(ehl[2][3].x, ehl[2][3].y, ehl[xi][yi].x, ehl[xi][yi].y, 5)      -- indirect aim scope drag
      end
    end

    if as[i].trgtx~=-1 then                                    -- single fire
      xx=ehl[as[i].trgtx][as[i].trgty].x
      yy=ehl[as[i].trgtx][as[i].trgty].y

      click(xx,yy)
    else
      beatit()                                                    -- gatlin method fire
    end

    if i<#(as) then
      -- rx,ry,rx1,ry1=waitForTwoImages("victory_esv.png",90,531,996,554,1058,0,       --wait for victory dialog or
      --                                  "abort_esv.png",90,298,1913,339,1940,0,16)   --the abort button for 16 sec
      rx1,rx2=waitForTwoColor(victoryx,victoryy,victorycolor,abortx,aborty,abortcolor,15)         
      if rx1==victorycolor then
      -- if rx~=-1 and ry~=-1 then
        vict_dialog()
        return i,true,bigonefound
      else 
        if rx1==-1 and rx2==-1 then
        -- if rx==-1 and ry==-1 and rx1==-1 and ry1==-1 then         -- timeout, mission failed
          return i,false,bigonefound
        end
      end
    else                         -- Last round
      c = waitForColor(victoryx, victoryy, victorycolor,20)
      -- rx,ry=waitForImage("victory_esv.png",90,531,996,554,1058,0,20)    --wait for victory dialog
      if c==false then
      -- if rx==-1 and ry==-1 then       -- no victory dialog
      for i=1,2 do
          click(196,1970)             -- push pullback button 2 times
          mSleep(200)
        end
        mSleep(300)
        touchScreen(966,800)          -- ok
        return i,false,bigonefound
      else
        vict_dialog()                -- victory dialog found
        return i,true,bigonefound
      end
    end                 -- [ if i<attacks ]

  end    -- [for i=1,attacks do]
end
