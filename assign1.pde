PImage imgBg, imgGroundhog, imgSoil, imgLife, imgSoldier, imgRobot;
int soldierX, soldierY, soldierSpeedX, soldierSpeedY;
int robotX, robotY, robotSpeedX, robotSpeedY;
int laserX, laserY, laserSpeedX, laserSpeedY;


void setup() {
	size(640, 480, P2D);
	imgBg=loadImage("img/bg.jpg");
  imgGroundhog=loadImage("img/groundhog.png");
  imgSoil=loadImage("img/soil.png");
  imgLife=loadImage("img/life.png");
  imgSoldier=loadImage("img/soldier.png");
  imgRobot=loadImage("img/robot.png");
  
  //soldier
  soldierSpeedX=floor(random(1,5));
  soldierSpeedY=floor(random(2,5)); //limited the stories for soldier 
  soldierX=160;
  soldierY=soldierSpeedY*80;
  
  //robot
  robotSpeedX=floor(random(2,5));
  robotSpeedY=floor(random(2,5)); //limited the stories for robot 
  robotX=robotSpeedX*80;
  robotY=robotSpeedY*80;
  
  //laser
  laserX=robotX+25;
  laserY=robotY+37;
  laserSpeedX=-2;
}

void draw() {
	background(0);
  
  image(imgBg,0,0); //sky
  strokeWeight(5);
  stroke(255,255,0); 
  fill(253,184,19);
  ellipse(590,50,120,120); //inner sun

  
  fill(124,204,25);
  stroke(124,204,25);
  rectMode(CORNER);
  rect(0,145,640,160);  //grass
  image(imgGroundhog,280,80);  //groundhog pic + location
  image(imgSoil,0,160);  //soil pic + location
  image(imgLife,10,10);  //life pic on the left + location
  image(imgLife,80,10);  //life pic in the mid + location
  image(imgLife,150,10);  //life pic on the right + location
  
  //soldier
  soldierX+=soldierSpeedX;
  soldierX%=640;
  image(imgSoldier,soldierX,soldierY);  //soilder randomly walking
  
  //robot
  image(imgRobot,robotX,robotY);  //robot randomly appear
  
  //laserA
  
  laserX+=laserSpeedX;
  fill(255,0,0);
  stroke(255,0,0);
  strokeWeight(10);
  line(laserX,laserY,laserX-20,laserY);
  if(laserX<186&&laserX>-186){
   laserX=robotX+25; 
  }
 
}
 
