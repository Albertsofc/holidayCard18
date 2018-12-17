import java.util.concurrent.CopyOnWriteArrayList;
CopyOnWriteArrayList<NoseLaser>lasers=new CopyOnWriteArrayList<NoseLaser>();
CopyOnWriteArrayList<Fog>fogs=new CopyOnWriteArrayList<Fog>();
int up, down, score, fogsDestroyed;
Rudolph r;
PVector rposition=new PVector();
Snowflake fallingSnow;
PFont myFont;
PImage moon;
PImage rud;
int t=millis();

void setup() {
  noStroke();
  size(1000, 800);
  r=new Rudolph(75, height/2, 10);
  for (int i=0; i<900; i++) {
    fogs.add(new Fog(random(width, width*4), random(height-600, height)));
    PVector loc1=fogs.get(i).getPosition();
    for (int j=1; j<fogs.size(); j++) {
      PVector loc2=fogs.get(j).getPosition();
      if (Math.abs(loc1.y-loc2.y)<25) {
        loc2.x+=50;
      }
    }
  }
  textSize(48);
  myFont=createFont("Grinched", 60);
  textFont(myFont);
  moon=loadImage("moon.png");
  moon.resize(370, 370);
  fallingSnow=new Snowflake(200, 5, 5);    
  fallingSnow.makeArray();
}
void draw() {
  background(10, 15, 101);
  image(moon, 0, -40);
  fill(255);
  text("Help Rudolph Clear the Fog!", (width/2)-300, height/6);
  fallingSnow.updateSf();
  for (NoseLaser l : lasers) {
    l.update();
    if (l.inactive())lasers.remove(l);
    for (Fog f : fogs) {
      if (l.testCollision(f.getPosition())) {
        fogs.remove(f);
      }
    }
  }
  for (Fog f : fogs)f.update();
  r.update();
}
void keyPressed() {
  if (key== CODED) {
    if (keyCode==UP) {
      up=1;
    }
  }
  if (key== CODED) {
    if (keyCode==DOWN) {
      down=1;
    }
  }
  if (key==' ')lasers.add(new NoseLaser(rposition.x, rposition.y+25, 10));
}
void keyReleased() {
  if (key== CODED) {
    if (keyCode==UP) {
      up=0;
    }
  }
  if (key== CODED) {
    if (keyCode==DOWN) {
      down=0;
    }
  }
}
//void millis(){};
