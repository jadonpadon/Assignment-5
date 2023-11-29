PVector playerPos;
PVector playerSpeed;
PVector playerAcceleration;
PVector playerJump;
PVector playerGravity;

boolean left = false;
boolean right = false;
boolean jump = false;
boolean grounded = false;

class Player {

  Player() {
    playerPos = new PVector (400, 450);
    playerSpeed = new PVector (0, 0);
    playerJump = new PVector (0, -17);
    playerGravity = new PVector (0, 3);
    playerAcceleration = new PVector (0, 0);
  }

  void display() {
    //draw the player
    //will be a rectangle just for now so I can figure out the physics
    rectMode(CORNERS);
    fill (255);
    rect(playerPos.x-10, playerPos.y-30, playerPos.x+10, playerPos.y);
  }

  void limits() {

    if (playerSpeed.y > 10) {
      playerSpeed.y = 10;
    }
    if (playerPos.y > platY - 50) {
      playerPos.y = platY - 50;
    }
    if (playerPos.y == platY - 50) {
      grounded = true;
    } else if (playerPos.y < platY - 50){
      grounded = false;
    }
    if (playerSpeed.x < -4) {
      playerSpeed.x = -4;
    } else if (playerSpeed.x > 4) {
      playerSpeed.x = 4;
    }
    if (playerPos.x - 10 < 0){
      playerPos.x = 10;
    }
    if (playerPos.x + 10 > width){
      playerPos.x = width - 10;
    }
  }

  void move() {
    playerSpeed.add(playerAcceleration);
    playerPos.add(playerSpeed);
    //move the player when A or D or W is pressed
    if (left) {
      playerAcceleration.x = -4;
    } else if (right) {
      playerAcceleration.x = 4;
    } else {
      playerAcceleration.x = 0;
      playerSpeed.x = playerSpeed.x/1.3;
    }

    if (jump && grounded) {
      playerSpeed.add(playerJump);
      if (playerSpeed.y < -50) {
        playerSpeed.y = -50;
      }
    } else {
      playerSpeed.add(playerGravity);
    }
  }
}
