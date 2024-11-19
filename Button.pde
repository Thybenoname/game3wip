public class Button{
  public int x;
  public int y;
  public int w;
  public int h;
  public String t;
  public Boolean o;
  
  public Button(int x, int y, int w, int h, String t, Boolean o){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.t = t;
    this.o = o;
  }// 
  
  public void show(){
    fill(#ff0000);
    rect(this.x, this.y, this.w, this.h);
    fill(0);
    textSize(20);
    text(this.t, this.x + 15, this.y + 25);
  }
  if()
  
}
