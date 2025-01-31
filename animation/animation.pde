// animation ivena
// jan 30

float r, s;
float m, rm;


void setup() {
  size(600, 600);
  r = 100;
  s = 1;
  rm = 0;
  m = 450;
}


void draw() {
  // background
  if (r < 420 & r > 100) {
    fill(#A2E7FF);
    rect(-1, -1, 605, 605);
  }
  if (r > 420 ) {
    fill(#0D0C02);
    rect(-1, -1, 605, 605);
  }

  // sun
  fill(#FFF367);
  circle(125, r, 120);
  r = r+ s;
  if ( rm == 420 ||r == 100 ) {
    s = s * -1;
  } if (rm == 100) {
   s = -1; 
  }
  // moon
  fill(#B7B5A4);
  circle(125, m, 120);
  fill(#0D0C02);
  circle(100, m, 100);
  m = m + rm;
  if (r == 420) {
    rm = - 1;
  }
  if (m == 100) {
    rm = 1;
  }


  // ground
  fill(#5AD383);
  rect(-1, 355, 602, 300);

  // the house
  fill(#F0CF57);
  rect(275, 180, 270, 300);

  // roof
  fill(#F04B3C);
  triangle(230, 215, 413, 50, 580, 215);

  // windows
  fill(#D6FFFC);
  circle(350, 300, 100);
  line(350, 250, 350, 350);
  line(300, 300, 400, 300);

  // door
  fill(#BF8E25);
  rect(425, 320, 90, 160);
  circle(445, 400, 20);

  println(mouseX, mouseY);
}


//void sunMoon(float x, float y, float angle){
//  pushMatrix();
//  noFill();
//  translate(x, y);
//  rotate(radians(angle));
//  circle(0,-250, 100);

//  circle(0, 250, 100);
//  popMatrix();
//}
