public int windowWidth = 1920;
public int windowHeight = 1080;
public int lives = 3;
public int score = 0;
public int time;

public void minigameResults (String winLose) {
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
