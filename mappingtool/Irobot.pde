
/*
  interface for a robot. 
  I'm gonna code a fun test robot... It'll me like a moving demo or some stuff
*/

public interface Irobot
{
  public void connect(); // connect to the robot over some means
  public void disConnect(); // disconnect from the robot
  public PVector getPos(); // return a vector for the postion of the robot
  public int getTokens(); // get the number of tokens that the robot has picked up
  public color getGridColor();
  public void update(); // if the robot is connected update the current position of the robot
}