PImage mango;
void setup(){
size(800, 400);
background(127);
mango = loadImage("mango.jpg");
}
void draw(){
image(mango, 0, 0, 400, 300);
ellipse(600, 140, 260, 190);
fill(137, 84, 19);
rect(700, 130, 25, 15);
fill(255, 161, 46);


}
