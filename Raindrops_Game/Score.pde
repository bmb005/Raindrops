class Score {
  PImage scoreboard;
 

  Score() {
    scoreboard = loadImage("score.jpg");
  }

  void display() {
    image(scoreboard, 100, height/2-150, 300, 100);
    textSize(32);
    fill(0,108,245);
    text(score, width/2, height/2);
  }
}
 
