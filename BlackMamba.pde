PFont font ;
PFont director;
float posY;
float despY;
float x;
PImage china;
PImage uma;

PImage imagen;

void setup() 
{
  size(640, 500);
  posY= height;
  despY = 50;
  x = -100;
imagen= loadImage("blackletrs.jpg");
china= loadImage("blackmambo.jpg");
uma= loadImage("blackmambafig.jpg");
}

void draw() {
  
  background(0);
  posY = posY -1;
  imageMode(CENTER);
  
 
 
  
  

  font = createFont("Playbill", 30);
  textFont(font);
  textSize(40);
 fill(200, 200, 0);
  text("Directed By", width/2, posY);
  pushStyle();
  text("with Lucy Liu",posY*0.99+700,height/1.2);
  image(china, posY*0.99+1100,height/2,520,520);
  text("and  UMA TURBIAN",width/2,posY+1600);
  image(uma, width/2,posY+1900,500,500);
  image(imagen,width/2,posY+2300,550,280);
  popStyle();

  director = createFont("PoplarStd", 48);
  textSize(despY);
  textFont(director);
  fill(200, 200, 0);
  text("QUARENTINE TARANTINO", x, height);
x++;
  
}

void mousePressed() {
    posY = height;
   x = 0;
  }
