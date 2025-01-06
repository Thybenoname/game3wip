public int lives = 3;
public int score = 0;
public int time;
private boolean minigameStart;// placeholder
private String winLose;// placeholder

public void minigameResults () {
  if (winLose.equalsIgnoreCase("WIN")) { // placeholder
    score++;
    // play animation and sound
    // show lives (may change later)
    // start next minigame
  } else if (winLose.equalsIgnoreCase("LOSE")) { // placeholder
    lives--;
    // play animation and sound
    // remove 1 lives icon from top, maybe tie the images to the lives variable
    // start next minigame
  }
}

public void timer () {
  if (minigameStart == true) { // placeholder
    int time = 10; // placeholder, set to minigame individual timer later
    for (int i = time; i > 0; i--) {
      time--; // placeholder, fix timer later, class is about to end
    }
  }
}
