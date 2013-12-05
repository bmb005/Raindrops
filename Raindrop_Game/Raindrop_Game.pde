Raindrop[] r = new Raindrop [10];
Catcher c;
void setup() {
  size(500, 500);
  for (int i = 0; i < r.length; i++){
    r[i] = new Raindrop();
  }
  c = new Catcher();
}

void draw() {
  for (int i = 0; i < r.length; i++){
    r[i].display();
    r[i].drop();
    r[i].reset();
  }
  
  c.display();
}

