Vector enemy;
Vector player;
Vector vectorDer;

void setup() {
  size(500, 500);
  enemy = new Vector();
  vectorDer = new Vector();//new PVector(mouseX+10,mouseY+10)
  player = new Vector();
  
}

void draw() {
  background(0);
  fill(255,0,0);
   player.setPos(new PVector(mouseX,mouseY));
   player.displayVector(new PVector(-30,0));
  //vectorDer.displayVector(new PVector());
  
  //ellipse(tesoro.posicion.x,tesoro.posicion.y,25,25);
  enemy.displayEnemy();
  enemy.setPos(new PVector(width/2,height/2));
  PVector distanciaPV=vectorDer.distanciaPE(player,enemy);
  vectorDer.setPos(new PVector(enemy.posicion.x,enemy.posicion.y));
  vectorDer.displayVector(new PVector (distanciaPV.x,distanciaPV.y));
  String p=vectorDer.productoPunto(player,enemy);
  println(p);
  //vectorDer.displayVector(new PVector(player.posicion.x-enemy.posicion.x-10,player.posicion.y-enemy.posicion.y-10));
  //println(player.getPos(),enemy.getPos());
  //float hipo = distanciaPE(enemy.posicion,player.posicion);
  //println(player.getPos());
  //println(hipo);
  //float punto = player.x * enemy 
  
}
  public float distanciaPE(PVector e, PVector p) {
  float distanciaX = p.x - e.x;
  float distanciaY = p.y - e.y;
  float distancia = sqrt(distanciaX * distanciaX + distanciaY * distanciaY);
  return distancia;
  }
