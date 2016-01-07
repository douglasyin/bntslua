img={ {x=100,y=200,color=14774528},
      {x=100,y=200,color=14774528},
      {x=100,y=200,color=14774528}}

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

function waitForMultiPixelFuzzy( img, diff, waitfor )
  for i=1,waitfor*4 do
    mSleep(250)
    for j=1, #(img) do
      xx=getColor(img[j].x,img[j].y)
      if  colorCompareFuzzy(xx, img[j].color, diff) == false then
        break
      end
    end 

    if j == #(img)+1 then
      return true
    end
  end
  return false
end
