String text0, text1, text2, text3, text4, text5;
PImage diapos1, diapos2, diapos3, diapos4, diapos5, diapos6, diapos7, diapos8, diapos9, diapos10, diapos11;
PFont miFuente;
int segundos, pantalla, animacion, suma;
float posX, posY, tamX, tamY, velX, velY;
boolean pantallaFinal;

void setup() {
 size (640, 480);
  segundos = 0;
  animacion = 0;
  pantalla=1;
  pantallaFinal = false;
  posX = 160;
  posY = 400;
  tamX = 290;
  tamY = 25;
  velX = velY = 1;
 
 diapos1 = loadImage ("cover1.jpg");
 diapos2 = loadImage ("flotando.jpg");
 diapos3 = loadImage ("peterywendy.jpg");
 diapos4 = loadImage ("nuncajamas.jpg");
 diapos5 = loadImage ("historia.jpg");
 diapos6 = loadImage ("garfio.jpg");
 diapos7 = loadImage ("garfio agua.jpg");
 diapos8 = loadImage ("padres.jpg");
 diapos9 = loadImage ("regreso.jpg");
 diapos10 = loadImage ("promesa.jpg");
 diapos11 = loadImage ("fin.jpg");
 
 miFuente = loadFont("BookAntiqua.vlw");

 text0 = "Peter Pan y Wendy (1911) \nes una novela infantil escrita por el autor escocés\nJames M. Barrie";
 text1 = "Narra la historia de Wendy Darling, una niña que\njunto a sus hermanos John y Michael, se embarca en\nuna mágica aventura hacia la Isla del Nunca Jamás,\nguiados por el travieso Peter Pan.";
 text2 = "En la isla, Wendy y sus hermanos viven emocionantes\nexperiencias junto a los Niños Perdidos, las hadas y\nlos indios. Se enfrentan al temible Capitán Garfio y\nsu banda de piratas, en épicas batallas donde la\nvalentía y la fantasía reinan.";
 text3 = "A pesar de la diversión y las travesuras, Wendy\ncomienza a sentir nostalgia por su hogar y su familia.\nPeter Pan, por otro lado, se resiste a crecer y\nabandonar su vida de aventuras sin responsabilidades.";
 text4 = "Tras una emotiva despedida, Wendy y sus hermanos\nregresan a Londres, llevando consigo los recuerdos\nimborrables de su tiempo en la Isla del Nunca Jamás.\nPeter Pan, por su parte, promete seguir volando\ny buscando nuevas aventuras, sin olvidar jamás\na su querida Wendy.";
 text5 = "Presionar TAB para reiniciar";
 
}


void draw (){
 background(0);
 textFont (miFuente);
 textSize (20);
 println (segundos);
 //Timer
   if (frameCount % 60 == 0) {
    segundos++; 
    }
    if (pantalla != 3) {
        pantalla++;
      }
 //Diapositiva 1 
  if (segundos>0 && segundos<5){
 image(diapos1, 215, CENTER, 200, 300);
 text(text0, 100, 350);
  }
 //Diapositiva 2
  if (segundos>5 && segundos<10){
  image(diapos2, 170, CENTER, 300, 300);
  }
    //Texto 1 text
  if (segundos>5 && segundos<20){
    text(text1, 100, 350);
  }
 //Diapositiva 3 
 if (segundos>10 && segundos<15){
  image(diapos3, 170, CENTER, 300, 300);
 }
 //Diapositiva 4 text
 if (segundos>15 && segundos<20){
  image(diapos4, 170, CENTER, 300, 300);
 }
    //Texto 2
 if (segundos>20 && segundos<35){
    text(text2, 100, 330);
  }  
  //Diapositiva 5
 if (segundos>20 && segundos<25){
  image(diapos5, 215, CENTER, 250, 300);
 }
 //Diapositiva 6
 if (segundos>25 && segundos<30){
  image(diapos6, 190, CENTER, 250, 300);
 }
 //Diapositiva 7
 if (segundos>30 && segundos<35){
  image(diapos7, 170, CENTER, 300, 300);
 }
 //Diapositiva 8
 if (segundos>35 && segundos<40){
  image(diapos8, 170, CENTER, 300, 300);
 }
    //Texto 3 
 if (segundos>35 && segundos<45){
    text(text3, 100, 350); 
 }
 //Diapositiva 9
 if (segundos>40 && segundos<45){
  image(diapos9, 190, CENTER, 250, 315);
 }
   //Texto 4
   if (segundos>45 && segundos<55){
    text(text4, 100, 340);
   }
 //Diapositiva 10
 if (segundos>45 && segundos<55){
 image(diapos10, 190, CENTER, 250, 315);
  }
 //Diapositiva Final 
  if (segundos>45){
  pantallaFinal = true;
  image(diapos11, 0, CENTER, 640, 480);
   if (posX >= width-tamX){
   velX = -1;  
   }
   if (posX <= 0){
   velX = 1;
   }
  posX = posX + velX;
  fill(255); 
  rect (posX, posY, tamX, tamY);
  fill(0);
  text(text5, posX+20, posY+20);
 }
 
}  

void keyPressed(){
 if (pantallaFinal == true) {
   if (key == TAB){
    pantalla = 0;
    segundos = 0;
    pantallaFinal = false;
    fill (255);
     }
  
   }
   
}
