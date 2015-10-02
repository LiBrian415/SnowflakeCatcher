Snowflake [] sno;
void setup()
{
  size(400,400);
  background(0);
  sno = new Snowflake[100];
  for (int i = 0 ; i<sno.length; i++)
  {
    sno [i]= new Snowflake();
  } //your code here
}
void draw()
{
  for (int i = 0; i<sno.length; i++)
  {
    sno[i].erase();
    sno[i].lookDown();
    sno[i].move();
    sno[i].wrap();
    sno[i].show();
  }//your code here
}
void mouseDragged()
{
noStroke();
fill(200);
ellipse(mouseX,mouseY,20,20);//your code here
}

class Snowflake
{
  boolean isMoving;
  int x, y; //class member variable declarations
  Snowflake()
  {
    x = (int)(Math.random()*401);
    y = (int)(Math.random()*401);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);
    //your code here
  }
  void lookDown()
  {
    if(y>=0 && y<=410)
      isMoving = true;
    if (get(x,y+7) == color(200))
      isMoving = false;
    else
      isMoving =true;//your code here
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,7,7);  //your code here
  }
  void move()
  {
    if(isMoving==true)
      y++;//your code here
  }
  void wrap()
  {
    if(y > 390)
     {
     y=0;
     x = (int)(Math.random()*401);
     }//your code here
  }
}


