public void setup()
{
  size(400,400);
  sqware(0, 0, 200);
  sqware(200, 200, 200);
  sqware(0, 200, 200);
  sqware(200, 0, 200);
  sierpinski(20, 380, 360);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  int green = (int)(Math.random()*256);
  int red = (int)(Math.random()*256);
  if(len < 44){
    stroke(red, green, 0);
    fill(red,green, 0);
    triangle(x, y, x+len, y, x+len/2, y-len);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
public void sqware(int a, int b, int c)
{
  int green = (int)(Math.random()*256);
  int blue = (int)(Math.random()*256);
  stroke(0, green, blue);
  fill(0,green, blue);
  rect(a, b, c, c);
}
