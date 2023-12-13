Player player = new Player();
Platform platform = new Platform();
Menus menus = new Menus();
Map map = new Map();

//variable to change gamestate
int gamestate = 0; //0 =start menu, 1 = game, 2 = end screen

void setup() {
  size (800, 600);
}

void draw() {
  background (0);

  //switch statement to switch display between gamestates
  switch (gamestate) {

  case 0:  //menu
    menus.drawMenu();
    menus.checkHover();
    break;

  case 1:  //game
    platform.startingPlat();
    map.map1();
    player.display();
    player.move();
    player.limits();
    break;

  case 2: // end screen
    //end screen not made yet
    break;
  default:
    break;
  }
}

void mousePressed() {

  if (hoverPlay == true) {
    gamestate = 1;
  }
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
  } else if (key == 'w' || key == 'W' || key == ' ') {
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
  if (key == 'w' || key == 'W' || key == ' ') {
    jump = false;
  }
}
