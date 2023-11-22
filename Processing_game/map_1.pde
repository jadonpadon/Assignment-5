//later on, I will make platforms with customizable size using arrays and arraylists
//there will also be multiple maps with different themes for the player to play

class Map {
  Map (){
    
  }
  void display(){
    noStroke();
    fill(150);
    rectMode(CORNERS);
    rect(0, 450, width, height);
  }
}
