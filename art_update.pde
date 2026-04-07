color red = #FF0000;
color blue = #00CEFF;
color green = #10FF00;
color yellow = #FAFF00;
color darkGrey = #6C6C6C;
color white = #FFFFFF;
color back = #02AFD8;

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
  tactile(100,60,50);
  Button (blue, 100, 60, 100);
  
  tactile(250,60,50);
  Button (red, 250, 60, 100);
  
  tactile(400,60,50);
  Button (yellow, 400, 60, 100);
  
  tactile(550,60,50);
  Button (green, 550, 60, 100);

  //canvas
  fill(select);
  square(200, 150, 500);
  
  
  fill(0);
  line(650,60,850,60);
  //noStroke();
  circle(slider, 60,30);
}


void mouseReleased()
{
  if(dist(100,60,mouseX,mouseY) < 100)
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
}


void controlSlider()
{
  if(mouseX>650 && mouseX<850)
  {
    slider = mouseX;
  }
}


void tactile(int x, int y, int r)
{
  if (dist(x,y,mouseX,mouseY)<r)
  {
    stroke(white);
    noStroke();
    noFill();
    square(200, 150, 500);
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
