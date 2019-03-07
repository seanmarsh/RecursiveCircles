class RecursiveCircle {
  
  private int x, y, radius;
  
  private color fillColor;
  
  private RecursiveCircle top, bottom, left, right;
  
  public RecursiveCircle(int x, int y, int radius) {
   this.x = x;
   this.y = y;
   this.radius = radius;
   this.fillColor = color(255, 0, 0); //red color
   
   //go recursive??
   if(this.radius > 1) {
     top = new RecursiveCircle(x, y - radius/2, radius/2);
     bottom = new RecursiveCircle(x, y + radius/2, radius/2);
     left = new RecursiveCircle(x - radius/2, y, radius/2);
     right = new RecursiveCircle(x + radius/2, y, radius/2);
   }
  }
 
    public void draw() {
     fill(fillColor);
     stroke(255);  //white stroke color
     
     ellipse( x, y, 2*radius, 2*radius );
     
     if(bottom != null) {
        left.draw();
        right.draw();
        top.draw();
        bottom.draw();
     }
   }
  
}
