//Connor Goble
//Project 1

//variables and functions
void drawHouse(int x, int y){
  fill(0,0,255);
  rect (x, y,100,100);
  fill(255,0,0);
  triangle(x,y,x+50, y-75 ,x+100-, y);
}// end function
void setup(){
  size(600,400);
  background(0,0,225);
  drawHouse(300,200);
}//end setup

void draw() {
}// end draw
