int index = 1;
int oldTime = 0;
int threshold = 3000;
Raindrop[] r = new Raindrop[500];
Catcher catcher;
int score;

void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  catcher = new Catcher();
}

void draw() {
  background(169);
  textSize(50);
  fill(0,108,245);
  text(score, width/2, height/2);
  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].drop();
    if (catcher.catchDrop(r[i]) == true) {
      r[i].goAway();
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

