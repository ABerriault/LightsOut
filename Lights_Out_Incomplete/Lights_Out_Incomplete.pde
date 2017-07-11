// LightsOut program, in the event-based object-oriented paradigm

// store all game buttons in a global variable
GameButton[][] game_buttons = new GameButton[5][5];

void setup() {
  size(600, 600);
  background(255);

  // create buttons, and put their locations onto the screen

  // add neighbours to each button
  // add the row below as neighbours to every row except the bottom
}


void draw() {
}

void update_buttons() {
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
}
