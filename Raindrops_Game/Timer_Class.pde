class Timer {
  int oldTime;
  int currentTime;
  int timeChange;

  Timer() { 
    oldTime = 0;
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

