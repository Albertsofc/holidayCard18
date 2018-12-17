class Rudolph {
  PVector velocity=new PVector();
  float speed;
  PImage rud=loadImage("rudolph.png");

  Rudolph(float x, float y, float speed) {
    rposition.x=x;
    rposition.y=y;

    this.speed=speed;
  }
  void update() {
    velocity.y=(down-up)*speed;
    rposition.add(velocity);
    fill(0);
    image(rud, rposition.x-50, rposition.y-76);
  }
}
