class Timer {
  int oldTime;
  int currentTime;
  int timeChange;

  Timer() { 
    oldTime = 0;
  }

  void display() {//size(500,500)
    fill(255);
    text(millis()/1000.0, 190, 139);
  }

  void function() {
    if (millis() - oldTime > threshold) {
      if (index < r.length) {
        index++;
        oldTime = millis();
      }
    }
  }
}

