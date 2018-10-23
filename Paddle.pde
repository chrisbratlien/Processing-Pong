class Paddle {

  float x = 0;
  float y = 0;
  float w = 20;
  float h = 100;

  float yspeed = 0;


  Paddle(float x, float y) {
    this.x = x;
    this.y = y;
  }

  void move(int steps) {
    yspeed = steps;
  }

  void update() {
    y += yspeed;
  }

  float top() {
    return y - h/2;
  }
  float bottom() {
    return y + h/2;
  }
  float left() {
    return x - w/2;
  }
  float right() {
    return x + w/2;
  }
  boolean touchingPuck(Puck p) {


    boolean result = (pairsOverlap(p.left(), p.right(), left(), right()) &&
      pairsOverlap(p.top(), p.bottom(), top(), bottom()));

    if (result) {
      println("horiz", p.left(), p.right(), left(), right());
      println("vert", p.top(), p.bottom(), top(), bottom());
    }

    return result;
  }

  void show() {
    fill(255);
    rect(left(), top(), w, h);
  }
}
