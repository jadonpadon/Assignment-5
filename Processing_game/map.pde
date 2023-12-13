//making the map

PVector finish = new PVector (760, 110);
float finishW = 50;

class Map {

  Map() {
  }

  void map() {

    fill(150);
    noStroke();
    rectMode(CENTER);
    rect(100, 450, 120, 20);
    rect(280, 430, 120, 20);
    rect(500, 400, 120, 20);
    rect(700, 410, 120, 20);
    rect(740, 340, 90, 20);
    rect(600, 280, 90, 20);
    rect(400, 280, 90, 20);
    rect(220, 300, 90, 20);
    rect(80, 320, 90, 20);
    rect(0, 240, 60, 20);
    rect(130, 180, 60, 20);
    rect(280, 160, 60, 20);
    rect(450, 155, 60, 20);
    rect(620, 150, 60, 20);
    rect(760, 150, 80, 20);
    
    fill(0, 255, 0);
    ellipseMode(CENTER);
    circle(finish.x, finish.y, finishW);

  }
}
