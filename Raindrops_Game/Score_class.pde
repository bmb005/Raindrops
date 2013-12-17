class Scoreboard {
  PImage scoreboard;
  int quarter;
  boolean lose;
  boolean win;

  Scoreboard() {
    scoreboard = loadImage("score.jpg");
    lose = false;
    win = false;
  }

  void display() {//size(500,500)
    image(scoreboard, 98, height/2-150, 300, 100);
    textSize(30);
    fill(0, 108, 245);
    text (score, 158, 163);
    text(score2, width/2+65, height/2-70);
  }
  void gameover() {
    if (score2 >= 9) {
      lose = true;
    }
    if (lose) {
      background(0);
      textSize(40);
      fill(255, 0, 0);
      text("YOU LOSE", 180, height/2);
      textSize(15);
      text("Take Another Shot ;)", width/2-50, height/2 + 25);
    }

    if (score >= 18) {
      win = true;
    }
    if (win) {
      background(0,255,0);
      textSize(85);
      fill(255, random(255), random(255));
      text("YOU WIN :D", width/2-235, height/2);
    }
  }
}

