import ddf.minim.*;
import processing.video.*;

//variables globales

PFont titulo, selec;
PImage pelea,ca,ca2,mer,mer2,eda,eda2,vuel,cuc,cuc2,dav,dav2,p1,p2,p3_1,p3_2;
int turno = 0;
int player1;
int player2;
int vida1 = 100;
int vida2 = 100;

//------------------------AUDIO-------------------------

Minim music;
AudioPlayer music_1;
AudioPlayer music_2;
AudioPlayer music_3;
//-----------------------VIDEO--------------------------
Movie movie;

Pantalla pan;
Cualidad cua;

//-------------------PERSONAJE GANADOR------------------

Cab      jan3;
Mago     mer3;
Paloma   cu3;
Dragon   dav3;
Anciana  eda3;


//----------------------JUGADORES----------------------
Cab      jan_pl1;
Mago     mer_pl1;
Paloma   cu_pl1;
Dragon   dav_pl1;
Anciana  eda_pl1;


Cab      jan_pl2;
Mago     mer_pl2;
Paloma   cu_pl2;
Dragon   dav_pl2;
Anciana  eda_pl2;

//-------------------- SETUP---------------------------
void setup(){
 size(800, 600);
  
  pan  = new Pantalla();

  
//---------------POSICION DE JUGADORES----------------

  cu_pl1        = new Paloma(120,200);//30, 70);
  jan_pl1       = new Cab(120,200);//120,80
  mer_pl1       = new Mago(100,200);//230,
  dav_pl1       = new Dragon(120,200);
  eda_pl1       = new Anciana(120,200);
  
  cu_pl2        = new Paloma(670,200);//670,330
  jan_pl2       = new Cab(670,200);//
  mer_pl2       = new Mago(670,200);//
  dav_pl2       = new Dragon(600,200);
  eda_pl2       = new Anciana(670,200);
  
//-------------------GANADORES----------------------
  cu3       = new Paloma(120,80);//30, 70);
  jan3      = new Cab(120,80);//120,80
  mer3       = new Mago(120,80);//230,
  dav3       = new Dragon(90,30);
  eda3       = new Anciana(120,80);



  titulo      = loadFont("PressStart2P-Regular-12.vlw");
  selec       = loadFont("PressStart2P-Regular-40.vlw");
  
 
  pelea       = loadImage("Fondo_pelea.jpg");
 
  ca          = loadImage("caballero.png");
  cuc         = loadImage("paloma_cmbate.png");
  dav         = loadImage("davos.png");
  eda         = loadImage("anciana.png");
  mer         = loadImage("merlin.png");
  vuel        = loadImage("paloma_vuelo.png");
  
  ca2          = loadImage("caballero2.png");
  cuc2         = loadImage("paloma_cmbate2.png");
  dav2         = loadImage("davos2.png");
  eda2         = loadImage("anciana2.png");
  mer2         = loadImage("merlin2.png");
  

  p2          = loadImage("pantalla2.png");
  p3_1        = loadImage("p3_pl1.png");
  p3_2        = loadImage("p3_pl2.png");

  music       = new Minim(this);
  music_1     = music.loadFile("menu.mp3");
  music_1.setGain(-10);
  music_1.loop();
  
  music       = new Minim(this);
  music_2     = music.loadFile("seleccion.mp3");
  music_2.setGain(-10);
  music_2.pause();
  
  music       = new Minim(this);
  music_3     = music.loadFile("batalla.mp3");
  music_3.setGain(-10);
  music_3.pause();
  
  movie = new Movie(this,"pan1.mp4");
  movie.loop();

}

void draw(){
pan.display();


}

void movieEvent(Movie m) {
  m.read();
}

void keyPressed(){
pan.teclado();
}
