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
  float dx =0;
  float dy = 0;

 float velocity = 0;
 float direction = 0;
 
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
  computeVector();
  x= x+dx;
  y= y+ dy;
}

void goTo(float xPos, float yPos) {
  x= xPos;
  y = yPos;
}

void bounceEdge(){
  computeVector();
  if(x> width || x<0){
    //dx=dx * -1;
    direction += 2 * (90- direction);
  }
  if(y> height || y<0){
    //dy=dy * -1;
    direction += 2 * (0- direction);
  }
}

void setDX (int xVel){
  dx = xVel;
}
void setDY (int yVel){
  dy = yVel;
}

void drawRect(int s){
  stroke(0, 0, 0);
  fill (fillRed, fillGreen, fillBlue);
  
  fill ( 240,240,240);
  //low
  ellipse(x,y+6*s,11*s,11*s);
  //mid
  ellipse(x,y,8*s,8*s);
  //head
  ellipse(x,y-5*s,6*s,6*s);
  
  //face
  fill (0,0,0);
  //right eye
  ellipse(x-1*s,y-6*s,1*s,1*s);
  //left eye
  ellipse(x+1*s,y-6*s,1*s,1*s);
  //nose
  fill(245,170,7);
  triangle(x-.25*s,y-5*s,x+ 1.5*s, y-4*s, x-.25*s,y-4*s);
  
  //hat
  fill(0,0,255);
  rect(x-1.5*s, y-11*s,3*s,3*s);
  rect(x-3*s, y-8*s,6*s,1*s);
  //smile
  fill(240,240,240);
  arc(x,y-4*s, 4*s,2*s,0,PI);
}

void drawTriangle(){
  stroke(penRed, penGreen, penBlue);
  fill (fillRed, fillGreen, fillBlue);
  // triangle(x1,y1,x2,y2,x3,y3);
  triangle(x,y,x+wid,y, x+wid, y-hei);
}

public void computeVector(){
dx = velocity * cos(radians(direction));
dy = velocity * sin(radians(direction));

}
public void turn(float t){
direction += t;
}

}
