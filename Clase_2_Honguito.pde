int i=0;
int x=0;
int y=0;

void setup() {
  size(1200, 900);
  background(255);
}

void draw() {
  fill(0);
  //textSize(50);
  //text("EMBEBIDOS", 50, 50);
  //text(i, 50, 50);
  //i++;
  //delay(100);
  figura();
  laberinto();
  limite();
}

void figura() {
  beginShape();
  fill(255, 0, 0);
  vertex(10+x, 20+y);
  vertex(15+x, 20+y);
  vertex(15+x, 15+y);
  vertex(20+x, 15+y);
  vertex(20+x, 10+y);
  vertex(45+x, 10+y);
  vertex(45+x, 15+y);
  vertex(50+x, 15+y);
  vertex(50+x, 20+y);
  vertex(55+x, 20+y);
  vertex(55+x, 30+y);
  vertex(45+x, 30+y);
  vertex(45+x, 25+y);
  vertex(20+x, 25+y);
  vertex(20+x, 30+y);
  vertex(10+x, 30+y);
  vertex(10+x, 20+y);
  endShape();

  beginShape();
  fill(255, 235, 205);
  vertex(15+x, 30+y);
  vertex(15+x, 40+y);
  vertex(20+x, 40+y);
  vertex(20+x, 45+y);
  vertex(45+x, 45+y);
  vertex(45+x, 40+y);
  vertex(50+x, 40+y);
  vertex(50+x, 30+y);
  vertex(45+x, 30+y);
  vertex(45+x, 25+y);
  vertex(20+x, 25+y);
  vertex(20+x, 30+y);
  vertex(15+x, 30+y);
  endShape();

  fill(0, 0, 0);
  rect(25+x, 25+y, 5, 7);
  rect(35+x, 25+y, 5, 7);
}

void laberinto() {

  rect(200, 100, 300, 100);
  rect(700, 100, 300, 100);

  rect(200, 700, 300, 100);
  rect(700, 700, 300, 100);

  rect(0, 400, 250, 100);
  rect(950, 400, 250, 100);

  beginShape();
  fill(0);
  vertex(500, 300);
  vertex(700, 300);
  vertex(700, 400);
  vertex(850, 400);
  vertex(850, 500);
  vertex(700, 500);
  vertex(700, 600);
  vertex(500, 600);
  vertex(500, 500);
  vertex(350, 500);
  vertex(350, 400);
  vertex(500, 400);
  vertex(500, 300);
  endShape();
}

void limite() {
  if (x>150 && x<500 && y>50 && y<193) {
    x=0;
    y=0;
  }

  if (x>650 && x<1000 && y>50 && y<193) {
    x=0;
    y=0;
  }

  if (x<250 && y>350 && y<500) {
    x=0;
    y=0;
  }

  if (x>900 && x<1200 && y>350 && y<500) {
    x=0;
    y=0;
  }

  if (x>150 && x<500 && y>650 && y<800) {
    x=0;
    y=0;
  }

  if (x>650 && x<1000 && y>650 && y<800) {
    x=0;
    y=0;
  }
  
  if(x>450 && x<700 && y>250 && x>300 && x<800 && y<550){
  x=350;
  }
}

void keyPressed() {
  background(255);
  //println(key);      //key=> convierte de hexa a letra
  //println(keyCode);    //keyCode=> solo recibe hexa
  //textSize(50);
  //text(keyCode,100,50);

  switch(keyCode) {
  case 38:
    if (y>-5)
      y=y-5;
    else
      y=0;
    break;
  case 40:
    if (y<850)
      y=y+5;
    else
      y=850;
    break;
  case 39:
    if (x<1145)
      x=x+5;
    else
      x=1145;
    break;
  case 37:
    if (x>-10) 
      x=x-5;
    else
      x=0;
    break;
  }
}
