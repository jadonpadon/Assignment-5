//making the first map

float x;
float y;
float w;
float h;

class Map {
  
  Map(){
  }
  
  void platform(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    
    fill(150);
    noStroke();
    rectMode(CENTER);
    rect(x, y, w, h);
  }
  
  void map1(){
    
    //draw platforms
    
    platform(200, 430, 80, 20);
    
  }
  
}
