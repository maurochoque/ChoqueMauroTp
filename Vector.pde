class Vector{
  
  public PVector posicion;
  public Vector(){
  }
  
  public Vector(PVector Posicion){
    this.posicion=Posicion;
  }
  
  public void displayVector(PVector vector){
  
  stroke(0,255,0);
  strokeWeight(5);
  line(posicion.x, posicion.y,posicion.x+vector.x,posicion.y+vector.y);
  }
  public void displayEnemy(){
    
    PVector posicionEnemy= new PVector(width/2,height/2);
    fill(255,0,0);
    circle(posicionEnemy.x,posicionEnemy.y,10);
  }
  
  public PVector distanciaPE(Vector playerV, Vector enemyV){
    PVector distancia= new PVector (playerV.posicion.x-enemyV.posicion.x, playerV.posicion.y-enemyV.posicion.y);
    //println(distancia);
    return distancia;
  }
  public String productoPunto(Vector a, Vector b){
    float punto = pow(2,a.posicion.x * b.posicion.x + a.posicion.y * b.posicion.y);
    String mensajePunto="";
    if(punto<1){
       mensajePunto= "adelante";
    }
    else if(punto == 0){
       mensajePunto="misma linea";
    }
    else if(punto>1){
       mensajePunto="atras";
    }
    //String mensajePunto="hola";
    return mensajePunto;
  }
  public PVector getPos(){
    return posicion;
  }
  
  public void setPos(PVector Pos){
     this.posicion=Pos;
  }

  
}
