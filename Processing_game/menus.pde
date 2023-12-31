//variable to check if mouse is over button
boolean hoverPlay = false;
boolean hoverMain = false;

class Menus {

  float playX;
  float playY;
  float mainX;
  float mainY;

  Menus() {
    playX = 400;
    playY = 450;
    mainX = 400;
    mainY = 400;
  }

  void drawMenu() {

    int rows = 8; 
    int cols = 8; 

    int rectSize = width / cols; 

    // Nested loops to draw the checkered pattern
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {

        int x = j * rectSize;
        int y = i * rectSize;

        // Use if statement to alternate colors
        if ((i + j) % 2 == 0) {
          fill(50); // Light color
        } else {
          fill(25); // Dark color
        }

        // Draw the rectangle
        rectMode(CORNER);
        rect(x, y, rectSize, rectSize);
      }
    }

    //println (hoverPlay);

    /* fill (0);
     noStroke();
     rectMode(CORNERS);
     rect(0, 0, width, height); */

    //draw title
    textAlign(CENTER, CENTER);
    textFont(createFont("Ravie", 70));
    fill(255);
    text("DON'T", width/2, 100);
    text("FALL", width/2, 200);
    text("DOWN", width/2, 300);

    //play button
    rectMode (CENTER);
    fill (255);
    rect(playX, playY, 200, 70);

    textFont(createFont("Ravie", 45));
    fill(0);
    text("PLAY", playX, playY);
  }

  void drawEnd() {

    int rows = 8; 
    int cols = 8; 

    int rectSize = width / cols; 

    // Nested loops to draw the checkered pattern
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {

        int x = j * rectSize;
        int y = i * rectSize;

        // Use if statement to alternate colors
        if ((i + j) % 2 == 0) {
          fill(50); // Light color
        } else {
          fill(25); // Dark color
        }

        // Draw the rectangle
        rectMode(CORNER);
        rect(x, y, rectSize, rectSize);
      }
    }

    fill (0);
    noStroke();
    rectMode(CORNERS);
    rect(0, 0, width, height);

    //draw title
    textAlign(CENTER, CENTER);
    textFont(createFont("Ravie", 70));
    fill(255);
    text("YOU", width/2, 100);
    text("WIN", width/2, 200);

    //return button
    rectMode (CENTER);
    fill (255);
    rect(mainX, mainY, 200, 70);

    textFont(createFont("Ravie", 45));
    fill(0);
    text("MAIN", mainX, mainY);
  }

  void checkHover() {

    if ((mouseX > playX - 100) && (mouseX < playX + 100) && mouseY > playY - 35 && mouseY < playY + 35) {

      hoverPlay = true;
    } else {
      hoverPlay = false;
    }

    if ((mouseX > mainX - 100) && (mouseX < mainX + 100) && mouseY >mainY - 35 && mouseY < mainY + 35) {

      hoverMain = true;
    } else {
      hoverMain = false;
    }
  }
}
