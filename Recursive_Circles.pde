RecursiveCircle Disaster;


void setup() {
  size(600, 600);
  Disaster = new RecursiveCircle(width/2, height/2, width/2);
}

void draw() {
  background(0);
  Disaster.draw();
}
