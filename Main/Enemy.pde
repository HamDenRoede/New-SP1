import java.util.Random;

class Enemy
{
  private Random rnd;
  private int x;
  private int y;
  private int maxX;
  private int maxY;
  private color type;

  public Player player;
  public Player player2;

  public Enemy (int x, int y, int maxX, int maxY, color type)
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
    fill (255, 0, 0);
  }

  public void enemyMoveTowardsPlayer()
  {
    for (int i = 0; i < Enemy.length; ++i)
    {
      if (rnd.nextInt(3) < 2)
      {
        //We follow
        int dx = player.getX() - enemy[i].getX();
        int dy = player.getY() - enemy[i].getY();
        int ax = player2.getX() - enemy[i].getX();
        int ay = player2.getX() - enemy[i].getY();
        if (abs(dx) > abs(dy))
          if (abs(ax) > abs(ay))
          {
            if (dx > 0 || ax > 0)
            {
              //Player is to the right
              enemy[i].moveRight();
            } else
            {
              //Player is to the left
              enemy[i].moveLeft();
            }
          } else if (dy > 0 || ay > 0)
          {
            //Player is down;
            enemy[i].moveDown();
          } else
          {//Player is up;
            enemy[i].moveUp();
          }
      } else
      {
        //We move randomly
        int move = rnd.nextInt(4);
        if (move == 0)
        {
          //Move right
          enemy[i].moveRight();
        } else if (move == 1)
        {
          //Move left
          enemy[i].moveLeft();
        } else if (move == 2)
        {
          //Move up
          enemy[i].moveUp();
        } else if (move == 3)
        {
          //Move down
          enemy[i].moveDown();
        }
      }
    }
  }
}
