class Paloma extends Cualidad{

  Paloma(int x_, int y_) {
    super(x_,y_);
  }

  void display() {

    image(cuc,x,y);

  }

    void display2() {
    image(vuel,x,y);

  }
    void display3() {

    image(cuc2,x,y);

  }
     //limites de espacio
  void limitesa() {
    this.x = constrain(this.x,  0,310-this.t/2);
    this.y = constrain(this.y, 180, 300-this.t/2);
  }
  void limitesb() {
    this.x = constrain(this.x, 365, 700-this.t/2);
    this.y = constrain(this.y, 180, 300-this.t/2);
  }
}
