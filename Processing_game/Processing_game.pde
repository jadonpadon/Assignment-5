Player player = new Player();
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
    //platform.startingPlat();
    map.map();
    player.display();
    player.move();
    player.limits();
    player.reset();
    if (reachFinish == true) {
      gamestate = 2;
    }
    break;

  case 2: // end screen
    menus.drawEnd();
    menus.checkHover();
    break;
  default:
    break;
  }
}

void mousePressed() {

  if (hoverPlay == true) {
    gamestate = 1;
  }

  if (hoverMain == true) {
    gamestate = 0;
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
