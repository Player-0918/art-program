color red = #FF0000;
color blue = #00CEFF;
color green = #10FF00;
color yellow = #FAFF00;
color darkGrey = #6C6C6C;
color white = #FFFFFF;
color back = #02AFD8;
color black = #050505;
color purple = #9400FF;
color orange = #FF9900;
color crimson = #B40F0F;
float width = 6;
PImage op;
PImage nar;
PImage clod;
boolean on = false;
PImage select1;

//variable for color selection
color select;

float slider;

void setup()
{
  
  size(900, 700);
  strokeWeight(6);
  stroke(darkGrey);
  select = darkGrey;
  slider = 650;
  op = loadImage("op.png");
  nar = loadImage("naruto.png");
  clod = loadImage("980.png");
  background(back);
  on = false;
 
 
}

void draw()
{ 
  
  noStroke();
  fill(#022FA7);
  rect(0,0,200,1500);
  rect(30,0,1500,150);
  rect(30,650,1500,150);
  rect(750,30,150,1500);
  tactile1(770,300,120,70);
  image(op, 770,300,120,70); 
  tactile1(785,400,90,70);  
  image(nar, 785,400,90,70);
  image(clod,785,480,90,70);
  fill(250);
  rect(290,660,100,30);
  rect(490,660,100,30);
  rect(690,660,100,30);
  fill(0);
  textSize(30);
  text("SAVE", 300,685);
  text("LOAD",500,685);
  text("CLEAR", 700,685);
  // buttons for colors
  strokeWeight(7);
  tactile(100,60,50);
  Button (blue, 100, 60, 100);
  
  tactile(250,60,50);
  Button (red, 250, 60, 100);
  
  tactile(400,60,50);
  Button (yellow, 400, 60, 100);
  
  tactile(550,60,50);
  Button (green, 550, 60, 100);
  
  tactile (100,200,50);
  Button (crimson,100,200,100);
  
  tactile(100,350,50);
  Button(black, 100, 350,100);
  
  tactile (100,450,50);
  Button(purple,100,500,100);
  
  tactile(100,650,50);
  Button(orange,100,650,100);
  
  tactile(800,245,60);
  Eraser(back, 800, 200,50,50);
  //canvas

  
  noStroke();
  fill(#022FA7);
  rect(630,35,250,50);
  fill(0);
  fill(0);
  stroke(darkGrey);
  line(650,60,850,60);
  //noStroke();
  circle(slider, 60,30);
  
  stroke(black);
  strokeWeight(width);
  line(650,100,850,100);
  
}


void mouseReleased()
{
  
  if(dist(100,60,mouseX,mouseY) < 50)
  {
    select = yellow;
    on = false;
    //noStroke();
  }
 
  if(dist(100,60,mouseX,mouseY)<50)
  {
    select = blue;
    on = false;
  }
  
  if(dist(250,60,mouseX,mouseY)<50)
  {
    select = red;
    on = false;
  }
  
  if(dist(400,60,mouseX,mouseY)<50)
  {
    select = yellow;
    on = false;
  }
  
  if(dist(550,60,mouseX,mouseY)<50)
  {
    select = green;
    on = false;
  }
  
  if(dist(100,200,mouseX,mouseY)<50)
  {
    select = crimson;
  }
  
  if(dist(100,350,mouseX,mouseY)<50)
  {
    select = black;
  }
  
  if(dist(100,450,mouseX,mouseY)<50)
  {
    select = purple;
  }
  
  if(dist(100,650,mouseX,mouseY)<50)
  {
    select = orange;
  }
  
 if(dist(800,200,mouseX,mouseY)<50)
  {
    select = back;
  }
  
 if(dist(830,330,mouseX,mouseY)<50)
  {
    on = !on;
    select1 = op;
  }
  
  if(dist(830,430,mouseX,mouseY)<50)
  {
    on = !on;
    select1 = nar;
  }
  
  if(dist(830,530,mouseX,mouseY)<50)
  {
    on = !on;
    select1 = clod;
  }
  
  
  if(dist(690,660,mouseX,mouseY)<50)
  {
    background(back);
  }
  
  if(dist(290,660,mouseX,mouseY)<50)
  {
    selectOutput("save your drawing", "saveImage");
  }
  
  if(dist(490,660,mouseX,mouseY)<50)
  {
    selectOutput("load an image", "openImage");
  }
  

  
  controlSlider();
  
}




void mouseDragged()
{
  if (on == false)
  {
    controlSlider();
    stroke(select);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  else
  {
 image(select1,mouseX,mouseY,100,100);
  }
}


void controlSlider()
{
  
  if(mouseX>650 && mouseX<850 && mouseY > 45 && mouseY < 75)
  {
    slider = mouseX;
  }
  width = map(slider,650,850, 0,50);
}


void tactile(int x, int y, int r)
{
  if (dist(x,y,mouseX,mouseY)<r)
  {
    //noStroke();
    noFill();
    stroke(white);
  }
  else
  {
    stroke(darkGrey);
  }
}



void Button(color i, int x, int y, int z)
{
  fill(i);
  circle(x, y, z);
}

void Eraser (color i, int x, int y, int z, int w)
{
  fill(i);
  rect(x,y,z,w);
}

void tactile1(int x, int y, int w, int h)
{
  if(mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+w)
  {
    fill(255,255,0);
  }
  else
  {
    fill(255);
  }
}
