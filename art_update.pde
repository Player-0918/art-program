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
float width = 6;

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
 
}

void draw()
{
  background(back);
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
  Button (white,100,200,100);
  
  tactile(100,350,50);
  Button(black, 100, 350,100);
  
  tactile (100,450,50);
  Button(purple,100,500,100);
  
  tactile(100,650,50);
  Button(orange,100,650,100);
  //canvas
  stroke(darkGrey);
  fill(255);
  square(200, 150, 500);
  
  
  fill(0);
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
    //noStroke();
  }
 
  if(dist(100,60,mouseX,mouseY)<50)
  {
    select = blue;
  }
  
  if(dist(250,60,mouseX,mouseY)<50)
  {
    select = red;
  }
  
  if(dist(400,60,mouseX,mouseY)<50)
  {
    select = yellow;
  }
  
  if(dist(550,60,mouseX,mouseY)<50)
  {
    select = green;
  }
 
  
  controlSlider();
  
}


void mouseDragged()
{
  controlSlider();
  stroke(select);
  line(pmouseX,pmouseY,mouseX,mouseY);
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
    square(200, 150, 500);
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
