class Fog {

  PVector position=new PVector();
  float speed;

  Fog(float x, float y) {
    position.x=x;
    position.y=y;
    speed=random(1, 2.5);
  }
  void update() {
    if (position.x<-10)position.x=1015;
    fill(169, 169, 169, 120);
    ellipse(position.x, position.y, 150, 150);
    // }
    position.x-=speed;
  }

  boolean dead() {
    return position.x<0;
  }
  PVector getPosition() {
    return position;
  }
}
