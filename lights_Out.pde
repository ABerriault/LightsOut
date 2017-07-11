// LightsOut program, in the event-based object-oriented paradigm

// store all game buttons in a global variable
GameButton[][] game_buttons = new GameButton[5][5];

void setup() {
  size(600, 600);
  background(255);

  // create buttons, and put their locations onto the screen
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      game_buttons[i][j] = new GameButton(120*i, 120*j, 120, 120);
    }
  }

  // add neighbours to each button
  // add the row below as neighbours to every row except the bottom
  for (int i = 0; i < 5; i++) {
    for (int j = 0; j < 5; j++) {
      if (i<4) {
        game_buttons[i][j].addNeighbour(game_buttons[i+1][j]);
      }
      if (i>0) {
        game_buttons[i][j].addNeighbour(game_buttons[i-1][j]);
      }
      if (j<4) {
        game_buttons[i][j].addNeighbour(game_buttons[i][j+1]);
      }
      if (j>0) {
        game_buttons[i][j].addNeighbour(game_buttons[i][j-1]);
      }
    }
  }
}


void draw() {
  draw_buttons();
}

void update_buttons() {
  // change the state of all neighbours
  for (GameButton[] row : game_buttons) {
    for (GameButton button : row) {
      if (button.isClicked(mouseX, mouseY)) {        
        button.changeState();
      }
    }
  }
}

void draw_buttons() {
  for (GameButton[] row : game_buttons) {
    for (GameButton button : row) {
      button.draw();
    }
  }
}

// mouseClicked is a function that automatically runs after you click
// on the game screen
//
// this means you do not have to constantly check for button presses in
// the main draw() loop
//
// clicking on the screen implies clicking on a button,
// so we'll check for button presses here
void mouseClicked() {
  update_buttons();
}

public class GameButton {
  int x, y, w, h;
  int state;
  GameButton[] neighbours = new GameButton[0];

  public GameButton (int x_pos, int y_pos, int width, int height) {
    x = x_pos;
    y = y_pos;
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
    } else {
      fill(0, 255, 0);
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
      if (n.state == 1) {
        n.state = 0;
      } else {
        n.state = 1;
      }
    }
  }

  public void addNeighbour(GameButton neighbour) {
    neighbours = (GameButton[]) append(neighbours, neighbour);
  }
}