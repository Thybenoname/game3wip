public class Button {
  public int x;
  public int y;
  public int w;
  public int h;
  public String t;
  public Boolean s;
  public Boolean p;
  public int u;
  public int l;
  public IntList ud;
  public IntList lr;

  public Button(int x, int y, int w, int h, String t, Boolean s, Boolean p, int u, int l) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.t = t;
    this.s = s;
    this.p = p;
    this.u = u;
    this.l = l;
    this.ud = new IntList(this.u);
    this.lr = new IntList(this.l);
  }/* The button takes in an xy position, a width and height,
   A String, and a set boolean to determine if the button is selected
   with another taking if the button has been pressed
   the variable u,l will go into the array lists ud,lr for determining
   which button will be selected first when the directional input is taken
   and which button is selected when a directional input is taken
   with up, down being first, then left right
   */

  public void show() {
    fill(#ff0000);
    rect(this.x, this.y, this.w, this.h);
    fill(0);
    textSize(20);
    text(this.t, this.x + 15, this.y + 25);
  }//uses the given xy positions, width, height,
  //and String to create and show the button

  public void checkSelect() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP && this.u == 0 && this.l == 0 ||
          keyCode == DOWN && this.u == 0 && this.l == 0 ||
          keyCode == LEFT && this.u == 0 && this.l == 0||
          keyCode == RIGHT && this.u == 0 && this.l == 0) {
          this.s = true;
          this.t = "selected";
        }
      }
    }
  }//checks for if the directional inputs are pressed and
}  //selects the button 0,0 on the array lists ud,lr
