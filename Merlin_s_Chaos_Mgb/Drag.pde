class Dragon extends Cualidad {


  Dragon(int x_, int y_) {
  super(x_,y_);
    
  }

  void display() {

    image(dav,x,y);

  }
   void display2() {
    image(dav2,x,y);

  }
     //limites de espacio
  void limitesa() {
    this.x = constrain(this.x, 0,175-this.t/2);
    this.y = constrain(this.y, 180, 250-this.t/2);
  }
  void limitesb() {
    this.x = constrain(this.x, 365, 610-this.t/2);//550,1180
    this.y = constrain(this.y, 180, 250-this.t/2);
  }
}
