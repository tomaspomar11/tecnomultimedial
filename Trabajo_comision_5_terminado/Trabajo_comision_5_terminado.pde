PImage maza;

void setup (){
  size(800,400);
  
  background(#080606);
  

  
}


void draw(){
 background(#FFFFFF);
 maza=loadImage("maza.png");
 maza.resize(300,400);
  image(maza,400,20);
  
 
 fill(180,150,75);
  ellipse(200,300,25,400);
 
 
 
fill(#2C2121); 
rect(115,50,170,95);

 
  
  }
