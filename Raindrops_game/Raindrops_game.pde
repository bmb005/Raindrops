PImage hoop;
PImage ball;
int index = 1;
int oldTime = 0;
int threshold = 2000;
Raindrop[] r = new Raindrop[500];
Catcher catcher;
Score Score;

int score;

void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  Score = new Score();
  catcher = new Catcher();
  hoop = loadImage("hoop.jpg");
  ball = loadImage("ball.jpg");
}

void draw() {
  println(threshold);
  background(255);
  Score.display();
  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].drop();
    if (catcher.catchDrop(r[i]) == true) {
      r[i].delete();
      score++;
      threshold-=10;
    }
  }
  catcher.display();
  catcher.update();

  if (millis() - oldTime > threshold) {
    if (index < r.length) {
      index++;
      oldTime = millis();
    }
  }
}

