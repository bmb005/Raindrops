class catcher {
  PVector loc;
  int d;
  
  Catcher() {
    loc = new PVector (mouseX, d/2);
    d = 100;
  }
  
  void display(){
    ellipse(loc.x, loc.y, d, d);
  }
  
  

