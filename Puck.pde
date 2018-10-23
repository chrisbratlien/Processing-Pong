class Puck {
 float x = 0;
 float y = 0;
 float fieldWidth = 0;
 float fieldHeight = 0;
 
 float xspeed = 3;
 float yspeed = 1;
 float r = 12;

 Puck(float x,float y,int fieldWidth,int fieldHeight) {
   this.x = x;
   this.y = y;
   this.fieldWidth = fieldWidth;
   this.fieldHeight = fieldHeight;
 }
 
 void update() {
  x += xspeed;
  y += yspeed;
  if (x - r <= 0 || x + r >= fieldWidth) {
    //xspeed *= -1;
    reset();
  }
  if (y - r <= 0 || y + r >= fieldHeight) {
    yspeed *= -1;
  }
 }

 void reset() {
   x = fieldWidth/2;
   y = fieldHeight/2;
 }
 
 float right() {
   return x + r;
 }
 float left() {
   return x - r;
 }
float top() {
  return y - r;
}
float bottom() {
  return y + r;
}
 
 void show() {
    fill(255);
    ellipse(x,y,r*2,r*2);
 }
  
}
