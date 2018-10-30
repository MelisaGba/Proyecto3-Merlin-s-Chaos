class Cualidad {

  int x, y;
  int v;
  int t;
  int v1;


  Cualidad(int x_, int y_) {
    
   x= x_;
   y= y_;
   this.v=8;
   this.v1=2;
   this.t= 7;
  }

  void mDerecha() {
    this.x+=this.v;
  }

  void mIzquierda() {
    this.x-=this.v;
  }

  void mArriba() {
    this.y-= this.v;
  }

  void mAbajo() {
    this.y+=this.v;
  }

  void movMen() {
    this.x += this.v1;
    if (this.x>=800) {
      this.x =-29*this.t;
    }
  }
 
}
