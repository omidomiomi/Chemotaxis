Circle[] Bouncy;
boolean tickles = false;
void setup(){
  background(0);
  size(400,400);
  frameRate(10);
  Bouncy = new Circle[3];
  for(int i =0; i<Bouncy.length; i++){
    Bouncy[i] = new Circle();
  }
}
void draw(){
  if (tickles == false){
  if (key == ' '){
  //background(0);
  }
  tickles = !tickles;
  }
      if (tickles == true){
    if(key == ' '){
      background(0);
    }
    tickles = !tickles;
  }
  for(int i =0; i<Bouncy.length; i++){
   Bouncy[i].walk();
   Bouncy[i].show();
}
}
class Circle{
  int x;
  int y;
  int r;
  int g; int b;
  Circle(){
  x = 200;
  y = 200;
  r = (int)(Math.random()*256);
  g = (int)(Math.random()*256);
  b = (int)(Math.random()*256);
  }
  void walk (){
 x = x+(int)(Math.random()*40)-20;
 y = y+(int)(Math.random()*40)-20;
  }
  void show (){
    noStroke();
    fill(r,g,b);
    ellipse(x,y,25,25);
  }
}
