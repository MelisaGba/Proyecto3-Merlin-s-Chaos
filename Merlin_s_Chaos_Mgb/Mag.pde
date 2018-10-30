class Mago extends Cualidad {


  Mago(int x_, int y_) {
    super(x_, y_);
  
  }

  void display() {

    image(mer,x,y);

  }
    void display2() {
    image(mer2,x,y);
  }
     //limites de espacio
  void limitesa() {
    this.x = constrain(this.x, 0,325-this.t/2);
    this.y = constrain(this.y, 180, 300-this.t/2);
  }
  void limitesb() {
    this.x = constrain(this.x, 365, 700-this.t/2);//55',1180
    this.y = constrain(this.y, 180, 300-this.t/2);
  }
}
