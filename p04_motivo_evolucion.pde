import processing.pdf.*;

color b=color(20,216,192);
color b2=color(21,175,156);
color b3=color(25,108,98);


float rx,ry; 

boolean record = false;
int x = 1;
String num = str(x);
String nombre = "unown"+num+".pdf";

void setup() {
  size(400, 400);
  frameRate (5);
}

void actualizar(){
  x = x+1;
  num = str(x);
  nombre = "unown"+num+".pdf";
}

void draw() {
  if (record == true){
    beginRecord (PDF, nombre);
  }
  background(b);
  strokeCap(ROUND);
  for (int posx=70; posx<width; posx=posx+130) {
    for (int posy=70; posy<height; posy=posy+130) {
      circle (posx, posy);
      element1 (posx, posy);
      element2 (posx, posy);
      element3 (posx, posy);
      //element4 (posx, posy);
      //arco (posx, posy);
      //bola (posx, posy);
    }
  }
      
  if (record == true){
   endRecord ();
   record = false;
   actualizar();
  }
}

 void circle (int px, int py) {
  pushMatrix();
  translate(px,py);
  strokeWeight(6);
  ellipse (0,0,40,40);
  fill (color(255));
  strokeWeight (10);
  point (0,0);
  popMatrix();
 }
 
  void element1 (int px, int py) {
  pushMatrix();
  translate(px,py);
  rx=random(-20,50);
  ry=random(-60,60);
  strokeWeight(6);
  line (rx,30,20,ry);
  popMatrix();
 }
 
  void element2 (int px, int py) {
  pushMatrix();
  translate(px,py);
  rx=random(-60,-40);
  ry=random(-40,20);
  strokeWeight(6);
  line (-30,ry,rx,-15);
  popMatrix();
 }
 
  void element3 (int px, int py) {
  pushMatrix();
  translate(px,py);
  strokeWeight(6);
  line (0,20,0,40);
  popMatrix();
 }
 
  void element4 (int px, int py) {
  pushMatrix();
  translate(px,py);
  rx=random(0,60);
  ry=random(-30,40);
  strokeWeight(6);
  line (30,ry,rx,-40);
  popMatrix();
 }
 
  void arco (float px, float py) {
  pushMatrix();
  translate(px,py);
  strokeWeight(6);
  fill(color (255,0));
  arc(0,0,80, 80, radians(180), radians(360));
  popMatrix();
 }
 
  void bola (float px, float py) {
  pushMatrix();
  translate(px,py);
  rx=random(-40,30);
  ry=random(-30,40);
  fill(255);
  strokeWeight(6);
  ellipse (ry,ry,20,20);
  popMatrix();
 }
 
  void mousePressed(){
         record = true;
 }
