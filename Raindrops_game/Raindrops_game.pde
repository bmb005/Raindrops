PImage hoop;
//Declare Start
boolean start;
//Number of balls falling at one time 
int index = 1;

//Interval between drop time .. for timer 
int threshold = 2000;
//Array of 500 raindrops
Raindrop[] r = new Raindrop[500];
//Declare timer class
Timer Timer;
//Declare Catcher Class
Catcher catcher;
//Declare Score class
Scoreboard Scoreboard;
//Global Variable for score
int score;
int score2;


void setup() {
  size(500, 500);
  //Initialize Start 
  start = false;
  //Increase number of objects in array for loop of array(500 Objects) 
  for (int i = 0; i < r.length; i++) {
    r[i] = new Raindrop();
  } 
  Scoreboard = new Scoreboard();
  catcher = new Catcher();
  Timer = new Timer();
  hoop = loadImage("hoop.jpg");
}

void draw() {
  if (start == true) {
    println(threshold);
    background(255);

    //Within arra, display and drop ball
    for (int i = 0; i < index; i++) {
      r[i].display();
      r[i].drop();
      //If ball caught, delete from array & increase score
      if (catcher.catchDrop(r[i]) == true) {
        r[i].delete();
        score++;
        threshold-=10;
      }
      //If ball missed, move away and icrease score two
      if (r[i].loc.y >= height) {
        score2++;
        r[i].loc.set(width*2, 0);
        r[i].vel.set(0, 0);
        r[i].acc.set(0, 0);
      }
    }
    //Display Classes
    catcher.display();
    catcher.update();
    Scoreboard.display();
    Timer.display();
    Timer.function();
  }
  else {
    fill(255, 0, 0);
    textSize(50);
    text("START", width/2-50, height/2);
    index = 0;
  }
}


void mousePressed() {
  start = true;
}

