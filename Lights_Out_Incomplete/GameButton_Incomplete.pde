public class GameButton {
  int x, y, w, h;
  int state;
  GameButton[] neighbours = new GameButton[0];

  public GameButton (int x_pos, int y_pos) {
    w = width;
    h = height;

    // random(n) returns a floating point number from 0 to up to but not including n,
    // so we use 2 as the parameter, giving is a range of 0 to 1.99
    // int() converts a floating point number into an integer, so we get either 0 or 1
    state = int(random(2));
  }

  public void draw() {
    // Draws a rectangle to the screen.
    // A rectangle is a four-sided shape with every angle at ninety degrees.
    // By default, the first two parameters set the location of
    // the upper-left corner, the third sets the width,
    // and the fourth sets the height.

    if (state == 1) {
      fill(255, 0, 0);
    } 
    rect(x, y, w, h);
  }

  // returns true if the button is pressed, false if not
  public boolean isClicked(int mouse_x, int mouse_y) {
    if (((x < mouse_x) && (mouse_x < x + w)) &&
      ((y < mouse_y) && (mouse_y < y + h))) {
      return true;
    } else {
      return false;
    }
  }

  // method function to change the state of the button
  public void changeState() {
    if (state == 1) {
      state = 0;
    } else {
      state = 1;
    }
    changeNeighbours();
  }

  public void changeNeighbours() {
    for (GameButton n : neighbours) {
    }
  }

  public void addNeighbour(GameButton neighbour) {
    neighbours = (GameButton[]) append(neighbours, neighbour);
  }
}
