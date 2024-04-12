class Vector{
  
  PVector posicion;
  public Vector(){
    
  }
  
  public Vector(PVector Posicion){
    this.posicion=Posicion;
  }
  
  public PVector getPos(){
    return posicion;
  }
  
  public void setPos(PVector Pos){
     this.posicion=Pos;
  }
  
}
