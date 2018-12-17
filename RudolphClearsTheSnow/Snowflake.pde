class Snowflake{
  int nF, sizeR, speedR;
  Snow[] snowArray;
  Snowflake(int numFlakes, int sizeRange, int speedRange){
    nF=numFlakes;
    sizeR=sizeRange;
    speedR=speedRange;
    snowArray=new Snow[nF];
  }
  void makeArray(){
  for(int i=0;i<nF;i++){
    int s=(int)(random(10,sizeR));
    snowArray[i]=new Snow(s,(int)(random(0,speedR)));
    snowArray[i].show();
  }
  }
  void updateSf(){
    for(int i=0;i<nF;i++){
     if((snowArray[i].getX())>1000||snowArray[i].getY()>800){
       snowArray[i].reset();
     }
      snowArray[i].show();
      snowArray[i].update();
  }
  }
}
