class catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector (mouseX, height-d);
    d = 100;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  boolean catchDrop(Raindrop drop) {
    if (loc.dist(drop.loc) < d/2 + drop.d/2) {
      drop.reset();
      return true;
    }
    else {
      return false;
    }
  }

