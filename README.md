# Lights Out
---
A game written in Processing (Java IDE). The game is written with numerous errors listed below to help reinforce camper understanding of:
- Classes
- Class Constructors
- Creating Instances of Objects
- Calling Class Methods

The repository contains a completed version as well as the camper version which they should begin with. The errors are listed below:

Line 17: 
```Java
GameButton[][] game_buttons = new GameButton[5][5];                             // Create a GameButton 2D Array that is 5x5.
```

Line 34: 
```Java
game_buttons[i][j] = new GameButton(120*i, 120*j, 120, 120);          // Fill the 2D Array with new GameButton's using the GameButton Constructor.
```

Line 82: 
```Java
button.changeState();                                                  // Call the gameButton Class method changeState()
```

Line 98: 
```Java
button.draw();                                                          // Call the gameButton Class method draw()
```

Line 138: 
```Java
public class GameButton {                                                 // Should be a public class
```

Line 143: 
```Java
public GameButton (int x_pos, int y_pos, int width, int height) {       // Should take 4 integer arguments
```

Line 182-186: 
```Java
if (state == 1) {
  state = 0;
} else {
  state = 1;
}
```


Created by [Jimmy](https://github.com/jimrustle). Modified by [Andrew Berriault](https://github.com/ABerriault) for *McMaster Venture Engineering & Science*
