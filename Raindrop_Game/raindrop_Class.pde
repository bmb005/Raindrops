class Raindrop {
  PVector loc, vel, acc;
  int d;

  Raindrop() {
    d = 25;
    loc = new PVector (random(0, displayWidth), 0);
    vel = new PVector (0, random(0, 4));
    acc = new PVector (0);
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  void drop() {
    loc.add(vel);
    vel.add(acc);
  }

  void reset() {
    loc.set( random(width), 0);
    vel.set(0, random(1, 3));
    }
  }



