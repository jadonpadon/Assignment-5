//variable to check if mouse is over button
boolean hoverPlay = false;

class Menus {

  float playX;
  float playY;

  Menus() {
    playX = 400;
    playY = 450;
    
  }

  void drawMenu() {

    //println (hoverPlay);

    fill (0);
    noStroke();
    rectMode(CORNERS);
    rect(0, 0, width, height);

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

  void checkHover() {

    if ((mouseX > playX - 100) && (mouseX < playX + 100) && mouseY > playY - 35 && mouseY < playY + 35) {

      hoverPlay = true;
    } else {
      hoverPlay = false;
    }
  }
}
