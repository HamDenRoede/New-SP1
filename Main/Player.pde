import java.util.Random;

class Player
{
  private int x;
  private int y;
  private int maxX;
  private int maxY;
  private int playerHealthValue;
  private int player2HealthValue;
  private color type;
  private int score;


  //constructor() til at sætte x, y og player variablerne

  public Player(int x, int y, int maxX, int maxY, color type)
  {
    this.x = x;
    this.y = y;
    this.maxX = maxX;
    this.maxY = maxY;
    this.type = type;
  }

  private int getX()
  {
    return x;
  }

  private int getY()
  {
    return y;
  }

  private void moveLeft()
  {
    --x;
    if (x < 0)
    {
      x = 0;
    }
  }

  private void moveRight()
  {
    ++x;
    if (x > maxX)
    {
      x = maxX;
    }
  }

  private void moveUp()
  {
    --y;
    if (y < 0)
    {
      y = 0;
    }
  }

  private void moveDown()
  {
    ++y;
    if (y > maxY)
    {
      y = maxY;
    }
  }
  
  private void getType()
  {
    fill(0, 0, 255);
  }

  public void setRandomPosition()
  {
    this.x = int(random(maxX));
    this.y = int(random(maxY));
  }

  public void updatePlayer()
  {
    //Update player
    if (key == UP)
    {
      player.moveUp();
    }
    if (key == LEFT)
    {
      player.moveLeft();
    }
    if (key == DOWN)
    {
      player.moveDown();
    }
    if (key == RIGHT)
    {
      player.moveRight();
    }
  }

  public void updatePlayer2()
  {
    //Update player2
    if (key == 'W')
    {
      player2.moveUp();
    }
    if (key == 'A')
    {
      player2.moveLeft();
    }
    if (key == 'S')
    {
      player2.moveDown();
    }
    if (key == 'D')
    {
      player2.moveRight();
    }
  }

  public takeDamage()
  {
    for (int i = 0; i < enemy.length; ++i)
    {
      if (enemy[i].getX() == player.getX() && enemy[i].getY() == player.getY())
      {
        --playerHealthValue;
      }
      if (enemy[i].getX() == player2.getX() && enemy[i].getY() == player2.getY())
      {
        --player2HealthValue;
      }
    }
  }

  public increaseScore()
  {
    for (int i = 0; i < food.length; ++i)
    {
      if (food[i].getX() == player.getX() && food[i].getY() == player.getY())
      {
        ++playerHealthValue;
        food[i].setX(rnd.nextInt(width-1));
        food[i].setY(rnd.nextInt(height-1));
      }
      if (playerHealthValue == 101)
      {
        --playerHealthValue;
      }
      if (food[i].getX() == player2.getX() && food[i].getY() == player2.getY())
      {
        ++player2HealthValue;
        food[i].setX(rnd.nextInt(width-1));
        food[i].setY(rnd.nextInt(height-1));
      }
      if (player2HealthValue == 101)
      {
        --player2HealthValue;
      }
    }
  }
}
