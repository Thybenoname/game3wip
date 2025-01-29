public class Button {
  public int x;
  public int y;
  public int w;
  public int h;
  public String t;
  public Boolean s = false;
  private Boolean p = false;
  public int u;
  public int l;
  private int ud = 0;
  private int lr = 0;
  private Boolean up = false;
  private Boolean down = false;
  private Boolean left = false;
  private Boolean right = false;

  public Button(int x, int y, int w, int h, String t, int l, int u) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.t = t;
    this.u = u;
    this.l = l;
  }

  public void show() {
    fill(#ff0000);
    if (this.u == ud && this.l == lr) {
      stroke(135);
      this.s = true;
      this.t = "selected";
    } else {
      stroke(0);
      this.s = false;
      this.t = "unselected";
    }
    rect(this.x, this.y, this.w, this.h);
    fill(0);
    textSize(20);
    text(this.t, this.x + 15, this.y + 25);
    removeButton();
  }

  private void checkCurrentSelect() {

    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == UP) {
          this.up = true;
          this.down = false;
          this.left = false;
          this.right = false;
          print("ud=" + ud + "lr=" + lr);
        }
        if (keyCode == DOWN) {
          this.up = false;
          this.down = true;
          this.left = false;
          this.right = false;
          print("ud=" + ud + "lr=" + lr);
        }
        if (keyCode == LEFT) {
          this.up = false;
          this.down = false;
          this.left = true;
          this.right = false;
          print("ud=" + ud + "lr=" + lr);
        }
        if (keyCode == RIGHT) {
          this.right = true;
          print("ud=" + ud + "lr=" + lr);
        }
      }
    }
  }
  
  private void checkKeyNotPressed() {
    if (!keyPressed) {
      if (this.up == true) {
        ud = ud - 1;
        this.up = false;
      }
      if (this.down == true) {
        ud = ud + 1;
        this.down = false;
      }
      if (this.left == true) {
        lr = lr - 1;
        this.left = false;
      }
      if (this.right == true) {
        lr = lr + 1;
        this.right = false;
      }
    }
  }
  
  public void checkSelect() {
    checkCurrentSelect();
    checkKeyNotPressed();
  }
  
  public void checkPressed() {
    if (this.s = true) {
      if (keyPressed) {
        if (key == 'z'||key == 'Z') {
          this.p = true;
          this.t = "pressed";
        }
      }
    }
  }
  
  public void removeButton() {
    if (this.p == true) {
      noFill();
      noStroke();
    }
  }
}
