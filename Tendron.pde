float _random(float a, float b) {
  return (float)(Math.random()*(b-a)+a);
}

int n=7;
int ti=3; //ti = total iterations

void setup() {
  size(1000,1000);
  noLoop();
}

void draw() {
  background(220);
  cluster a = new cluster(width/2,height/2,100,(float)(Math.random()*2*PI),ti);
  a.show();
  fill(0);
  noStroke();
  textAlign(CENTER,CENTER);
  textSize(30);
  
  if (frameCount<10) text("Click to redraw",width/2,height/4);
  else if (frameCount<20) text("W/S to change # of tendrils",width/2,height/4);
  else if (frameCount<30) text("A/D to change # of iterations",width/2,height/4);
  
  textAlign(LEFT,CENTER);
  
  if (frameCount>=10) text("Tendrils per iteration: "+n,30,30);
  if (frameCount>=20) text("Iterations: "+ti,30,60);
}

void keyPressed() {
  if (key=='w') n++;
  if (key=='s') n--;
  if (key=='a') ti--;
  if (key=='d') ti++;
  redraw();
}

void mousePressed() {
  redraw();
}
