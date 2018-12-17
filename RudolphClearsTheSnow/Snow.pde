class Snow {
  int sizeR, speedR;
  PVector location=new PVector((int)random(0, 1000), (int)random(0, 1000));
  PVector velocity=new PVector(0, .01);
  PVector acc=new PVector(.1, .3);
  Snow(int size, int speed) {
    sizeR=size;
    speedR=speed;
  }
  float getX() {
    return location.x;
  }
  float getY() {
    return location.y;
  }

  void show() {
    noStroke();
    fill(255, 200);
    ellipse(location.x, location.y, (int)(random(6, sizeR)), (int)(random(6, sizeR)));
  }
  void update() {
    if (location.y>800) {
      acc.add(velocity);
    } else {
      location.add(acc);
    }
    //velocity.x=(random(-2, 5));
    //location.y+=speedR;
    //location.add(velocity);
  }
  void reset() {
    location.x=(int)(random(-800, 800));
    location.y=0;
  }
}
