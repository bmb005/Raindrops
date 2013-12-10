class Raindrop {
  PVector loc, vel, acc;
  int d;
 

  Raindrop() {
    d = 10;
    loc = new PVector(random(width), -d); 
    vel = new PVector(0, random(1, 5));
    acc = new PVector(0, .8);
  }

  void display() {
    fill(255,137,46);
    ellipse(loc.x, loc.y, 25, 25);
  }
  void drop() {
    vel.add(acc);
    loc.add(vel);
  }
  void reset() {
    //    loc.set( random(width), random(-height/2, -d));
    loc.set( random(width), 0);
    vel.set(0, random(1, 3));
  }

  void delete() {
    loc.set(height*2, 0);
    vel.set(0, 0);
    acc.set(0, 0);
  }
}

