//Liana Lo, CP2 mods 4/5, Assignment 3: Skyline

PImage b;

block bobo;
star gleam; 
moon shine;
moon ruby;

void setup()
{
  size(800,529);
  b = loadImage("skylinebackground.jpg");
  
  background(b);
  smooth();
  noStroke();

  bobo = new block();
  gleam = new star();
  shine = new moon();
  ruby = new moon();

  noLoop();
}

void draw()
{
  shine.show(0,0,255,255,255,70,200);
  ruby.show(0,0,255,0,0,0,6);

  for(int bright = 0; bright<300; bright++)
  {
    gleam.show(0,0);
  }

  for(int row=0; row<10; row++)
  {
    bobo.show(row*60 + 30,530);
  }
}

void mouseClicked()
{
  background(b);
  redraw();
}

class moon
{
  float shinex;
  float shiney;
  float shines;

  int cor;
  int cog;
  int cob;

  int si1;
  int si2;

  moon()
  {
    shinex=0;
    shiney=0;
    shines=0;

    cor=255;
    cog=255;
    cob=255;

    si1=0;
    si2=0;
  }

  void show(float shinex, float shiney, int cor, int cog, int cob, int si1, int si2)
  {    
    fill(cor,cog,cob);
    shinex = random(10,790);
    shiney = random(50,280);
    shines = random(si1,si2);
    ellipse(shinex,shiney,shines,shines);
    fill(cor,cog,cob,20);
    ellipse(shinex,shiney,shines+5,shines+5);
    ellipse(shinex,shiney,shines+10,shines+10);
    ellipse(shinex,shiney,shines+15,shines+15);
    ellipse(shinex,shiney,shines+20,shines+20);
    ellipse(shinex,shiney,shines+25,shines+25);
  }
}

class star
{
  float gleamx;
  float gleamy; 
  float gleams;

  star()
  {
    gleamx=0;
    gleamy=0;
    gleams=2;
  }

  void show(float gleamx, float gleamy)
  {
    fill(255);
    gleamx = random(0,800);
    gleamy = random(0,530);
    gleams = random(0,2);
    ellipse(gleamx,gleamy,gleams,gleams);
  }
}

class block
{ 
  float w;
  int h;
  int windows;
  int windowx;
  int windowy;
  float randomx;

  block()
  {
    windows=3;
  }

  void show(int x, int y)
  {
    fill(0);
    w = random(57,90);
    h = int(random(160,370));
    rect(x-w,y-h,w,h);

    for(int light=0; light<8; light++)
    { 
      fill(255);
      windowx = int(random(x-w+10,x-10));
      windowy = int(random(y-h+10,y-10));
      randomx = random(0,2);
      rect(windowx,windowy,windows+randomx,windows+2);
    }
  }
}



