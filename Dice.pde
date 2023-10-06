int total;
void setup()
{
  size(500,500);
  noLoop();
  textAlign(CENTER);
  frameRate(30);
}
void draw()
{
  background(144);
  for (int i = 75; i <= 400; i += 100){
    for (int j = 100; j <= 400; j += 100){
      Die block = new Die(i,j);
      block.show();
    }
  }
  textSize(50);
  text(total, 250, 50);
}
void mousePressed()
{
  total = 0;
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int num, myX, myY;
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    num = (int)(Math.random() * 6) + 1;
    total += num;
  }
  void show()
  {
    fill(255);
    rect(myX, myY,50,50,10);
    fill(0);
    if(num == 1){
        ellipse(myX + 25, myY + 25, 10, 10);
    } else if (num == 2){
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if (num == 3){
        ellipse(myX + 25, myY + 25, 10, 10);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if (num == 4){
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else if (num == 5){
        ellipse(myX + 25, myY + 25, 10, 10);
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    } else {
        ellipse(myX + 10, myY + 10, 10, 10);
        ellipse(myX + 10, myY + 25, 10, 10);
        ellipse(myX + 10, myY + 40, 10, 10);
        ellipse(myX + 40, myY + 10, 10, 10);
        ellipse(myX + 40, myY + 25, 10, 10);
        ellipse(myX + 40, myY + 40, 10, 10);
    }
    
  }
}




