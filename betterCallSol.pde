int airX[]=new int[70];
int airY[]=new int[70];
int frame=0;

void setup(){
  fullScreen();
  fill(255);
  textFont(loadFont("GutenbergTextura-48.vlw"),48);
}


void draw(){
  frame++;
  if(frame%500==1){keyPressed();}
}

void keyPressed(){
  background(128);
  for(int i=0;i<8;i++){
    airX[i]=int(random(width));
    airY[i]=int(random(height));
    for(int j=0;j<i;j++){
      line(airX[j],airY[j],airX[i],airY[i]);
    }
  }
  textFont(loadFont("SCRIPT1_Script_Casual_Normal-48.vlw"),48);  
  text("Better Call Sol",int(random(width/3))+100,int(random(height/3))+100);
  frame=2;
}