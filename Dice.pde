void setup()
{
  size(305,300);
  noLoop();
}
void draw()
{
  int dots=0;
 background (0,255,255);
  //your code here
   for(int y = 0; y<250; y=y+51)
   {
    for (int x = 0; x<300; x=x+51)
    {
  Die bob = new Die (x,y);
  bob.show();
  if (bob.side ==1){
   dots=dots+1;
  }
  if (bob.side ==2){
    dots=dots+2;
  }
  if (bob.side ==3){
    dots=dots+3;
  }
  if (bob.side ==4){
  dots=dots+4;
  }
  if (bob.side ==5){
    dots=dots+5;
  }
   if (bob.side ==6){
    dots=dots+6;
  }
  }
     }
   textSize(32);
   text("Sum: "+ dots,100,285);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int die, myX, myY, side;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    //your code here
    die=(int)(Math.random()*6)+1;
  }
  void show()
  {
    //your code here
    noStroke();
    fill(255,20,255);
    rect(myX,myY,50,50);
    stroke(0);
    fill(0);
    side = (int)((Math.random()*6)+1);
    if (side== 1){
    ellipse (myX+25,myY+25,10,10);
    }
      if (side== 2){
    ellipse (myX+10,myY+10,10,10);
     ellipse(myX+40,myY+40,10,10);
      }
     if (side== 3){
       ellipse (myX+25,myY+25,10,10);
    ellipse (myX+10,myY+10,10,10);
     ellipse(myX+40,myY+40,10,10);
    }
    if (side== 4){
       ellipse (myX+40,myY+10,10,10);
    ellipse (myX+10,myY+10,10,10);
     ellipse(myX+40,myY+40,10,10);
         ellipse (myX+10,myY+40,10,10);
    }
    if (side== 5){
       ellipse (myX+25,myY+25,10,10);
       ellipse (myX+40,myY+10,10,10);
    ellipse (myX+10,myY+10,10,10);
     ellipse(myX+40,myY+40,10,10);
         ellipse (myX+10,myY+40,10,10);
    }
   if (side == 6){
     ellipse (myX+10,myY+25,10,10);
     ellipse (myX+40,myY+25,10,10);
       ellipse (myX+40,myY+10,10,10);
    ellipse (myX+10,myY+10,10,10);
     ellipse(myX+40,myY+40,10,10);
         ellipse (myX+10,myY+40,10,10);
    }
}
}
