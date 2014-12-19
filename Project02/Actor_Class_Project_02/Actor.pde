//Actor Class

class Actor{
  //fields
  float x;
  float y;
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  int fillRed = 0;
  int fillGreen = 0;
  int fillBlue = 0;
  int penRed = 255;
  int penGreen = 255;
  int penBlue = 255;
  int size = 50;
  int wid= 50;
  int hei = 50;
  int dx =0;
  int dy = 0;


public Actor (float xPos, float yPos) {
  x = xPos;
  y = yPos;
}
public Actor() {
}

void setColor( int r, int g, int b){
  fillRed= r;
  fillGreen = g;
  fillBlue = b;
}
void setPenColor( int r, int g, int b){
  penRed= r;
  penGreen = g;
  penBlue = b;
}

void move(){
  x= x+dx;
  y= y+ dy;
}

void goTo(float xPos, float yPos) {
  x= xPos;
  y = yPos;
}

void bounceEdge(){
  if(x> width || x<0){
    dx=dx * -1;
  }
  if(y> height || y<0){
    dy=dy * -1;
  }
}

void setDX (int xVel){
  dx = xVel;
}
void setDY (int yVel){
  dy = yVel;
}

void drawRect(){
  stroke(penRed, penGreen, penBlue);
  fill (fillRed, fillGreen, fillBlue);
  rect(x,y,wid,hei);
}

void drawTriangle(){
  stroke(penRed, penGreen, penBlue);
  fill (fillRed, fillGreen, fillBlue);
  // triangle(x1,y1,x2,y2,x3,y3);
  triangle(x,y,x+wid,y, x+wid, y-hei);
}


}
