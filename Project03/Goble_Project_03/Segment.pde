//segment class extends actor
class Segment extends Actor{
 float len; //length
 float weight = 5;
 
 
 //
 public Segment(float x, float y){
   super(x,y);
   len = size;
 }
 
 public Segment(float x, float y, float d, float s){
   super (x,y);
   direction = d;
   len = s;
 }
 public Segment(){
 }
 
 public void drawLine(){
   //calculate the endpoints
   float x2 = x + len * cos(radians(direction));
   float y2 = y + len * sin(radians(direction));
   stroke(penRed, penGreen, penBlue);
   strokeWeight(weight);
   line(x,y,x2,y2); 
 }
 public float getEndx() {
   float x2 = x + len * cos(radians(direction));
   return x2;
 }
 public float getEndY(){
   float y2 = y + len * sin(radians(direction));
   return y2;
}
}
