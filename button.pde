public class Button {
  public int x;
  public int y;
  public int w;
  public int h;
  public String t;
  public Boolean o;
  public int i;

  public Button(int x, int y, int w, int h, String t, Boolean o, int i) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.t = t;
    this.o = o;
    this.i = i;
  }/* The button takes in an xy position, a width and height,
   A String, and a set boolean to determine the type of button
   the variable i will go into an array list for determining
   which button will be selected first when the directional input is taken
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
        if (keyCode == UP || keyCode == DOWN || keyCode == LEFT || keyCode == RIGHT) {
          stroke(#FF00FF);
        }
      }
    }
  }//checks for if the directional inputs are pressed
}
