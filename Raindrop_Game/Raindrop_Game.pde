Raindrop[] r = new Raindrop [10];
void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  }
}

void draw() {
  for (int i = 0; i < drops.length; i++); 
  {
    r[i].display;
    r[i].drop;
    r[i].reset;
  }
  catcher.display();
}

