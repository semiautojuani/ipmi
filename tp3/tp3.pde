// https://youtu.be/6YvexpxmmsY
PImage obra;
int cantidad, lado, tamaño;
boolean reinicio;
color color1, color2, color3;

void setup(){
 size(800,400);
 background(248, 240, 217);

 obra = loadImage("obra.jpg");
 image(obra, 0, 0, 400, 400);
 
 lado = 25;
 cantidad = 14;
 tamaño = 25;
 
 //reinicio = false;
 
 color1 = color(63, 58, 112);
 color2 = color(42, 57, 150);
 color3 = color(63, 110, 130);
 
}

void draw(){

  //println(mouseX, mouseY);
  
  for (int x =0; x<cantidad; x++){
   for (int y =0; y<cantidad; y++){
    rect(410+x*tamaño, 19+y*tamaño, lado, lado);
    if ((x+y)%2==0){
      fill(color1);
    }else{
      fill(color2);
     }
     if (keyPressed == true && (x+y)%2==0){
        fill(random(0,150));
     }
  }
 }
}
 
 
 
