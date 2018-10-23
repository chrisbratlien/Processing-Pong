Puck puck;
Paddle left;
Paddle right;

boolean inRange(float x, float a, float b) {
 if (x >= a && x <= b) {
   return true;
 }
  return false;
}

boolean pairsOverlap(float a1,float a2,float b1,float b2) {
 if (inRange(a1,b1,b2)) {
   return true;
 }
 if (inRange(a2,b1,b2)) {
   return true;
 }
 if (inRange(b1,a1,a2)) {
   return true;
 }
 if (inRange(b2,a1,a2)) {
   return true;
 }
 return false;
}


void setup() {
  size(600,400);
  puck = new Puck(width/2,height/2,width,height);
  left = new Paddle(20,height/2);
  right = new Paddle(width-20,height/2);
}

void keyReleased() {
 //println("YAY");
 left.move(0);
 right.move(0);
}
void keyPressed() {
  //println(key);
  switch(key) {
   case 'a': 
     left.move(-5);
     break;
   case 'z': 
     println('z');
     left.move(5);
     break;
   case 'j':
     right.move(-5);
     break;
   case 'm': 
     right.move(5);
     break;
  }
}
void mousePressed() {
 puck.xspeed *= -1; 
}
void update() {
 //println("wee");
  if (left.touchingPuck(puck)) {
    println("left touch");
    puck.xspeed *= -1; 
    println(puck.xspeed);
 }
 if (right.touchingPuck(puck)) {
    println("right touch");
    puck.xspeed *= -1; 
    println(puck.xspeed);
 }
 
 
}

void draw() {
 background(0);
  update();
 puck.update();
 puck.show();
  left.update();
  left.show();
  right.update();
  right.show();


}
