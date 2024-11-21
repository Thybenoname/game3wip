public class Config {
  public int lives = 3;
  public int score = 0;
  //add timer later
  
  public void minigameResults (){
    if (minigameChooser.winLose.equalsIgnoreCase("WIN")){
      score++;
    }
    else if (minigameChooser(winLose.equalsIgnoreCase("LOSE"))){
      lives--;
    }
}
