color red = #FF0000;
color blue = #00CEFF;
color green = #10FF00;
color yellow = #FAFF00;
color darkGrey = #6C6C6C;



void setup()
{
  size(900,700);
  strokeWeight(6);
  stroke(darkGrey);
}

void draw()
{
  
  // buttons for colors
  Button (blue, 100, 60,100);
  Button (red, 250, 60, 100);
  Button (yellow, 400, 60,100);
  Button (green, 550, 60,100);
  
  //canvas
  noFill();
  square(200,150,500);
}


void mouseReleased()
{
  i//f dist()
}


void Button(color i, int x, int y, int z)
{
  fill(i);
  circle(x,y,z);
}
