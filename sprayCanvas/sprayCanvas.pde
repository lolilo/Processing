/*
   Liana Lo, CP2 mods 4/5, Assignment 8: Spray Paint
 
 Directions~
 
 click/drag the mouse to paint
 
 right click/drag: transparent brush
 left click/drag: solid brush
 
 click buttons to alter the size and color of your spray paint
 */

import interfascia.*;
GUIController c;
IFButton b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,bc,bx,bm,bp; 

int r=0;
int g=0;
int b=0; //colors

int s=25;
int q=20; //brush size

int a=42;

void setup()
{
  smooth();
  size(500,430);
  background (255);
  noStroke();

  c = new GUIController (this); 
  b1 = new IFButton ("red", 25, 400, a, 17);
  b2 = new IFButton ("orange", 25+45, 400, a, 17);
  b3 = new IFButton ("yellow", 25+90, 400, a, 17);
  b4 = new IFButton ("green", 25+90+45, 400, a, 17);
  b5 = new IFButton ("blue", 25+180, 400, a, 17);
  b6 = new IFButton ("purple", 25+180+45, 400, a, 17);  
  b7 = new IFButton ("brown", 25+180+90, 400, a, 17);
  b8 = new IFButton ("white", 25+180+90+45, 400, a, 17);
  b9 = new IFButton ("grey", 25+180+90+90, 400, a, 17);  
  b10 = new IFButton ("black", 25+180+90+90+45, 400, a, 17);
  bc = new IFButton ("clear white", 50, 10, a+25, 17);
  bx = new IFButton ("clear black", 120, 10, a+25, 17);
  bm = new IFButton ("- diameter", 330, 10, a+25, 17);
  bp = new IFButton ("+ diameter", 400, 10, a+25, 17);

  b1.addActionListener(this);
  b2.addActionListener(this);
  b3.addActionListener(this);
  b4.addActionListener(this);
  b5.addActionListener(this);
  b6.addActionListener(this);
  b7.addActionListener(this);
  b8.addActionListener(this);
  b9.addActionListener(this);
  b10.addActionListener(this);
  bc.addActionListener(this);
  bx.addActionListener(this);
  bm.addActionListener(this);
  bp.addActionListener(this);

  c.add (b1);
  c.add (b2);
  c.add (b3);
  c.add (b4);
  c.add (b5);
  c.add (b6);
  c.add (b7);
  c.add (b8);
  c.add (b9);
  c.add (b10);
  c.add (bc);
  c.add (bx);
  c.add (bm);
  c.add (bp);
}

void actionPerformed (GUIEvent e) 
{
  if (e.getSource() == bc) 
  {
    background(255);
  }
  if (e.getSource() == bx) 
  {
    background(0);
  }//background colors
  if (e.getSource() == bm && s>10) 
  {
    s=s-10;
    q=q-10;
  }//brush size -
  if (e.getSource() == bp) 
  {
    s=s+10;
    q=q+10;
  }//brush size +
  if (e.getSource() == b1) 
  {
    r=182;
    g=31;
    b=35;
  }//color red
  if (e.getSource() == b2) 
  {
    r=213;
    g=106;
    b=0;
  }//color orange
  if (e.getSource() == b3) 
  {
    r=216;
    g=233;
    b=3;
  }//color yellow
  if (e.getSource() == b4) 
  {
    r=77;
    g=202;
    b=34;
  }//color green
  if (e.getSource() == b5) 
  {
    r=29;
    g=65;
    b=207;
  }//color blue
  if (e.getSource() == b6) 
  {
    r=145;
    g=72;
    b=153;
  }//color purple
  if (e.getSource() == b7) 
  {
    r=124;
    g=65;
    b=58;
  }//color brown
  if (e.getSource() == b8) 
  {
    r=255;
    g=255;
    b=255;
  }//color white
  if (e.getSource() == b9) 
  {
    r=139;
    g=139;
    b=139;
  }//color grey
  if (e.getSource() == b10) 
  {
    r=0;
    g=0;
    b=0;
  }//color black
}

void draw()
{ 
  click();
}

void mouseClicked()
{
  if (mouseButton == LEFT)
  { 
    click();
  }//opacity - inner circle brush

  if (mouseButton == LEFT)
  { 
    fill(r,g,b,60);
    click();
  }//opacity - outer circle brush

  if (mouseButton == RIGHT)
  { 
    fill(r,g,b);
    click();
  }//solid brush
}

void mouseDragged()
{
  if (mouseButton == LEFT)
  { 
    fill(r,g,b,50);
    click();
  }//opacity - inner circle brush

  if (mouseButton == LEFT)
  { 
    fill(r,g,b,60);
    click();
  }//opacity - outer circle brush

  if (mouseButton == RIGHT)
  { 
    fill(r,g,b);
    click();
  }//solid brush
}

void click()
{
  if(mousePressed == true && mouseY < 400 && mouseY >25)
  {
    for(int i = 0; i < 10; i++)
    {
      float theta = random(0,2*PI);  //random angle in radians
      int radius = int(random(0,20));
      int x = mouseX + int(cos(theta)*radius);
      int y = mouseY + int(sin(theta)*radius);
      ellipse(x,y,s,s);
    }
  }
}

