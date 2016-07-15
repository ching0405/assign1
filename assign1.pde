/* 
author ching
date 2016/7/15
*/

PImage enemyImg,fighterImg,treasureImg,hpImg,bg1Img,bg2Img;
int blood,enemy;
int treasurex;
int treasurey;
int enemyMove,bg1Move,bg2Move;

void setup () {
  size(640,480) ;
  enemyImg=loadImage("img/enemy.png");
  fighterImg=loadImage("img/fighter.png");
  treasureImg=loadImage("img/treasure.png");
  hpImg=loadImage("img/hp.png");
  bg1Img=loadImage("img/bg1.png");
  bg2Img=loadImage("img/bg2.png");
  
  
  blood=floor(random(205));  
  treasurex=floor(random(0,600));
  treasurey=floor(random(35,440));
  enemy=floor(random(35,410));  
  enemyMove=0;
  bg1Move=-640;
  bg2Move=0;
}

void draw() {

  bg2Move+=1;
  bg2Move%=640;
  image(bg2Img,bg2Move,0);
  bg1Move+=1;
  bg1Move%=640;
  image(bg1Img,bg1Move,0);
  
  image(fighterImg,580,220);  
  
  rectMode(CORNERS);
  
  //hp
  fill(255,0,0); 
  rect(3,4,blood,21);  
  image(hpImg,0,0);
  
  //enemy
  enemyMove+=3;
  enemyMove%=640;
  image(enemyImg,enemyMove,enemy);
  
  //treasure
  image(treasureImg,treasurex,treasurey);
  
}
