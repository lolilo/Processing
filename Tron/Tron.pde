//Liana Lo, CP1, Assignment 11: Tron, mods 4/5

int x = 240;
int y = 170; //player1 position
int v = 4;

int play2x = 160;
int play2y = 130;
char control2 = 'n';

int s = 1;
int o = 70;

boolean gameOver = false; 
boolean gameOver2 = false;

void setup() {
  smooth();
  size (400,300);
  background(0);

  PFont font;
  font = loadFont("ArialRoundedMTBold-48.vlw"); 
  textFont(font); 
  textSize(30);
}

void draw() {   
  play1();
  lose1();

  lose2();
  play2(); 
}

void play1() {   
  if (!gameOver && !gameOver2) { 
    stroke(235,204,253);
    point(x,y);
    if (keyCode != RIGHT && keyCode != LEFT && keyCode != DOWN && keyCode != UP) {
      x=x+v; 
    }
    if (keyCode == RIGHT) {
      x=x+v;
    }
    if (keyCode == LEFT) {
      x=x-v;
    }
    if (keyCode == DOWN) {
      y=y+v;
    }
    if (keyCode == UP) {
      y=y-v;
    }
  }

  if (gameOver) { 
    fill(255);
    stroke(191,0,6);
    ellipse (x,y,s,s);
    s=s+3;
    if (s>30) {
      s=0;
    }
  }
}

void lose1() {
  if(get(x,y) != color(0)) {
    fill(255);
    text("You Lose!",130,150);
    println("you lose");
    gameOver = true;
  }
}


void play2() {   
  if (!gameOver2 && !gameOver) { 
    stroke(142,234,87);
    point(play2x,play2y);

    if (control2 == 'n') {
      play2x=play2x-v;
      if(get(play2x-v, play2y) != color(0)) {
        control2 = 'u';
      }
    }

    if (control2 == 'r') {
      play2x=play2x+v;
      if(get(play2x+v, play2y) != color(0) && get(play2x, play2y+y) == color(0)) {
        control2 = 'd';
      }
      else if(get(play2x+v, play2y) != color(0)) {
        control2 = 'u';
      }
      else {
        control2 ='r';
      }
    }

    if (control2 == 'l') {
      play2x=play2x-v;
      if(get(play2x-v, play2y) != color(0)) {
        control2 = 'u';
      }
    }

    if (control2 == 'd') {
      play2y=play2y+v;
      if(get(play2x, play2y+v) != color(0) && get(play2x-v, play2y) == color(0)) {
        control2 = 'l';
      } else if(get(play2x, play2y+v) != color(0)) {
        control2 = 'r';
      } else {
        control2 = 'd';
      }
    }

    if (control2 == 'u') {
      play2y=play2y-v;
      if(get(play2x, play2y-v) != color(0) && get(play2x+1, play2y) == color(0)) {
        control2 = 'r';
      } else if(get(play2x, play2y-v) != color(0)) {
        control2 = 'l';
      } else {
        control2 = 'u';
      }
    }
  }

  if (gameOver2) { 
    fill(255);
    stroke(191,0,6);
    ellipse (play2x,play2y,s,s);
    s=s+3;
    if (s>30) {
      s=0;
    }
  }
}

void lose2() { 
  if(get(play2x,play2y) != color(0)) {
    fill(255);
    text("You Win!",130,150);
    println("you win");
    gameOver2 = true;
  }
}

void mouseReleased() {
  background(0);
  x = 240;
  y = 170; //player1 position
  v = 4;

  play2x = 160;
  play2y = 130;
  control2 = 'n';

  s = 1;
  o = 70;

  keyCode=RIGHT;

  gameOver = false; 
  gameOver2 = false;
}

