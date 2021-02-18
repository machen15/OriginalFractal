public void setup()
{
  size(500,500);
  background(255);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}

public void draw()
{
  myFractal(0,0,500);
}
public void mouseClicked() 
{
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
}
public void myFractal(int x, int y, int siz)
{
  circle(x,y,siz);
  if(siz > 10)
  {
    myFractal(x,y,siz/2);
    myFractal(x+siz/2,y-siz/2,siz/2);
    myFractal(x+siz/2,y+siz/2,siz/2);
    myFractal(x-siz/2,y-siz/2,siz/2);
    myFractal(x-siz/2,y+siz/2,siz/2);
  }
}
