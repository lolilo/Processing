//Liana Lo, CP1, assignemnt 3: Shape Patterns, mods 4/5


int x = 180; //gradient timing
float z = 1; //gradient 

int a = 1; //diameter
int c = 150; //position

int cycle = 0; // color change timing

int m = 142;
int n = 64;
int o = 149; //RGB 

void setup()
{
  smooth();
  size(300,300);
  background(0,0,0);
  noFill();
  frameRate(60);
}

void draw()

{ 
  stroke(m+z,n+z,o+z);
  ellipse(150,150,0+a,0+a);
  ellipse (150-c,150-c,0+a,0+a);
  ellipse (150+c,150+c,0+a,0+a);
  ellipse (150-c,150+c,0+a,0+a);
  ellipse (150+c,150-c,0+a,0+a);
  z=z+4.5;

  if (x < 100)
  {
    x = 180;
    z = 1;
  }
  else
  {
    x = x - 3;
  } 
  
  if (a>800)
  {
    background(0,0,0);
    a=1;
    cycle=cycle+1;
  }
  else
  {
    a=a+2;
  }

  if (cycle>5)
  {
    cycle=0;
  } //reset timing

  if (cycle==5)
  {
    m=163;
    n=50;
    o=53; //red
  }

  if (cycle==4)
  {
    m=198;
    n=147;
    o=74; //orange
  }

  if (cycle==3)
  {
    m=157;
    n=155;
    o=57; //yellow
  }
  
  if (cycle==2)
  {
    m=95;
    n=155;
    o=57; //green
  }
  
  if (cycle==1)
  {
    m=53;
    n=115;
    o=159; //blue
  }
  
  if (cycle==0)
  { 
    m = 142;
    n = 64;
    o = 149; //purple
  }

}


