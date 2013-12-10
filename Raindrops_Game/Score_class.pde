class Scoreboard {
  PImage scoreboard;
  int quarter;

  Scoreboard() {
    scoreboard = loadImage("score.jpg");
  }

  void display() {//size(500,500)
    image(scoreboard, 98, height/2-150, 300, 100);
    textSize(30);
    fill(0, 108, 245);
    text(score, 158, 163);
    text(score2, width/2+65, height/2-70);
  }
}

