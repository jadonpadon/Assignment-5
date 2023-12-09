//later on, I will make platforms with customizable size using arrays and arraylists
//there will also be multiple maps with different themes for the player to play

float platY = 550;
float platX = 400;
float platL = 800;
float platH = 100;


class Map {
  Map () {
  }
  void startingPlat() {
    noStroke();
    fill(150);
    rectMode(CENTER);
    rect(platX, platY, platL, platH);
  }
}
