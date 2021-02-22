import java.util.Random;

abstract class Game
{

  PFont font;
  public Random rnd;
  private int width;
  private int height;
  private int [][] board;

  private Player player;
  private Player player2;

  private Enemy[] enemy;

  private Food[] food;


  void draw()
  {
    //clearBoard; - unfinished
    updateEnemies();
    drawBoard(); 
    //keyPressed;
    //isGameOver;
    //resolveCollisions;
  }

  void clearBoard()
  {
  }

  private void updateEnemies()
  {
    Enemy.enemyMoveTowardsPlayer();
  }

  void drawBoard()
  {
    size(1200, 800);
    frameRate(10);
    font = createFont("Arial", 16, true);
    textFont(font, 16);
  }

  void keyPressed()
  {
  }

  void isGameOver()
  {
  }

  void resolveCollisions()
  {
  }
}
