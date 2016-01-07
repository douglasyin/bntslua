-- require "bigfoot_config"

coord={{x=339,y=65},
      {x=334,y=56},
      {x=334,y=35},
      {x=362,y=88}
    }

function appendLog( logfile, str )
initLog(logfile,0)
wLog(logfile, str )
closeLog(logfile)
end

function hex2RGB(c)
  local r=math.modf(c/65536);
  local g=math.modf(c/256)%256;
  local b=c%256;
  return r,g,b
end

function colorCompareFuzzy(c, c1, diff)
  diff=diff or 0
  local r,g,b = hex2RGB(c)
  local r1,g1,b1 = hex2RGB(c1)

  if math.abs(r-r1)<=diff and math.abs(g-g1)<=diff and math.abs(b-b1)<=diff then
    return true
  else
    return false
  end
end

function waitForColor( x,y,color,waitfor )
  for i=1,waitfor*4 do
    mSleep(250)
    xx=getColor(x,y)
    -- if  xx==color then
    if  colorCompareFuzzy(xx, color, 20)==true then
      return true
    end   
  end
  return false
end

init("0",0)

-- c=waitForColor(abortx, aborty, abortcolor,15)

for i=1, #(coord) do
  c=getColor(coord[i].x, coord[i].y)
  appendLog( "color.log", string.format("x=%d, y=%d, color=%d", coord[i].x, coord[i].y, c) )
end