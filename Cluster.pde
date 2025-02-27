class cluster {
  protected float x,y,x2,y2,a;
  protected int s,il; //il = iterations left
  public cluster(float _x, float _y, int _s, float _a, int _il) {
    x=_x;
    y=_y;
    s=_s;
    a=_a;
    il=_il;
  }
  
  public void show() {
    if (il>0) {
      for (int i=0;i<n;i++) {
        tendril b = new tendril(s,i*2*PI/n,x,y,il);
        b.show();
        cluster a = new cluster(b.x,b.y,s/3,(float)(Math.random()*2*PI),il-1);
        a.show();
      }
    }
    fill(255,0,0);
    noStroke();
    ellipse(x,y,5,5);
  }
}
