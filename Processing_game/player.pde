PVector playerPos;
PVector playerSpeed;
PVector playerAcceleration;
PVector playerJump;
PVector playerGravity;

boolean left = false;
boolean right = false;
boolean jump = false;
boolean grounded = false;

boolean reachFinish = false;

boolean reset = false;


class Player {

  Player() {
    playerPos = new PVector (100, 420);
    playerSpeed = new PVector (0, 0);
    playerJump = new PVector (0, -17);
    playerGravity = new PVector (0, 3);
    playerAcceleration = new PVector (0, 0);
  }

  void display() {
    //draw the player

    rectMode(CORNERS);
    fill (255);
    rect(playerPos.x-10, playerPos.y-30, playerPos.x+10, playerPos.y);
  }

  void limits() {
    //stop the player from leaving the screen and falling through platforms

    println(reachFinish);

    println("Player position: (" + playerPos.x + ", " + playerPos.y + ")");
    println("Constrained player position: (" + constrain(playerPos.x, playerPos.x - 10, playerPos.x + 10) + ", " + constrain(playerPos.y, playerPos.y - 30, playerPos.y) + ")");
    println("Distance to finish: " + dist(finish.x, finish.y, constrain(playerPos.x, playerPos.x - 10, playerPos.x + 10), constrain(playerPos.y, playerPos.y - 30, playerPos.y)));


    if (dist(finish.x, finish.y, constrain(playerPos.x, playerPos.x - 10, playerPos.x + 10), constrain(playerPos.y, playerPos.y - 30, playerPos.y)) < 50) {
      reachFinish = true;
    } else {
      reachFinish = false;
    }

    if (playerSpeed.y > 10) {
      playerSpeed.y = 10;
    }


    //player lands on platform
    if ((playerPos.y > 430 && playerPos.y < 450 && playerPos.x + 10 > 40 && playerPos.x - 10 < 160) ||

      (playerPos.y > 410 && playerPos.y < 430 && playerPos.x + 10 > 220 && playerPos.x - 10 < 340) ||

      (playerPos.y > 380 && playerPos.y < 400 && playerPos.x + 10 > 440 && playerPos.x - 10 < 560) ||

      (playerPos.y > 390 && playerPos.y < 410 && playerPos.x + 10 > 640 && playerPos.x - 10 < 760) ||

      (playerPos.y > 320 && playerPos.y < 340 && playerPos.x + 10 > 695 && playerPos.x - 10 < 785) ||

      (playerPos.y > 260 && playerPos.y < 280 && playerPos.x + 10 > 555 && playerPos.x - 10 < 645) ||

      (playerPos.y > 260 && playerPos.y < 280 && playerPos.x + 10 > 355 && playerPos.x - 10 < 445) ||

      (playerPos.y > 280 && playerPos.y < 300 && playerPos.x + 10 > 175 && playerPos.x - 10 < 265) ||

      (playerPos.y > 300 && playerPos.y < 320 && playerPos.x + 10 > 35 && playerPos.x - 10 < 225) ||

      (playerPos.y > 220 && playerPos.y < 240 && playerPos.x + 10 > 0 && playerPos.x - 10 < 30) ||

      (playerPos.y > 160 && playerPos.y < 180 && playerPos.x + 10 > 100 && playerPos.x - 10 < 160) ||

      (playerPos.y > 140 && playerPos.y < 160 && playerPos.x + 10 > 250 && playerPos.x - 10 < 310) ||

      (playerPos.y > 135 && playerPos.y < 155 && playerPos.x + 10 > 420 && playerPos.x - 10 < 480) ||

      (playerPos.y > 130 && playerPos.y < 150 && playerPos.x + 10 > 590 && playerPos.x - 10 < 650) ||

      (playerPos.y > 130 && playerPos.y < 150 && playerPos.x + 10 > 720 && playerPos.x - 10 < 800)

      ) {

      if (playerSpeed.y > 0) {
        playerSpeed.y = 0;
        grounded = true;
      }
    } else {
      grounded = false;
    }



    if (playerSpeed.x < -4) {
      playerSpeed.x = -4;
    } else if (playerSpeed.x > 4) {
      playerSpeed.x = 4;
    }
    if (playerPos.x - 10 < 0) {
      playerPos.x = 10;
    }
    if (playerPos.x + 10 > width) {
      playerPos.x = width - 10;
    }
  }

  void reset() {
    if (playerPos.y > 550 || reachFinish == true) {
      playerPos.x = 100;
      playerPos.y = 420;
    }
  }

  void move() {

    //println(playerSpeed.y); used to test
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
      if (playerSpeed.y < -20) {
        playerSpeed.y = -20;
      }
    } else if (grounded == false) {
      playerSpeed.add(playerGravity);
    }
  }
}
