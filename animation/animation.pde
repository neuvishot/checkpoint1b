// animation ivena
// jan 30

float r;

void setup() {
  size(600, 600);
}


void draw() {
  // background
  background(#A2E7FF);
  fill(#5AD383);
  rect(-1, 355, 602, 300);
  sunMoon(300, 300, r);
  //r = r+1;
  
}

void sunMoon(float x, float y, float angle){
  pushMatrix();
  noFill();
  translate(x, y);
  rotate(radians(angle));
  circle(0,-250, 100);
  
  circle(0, 250, 100);
  popMatrix();
}
