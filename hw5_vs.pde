int[] xpos = new int[30];
int[] ypos = new int[30];
PShape cat;
float xx,yy;

float gravity = 0.1;
void setup(){
  size(500,500);
  for(int i=0;i<xpos.length ; i++){
    xpos[i] = mouseX;
    ypos[i] = mouseY;
  }
  cat = loadShape("cat-_2_.svg");
  smooth();
}

void draw(){
  background(#003366);

  xpos[xpos.length - 1] = mouseX+10;
  ypos[ypos.length - 1] = mouseY;
  for (int i = 0 ; i < 10 ; i++){
    stroke(255);
    xx = random(width);
    yy = random(height);
    point(xx,yy);
    line(xx+3,yy,xx+6,yy);
    line(xx-3,yy,xx-6,yy);
    line(xx,yy+3,xx,yy+6);
    line(xx,yy-3,xx,yy-6);
  }
  for(int i = 0 ; i< xpos.length -1;i++){
     xpos[i] = xpos[i+1]+8;
     ypos[i] = ypos[i+1];
  }
  noStroke();
  for(int i = 0 ; i < xpos.length ;i++){
    rectMode(CENTER);
    fill(i*15,0,0);
    rect(xpos[i],ypos[i]-30,i/3,i/2);
    fill(i*15,i*2,0);
    rect(xpos[i],ypos[i]-18,i/3,i/2);
    fill(i*15,i*5,0);
    rect(xpos[i],ypos[i]-8,i/3,i/2);
    fill(0,i*5,0);
    rect(xpos[i],ypos[i]+5,i/3,i/2);
    fill(0,i*3,i*12);
    rect(xpos[i],ypos[i]+18,i/3,i/2);
    fill(i*3,0,i*8);
    rect(xpos[i],ypos[i]+30,i/3,i/3);
                            
  } 
  shapeMode(CENTER);
  shape(cat,mouseX,mouseY+3,160,160);
}
