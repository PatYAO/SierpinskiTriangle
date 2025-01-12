import processing.core.PApplet;

public class Sketch extends PApplet {

  public void settings() {
    size(400, 400);
  }

  public void setup(){
    //empty!
  }
  public void draw(){
  sierpinski(50,300,300);
  }
  public void mouseDragged(){ //optional

  }
  public void sierpinski(int x, int y, int len) {
  if(len <= 20){
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
  }
}
