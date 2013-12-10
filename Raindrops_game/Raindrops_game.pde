PImage hoop;
//Number of balls falling at one time 
int index = 3;
int oldTime = 0;
//Interval between drop time .. for timer 
int threshold = 2000;
//Array of 500 raindrops
Raindrop[] r = new Raindrop[500];
//Declare Catcher Class
Catcher catcher;
//Declare Score class
Scoreboard Scoreboard;
//Global Variable for score
int score;
int score2;

void setup() {
  size(500, 500);
  //Increase number of objects in array for loop of array(500 Objects) 
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  Scoreboard = new Scoreboard();
  catcher = new Catcher();
  hoop = loadImage("hoop.jpg");
}

void draw() {
  println(threshold);
  background(255);
  //Drawing functions for score
  Scoreboard.display();

  for (int i = 0; i < index; i++) {
    r[i].display();
    r[i].drop();
    //If ball caught, delete from array & increase score
    if (catcher.catchDrop(r[i]) == true) {
      r[i].delete();
      score++;
      threshold-=10;
    }
    if (catcher.catchDrop(r[i]) == false) {
      score2++;
    }
  }
  catcher.display();
  catcher.update();
    
  //Added Timer
  if (millis() - oldTime > threshold) {
    if (index < r.length) {
      index++;
      oldTime = millis();
    }
  }
}

