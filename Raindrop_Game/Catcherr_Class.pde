class catcher {
  PVector loc;
  int d;
  
  Catcher() {
    loc = new PVector (mouseX, 0);
    d = 100;
  }
  
  void display(){
    ellipse(loc.x, loc.y, d, d);
  }
  
  

