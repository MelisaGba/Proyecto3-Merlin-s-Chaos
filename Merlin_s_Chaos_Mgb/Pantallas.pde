class Pantalla {
  int n;
  float dt;

  void inicio() {
    music_2.pause();
    music_3.pause();
   image(movie, 0, 0, width, height);

    textFont(titulo);
    fill(random(255), random(255), random(255));
    text("Press 'S' to continue", 280, 400);
        if (keyPressed) {
      switch(key) {
      case 's': 
        n=1;
        music_2.loop();
        break;
      case 'S': 
        n=1;
        break;
      }
    }
    if (vida1 <= 0 || vida2 <= 0) {
      vida1=100; 
      vida2=100;
      music_1.loop();
      movie.loop();
    }
  }


  void seleccion() {
    music_1.pause();
    music_3.pause();
    image(p2, 0, 0);

    if ((key=='f' || key =='F')&&(turno==0)) {
      player1 =1;
      turno =1;
    } else {
      if ((key=='f' || key =='F')&&(turno==1)&& player1!=1) {
    
        player2 =1;
        n=2;
        music_3.loop();
      }
    
    }
    if ((key=='g' || key =='G')&&(turno==0)) {
      player1 =2;
      turno =1;
    } else {
      if ((key=='g' || key =='G')&&(turno==1)&& player1!=2) {
        player2 =2;
        n=2;
        music_3.loop();
      }
    }
    if ((key=='h' || key =='H')&&(turno==0)) {
      player1 =3;
      turno =1;
    } else {
      if ((key=='h' || key =='H')&&(turno==1)&& player1!=3) {
        player2 =3;
        n=2;
        music_3.loop();
      }
    }
    if ((key=='j' || key =='J')&&(turno==0)) {
      player1 =4;
      turno =1;
    } else {
      if ((key=='j' || key =='J')&&(turno==1)&& player1!=4) {
        player2 =4;
        n=2;
        music_3.loop();
      }
    }
    if ((key=='k' || key =='k')&&(turno==0)) {
      player1 =5;
      turno =1;
    } else {
      if ((key=='k' || key =='K')&&(turno==1)&& player1!=5) {
        player2 =5;
        n=2;
        music_3.loop();
      }
    }
  }


  void pelea() {
image(pelea, 0, 0);

    music_1.pause();
    music_2.pause();


    //NUVE
    pushMatrix();
    noStroke();
    dt+=0.01;

    for (int i= 0; i<800; i+=3) {
      for (int j = 0; j<230; j+=3) {
        fill(noise(i*0.01+dt, j*0.03, dt)*255, noise(i*0.01+dt*1, j*0.05+1, dt)*6);
        rect(i, j, 10, 10);
      }//137,198,99
    }
    popMatrix();
    fill(0);
    rect(90, 75, 120, 20);//sombra
    rect(600, 75, 120, 20);

    fill(90, 160, 141);//vida
    rect(610, 80, vida2*1, 10);
    rect(100, 80, vida1*1, 10);

    fill(255);
    textFont(titulo);
    text("Player1", 85, 70);
    text("Player2", 650, 70);

    //-------------------JUGADOR1------------------
    if (player1 == 1) {
      eda_pl1.display();
      eda_pl1.limitesa();

    }
    if (player1 == 2) {
      jan_pl1.display();
      jan_pl1.limitesa();
    }
    if (player1 == 3) {
      mer_pl1.display();
      mer_pl1.limitesa();
    }
    if (player1 == 4) {
      dav_pl1.display();
      dav_pl1.limitesa();
    }
    if (player1 == 5) {
      cu_pl1.display();
      cu_pl1.limitesa();
    }


    //-------------------JUGADOR2----------------
    if (player2 == 1) {

      eda_pl2.display2();
      eda_pl2.limitesb();

    }
    if (player2 == 2) {
      jan_pl2.display2();
      jan_pl2.limitesb();

      
    }
    if (player2 == 3) {
      mer_pl2.display2();
      mer_pl2.limitesb();
    }
    if (player2 == 4) {
      dav_pl2.display2();
      dav_pl2.limitesb();
    }
    if (player2 == 5) {
      cu_pl2.display3();
      cu_pl2.limitesb();
    }

 
    
    if (vida1 <= 0 || vida2 <= 0) {
      n = 3;
      music_2.loop();
    }


  }

  void win() {
    music_1.pause();
    music_3.pause();
   
    if (vida1<=0) {
      image(p3_2, 0, 0);
      if (player2 == 1) {
        eda3.display();
        eda3.movMen();
      }
      if (player2 == 2) {
        jan3.display();
        jan3.movMen();
      }
      if (player2 == 3) {
        mer3.display();
        mer3.movMen();
      }
      if (player2 == 4) {
        dav3.display();
        dav3.movMen();
      }
      if (player2 == 5) {
        cu3.display2();
        cu3.movMen();
      }
    } else if (vida2<=0) {
      image(p3_1, 0, 0);
      if (player1 == 1) {
        eda3.display();
        eda3.movMen();
      }
      if (player1 == 2) {
        jan3.display();
        jan3.movMen();
      }
      if (player1 == 3) {
        mer3.display();
        mer3.movMen();
      }
      if (player1 == 4) {
        dav3.display();
        dav3.movMen();
      }
      if (player1 == 5) {
        cu3.display2();
        cu3.movMen();
      }
    }
 

    if (keyCode == 32) {
      music_1.loop();
      n=0;
      turno=0;
    }
  }

  void display() {
    switch(this.n) {
    case 0:
      inicio();
      break;
    case 1:
      seleccion();
      break;
    case 2:
      pelea();

      break;
    case 3:
      win();
    textFont(selec);
    fill(random(0, 255));
    text("You Win!", 250, 355);
      break;
    }
  }
  
  void teclado(){
  
      pushMatrix();
    if (keyPressed) {
      switch(key) {
      case 'a':
        if ((key=='a'|| key=='A' )) {
          cu_pl1.mIzquierda();
          dav_pl1.mIzquierda();
          jan_pl1.mIzquierda();
          mer_pl1.mIzquierda();
          eda_pl1.mIzquierda();
          break;
        }
      case 'w':
        if ((key=='w'|| key=='W' )) {

          cu_pl1.mArriba();
          dav_pl1.mArriba();
          jan_pl1.mArriba();
          mer_pl1.mArriba();
          eda_pl1.mArriba();

          break;
        }
      case 's':
        if ((key=='s'|| key=='S' )) {
          cu_pl1.mAbajo();
          dav_pl1.mAbajo();
          jan_pl1.mAbajo();
          mer_pl1.mAbajo();
          eda_pl1.mAbajo();
          break;
        }
      case 'd':
        if ((key=='d'|| key=='D' )) {
          cu_pl1.mDerecha();
          dav_pl1.mDerecha();
          jan_pl1.mDerecha();
          mer_pl1.mDerecha();
          eda_pl1.mDerecha();
          break;
        }
      }
    }
    if (keyPressed) {
      switch(keyCode) {
      case 37:
        cu_pl2.mIzquierda();
        dav_pl2.mIzquierda();
        jan_pl2.mIzquierda();
        mer_pl2.mIzquierda();
        eda_pl2.mIzquierda();
        break;
      case 38:
        cu_pl2.mArriba();
        jan_pl2.mArriba();
        dav_pl2.mArriba();
        mer_pl2.mArriba();
        eda_pl2.mArriba();
        break;
      case 40:
        cu_pl2.mAbajo();
        dav_pl2.mAbajo();
        jan_pl2.mAbajo();
        mer_pl2.mAbajo();
        eda_pl2.mAbajo();
        break;
      case 39:
        cu_pl2.mDerecha();
        dav_pl2.mDerecha();
        jan_pl2.mDerecha();
        mer_pl2.mDerecha();
        eda_pl2.mDerecha();
        break;
      }
    }
  
  switch(key) {
    case 'q':

      if ((key=='q'|| key=='Q' )&&turno == 1) {
        vida2 -=5;
        turno =2;
      }
      break;
    case 'e':

      if ((key=='e' || key=='E')&&turno == 1) {
        vida2 -=10;
        turno =2;
      }
      break;
    }
    switch(keyCode) {
    case 16:

      if ((keyCode == 16)&&turno == 2) {
        vida1 -=5;
        turno =1;
      }
      break;
    case 17:

      if ((keyCode == 17)&&turno == 2) {
        vida1 -=10;
        turno =1;
      }
      break;
    }
 popMatrix();
}
}
