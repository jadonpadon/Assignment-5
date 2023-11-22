Player player = new Player();
Map map = new Map();

void setup() {
  size (800, 600);
}

void draw() {
  background (0);
  map.display();
  player.display();
  player.move();
  player.limits();
  println(playerSpeed.y);
}

void keyPressed() {
  //setting up the A D and Space movements
  if (key == 'a' || key == 'A') {
    left = true;
    right = false;
    jump = false;
  } else if (key == 'd' || key == 'D') {
    right = true;
    left = false;
    jump = false;
  } else if (key == 'w' || key == 'W') {
    jump = true;
  }
}
void keyReleased() {
  //setting up the A D and Space movements
  if (key == 'a' || key == 'A') {
    left = false;
    right = false;
  }
  if (key == 'd' || key == 'D') {
    right = false;
    left = false;
  }
  if (key == 'w' || key == 'W') {
    jump = false;
  }
}
