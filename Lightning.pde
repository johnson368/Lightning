int startX= 0;
int startY = 400;
int endX = 0;
int endY = 400;
int mouse = 0;
void setup()
{
  size(800,800);
  background(0,0,0);
  frameRate(10);
   strokeWeight(5);
}
void draw(){
   //ghost 1
  fill(255,0,0);
  ellipse(200, 775, 250, 250);
   //left eye
  fill(255);
  rect(160, 710, 10, 30);
  rect(170, 700, 10, 50);
  rect(180, 700, 10, 50);
  rect(190, 710, 10, 30);
  //right eye
  rect(220, 710, 10, 30);
  rect(230, 700, 10, 50);
  rect(240, 700, 10, 50);
  rect(250, 710, 10, 30);
  //pupils
  fill(0, 255, 0);
  rect(160, 720, 20, 20);
  rect(220, 720, 20, 20);
  //ghost 2
  fill(0,255,255);
  ellipse(400, 775, 250, 250);
   //left eye
  fill(255);
  rect(360, 710, 10, 30);
  rect(370, 700, 10, 50);
  rect(380, 700, 10, 50);
  rect(390, 710, 10, 30);
  //right eye
  rect(420, 710, 10, 30);
  rect(430, 700, 10, 50);
  rect(440, 700, 10, 50);
  rect(450, 710, 10, 30);
  //pupils
  fill(255, 0, 0);
  rect(360, 720, 20, 20);
  rect(420, 720, 20, 20);
   //ghost 3
  fill(0,255,0);
  ellipse(600, 775, 250, 250);
     //left eye
  fill(255);
  rect(560, 710, 10, 30);
  rect(570, 700, 10, 50);
  rect(580, 700, 10, 50);
  rect(590, 710, 10, 30);
  //right eye
  rect(620, 710, 10, 30);
  rect(630, 700, 10, 50);
  rect(640, 700, 10, 50);
  rect(650, 710, 10, 30);
  //pupils
  fill(0, 0, 255);
  rect(560, 720, 20, 20);
  rect(620, 720, 20, 20);
  //pacman
  fill(255,255,0);
  arc(25, 175, 125, 125, 0, PI+HALF_PI);
  // pupil
  fill(0,0,0);
  ellipse(2, 150, 10, 10);
//lightning stroke
 fill(255,255,0);
  stroke( (int) (Math.random()*256),(int) (Math.random()*256), (int) (Math.random()*256), (int) (Math.random()*256) );
    while ( endX < 800) {
    endX = startX +  (int)(Math.random()*500);
    endY = startY + (int)(Math.random()*509);
      line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  
}
void mousePressed()
{
  startX= 0;
  startY = 150;
  endX = 0;
 endY = 150;
 mouse++;
 if (mouse > 50) {
   background(0,0,0);
    textSize(32);
    text("You have slain all the ghosts! ggs", 10, 30); 
    fill(255, 255, 255);  
     } else  {
       textSize(32);
        text("Keep zapping the ghosts Packman!", 10, 30); 
        fill(255, 255, 255);
      }
}
