class tendril {
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int s,il;
  private float x,y,x2,y2;
  private float a;
  
  /*len is how many segments in this tendril (each a fixed length, 4 is a good start)
  theta is tendril starting angle in radians 
  x,y is the starting (x,y) coordinate*/
  
  public tendril(int _s, float _a, float _x, float _y, int _il) {
    s=_s;
    a=_a;
    x=_x;
    y=_y;
    il=_il;
  }
  
  public void show() {
    for (int i=0;i<s;i++) {
      a+=(float)((Math.random()-0.5)*2*PI/12);
      float p = 3.5;
      x2=x+cos(a)*p;
      y2=y+sin(a)*p;
      stroke(_random(0,255),_random(0,255),_random(0,255));
      strokeWeight(il);
      line(x,y,x2,y2);
      x=x2;
      y=y2;
    }
  }
}
