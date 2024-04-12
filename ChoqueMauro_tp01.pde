PVector tesoro;
PVector player;
PVector vectorDer;

void setup() {
  size(400, 400);
  tesoro = new PVector(width/2,height/2);
  vectorDer = new PVector(1,0);
  player = new PVector(mouseX,mouseY);
}

void draw() {
  background(0);
  
}


void vector(PVector org, PVector vector){
  stroke(0,255,0);
  strokeWeight(1);
  line(org.x, org.y,org.x+vector.x,org.y+vector.y);
}
