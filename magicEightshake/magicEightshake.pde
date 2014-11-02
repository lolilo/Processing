//Liana Lo, CP1, Assignment 13: Magic Eight, mods 4/5

int s = 230;
int x = 0;
int y = 0;
int n = 18;
int b = 230;
int a = 4;

int o = 0;
int m = 0;
int l = 110;

boolean answer = false; 
boolean mode = false;

void setup()
{
  background(b);
  smooth();
  size(300,300);
  fill(0);
  ellipse (150,150,s,s);
  fill(255);
  ellipse(150,80,100,80);
  ellipse(150,60,50,25);
  ellipse(150,90,60,35);
  frameRate(40);

  PFont font;
  font = loadFont("ArialRoundedMTBold-48.vlw"); 
  textFont(font); 
}

void draw()
{
  black();
}

void black()
{
  if (mode == false && (mouseButton == LEFT))
  { 
    mode = !mode;
    fill(0);
    ellipse (150,150,s,s);
    fill(255);
    ellipse(150,80,100,80);
    ellipse(150,60,50,25);
    ellipse(150,90,60,35);
  }
  else if (mousePressed == true)
  { 
    background(b);
    x = int(random(-n,n));
    y = int(random(-n,n));
    fill(0);
    ellipse (150+x,150+y,s,s);
    fill(255);
    ellipse(150+x,80+y,100,80);
    ellipse(150+x,80+y,100,80);
    ellipse(150+x,60+y,50,25);
    ellipse(150+x,90+y,60,35);

    noStroke();
    o = int(random(-l,l));
    m = int(random(-l,l));
    ellipse(150+o,150+m,a,a);
    o = int(random(-l,l));
    m = int(random(-l,l));
    ellipse(150+o,150+m,a,a);
    o = int(random(-l,l));
    m = int(random(-l,l));
    ellipse(150+o,150+m,a,a);
    
    stroke(0);
  }

}

void mouseReleased()
{
  if (mode == true)
  {
    background(b);
    fill(0);
    ellipse (150,150,s,s);
    fill(240,0,240,90);
    triangle(150, 170, 110, 130, 190, 130);

    String[] answers = {
      "definitely", "of course", "most likely", "probably not", "certainly", "fifty-fifty", "no", "ask again", "doubtful"};
    int a = int(random(0,9));
    String an = answers[a];
    fill(255);
    textSize(25);
    textAlign(CENTER);
    text(an, 150, 150);
  }
}

