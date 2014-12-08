//Connor Goble
//Project 1

//variables and functions
void drawSnowman(int x, int y, int s){
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

}// end function
void setup(){
  size(600,400);
  background(0,255,232);
  drawSnowman(300,200,10);
  drawSnowman(400,250,5);
  drawSnowman(200,250,5);
  drawSnowman(100,250,5);
  drawSnowman(0,250,5);
  drawSnowman(500,250,5);
  drawSnowman(600,250,5);
  drawSnowman(450,250,5);
  drawSnowman(50,250,5);
  drawSnowman(150,250,5);
  drawSnowman(350,285,2);
  drawSnowman(370,285,2);
  drawSnowman(550,250,5);
  drawSnowman(250,250,5);
}//end setup

void draws() {
  drawSnowman(mouseX , mouseY, 5);
}// end draw
