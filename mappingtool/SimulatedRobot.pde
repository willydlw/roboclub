/*
  simple simulated robot
*/

import java.util.*;

public class SimulatedRobot implements Irobot
{
  private boolean connected;
  private PVector pos;
  private int currentMove; // move that the robot is current on
  ArrayList <PVector> moves; // list of moves that the robot can make
  
  public SimulatedRobot(PVector pos)
  {
    this.pos=pos;
    moves = new ArrayList<PVector>();
    currentMove=0;
    this.setupMoves();
  }
  
  public void connect()
  {
    connected=true; 
  }
  
  public void disConnect()
  {
    connected=false; 
  }
  
  public PVector getPos()
  {
    return pos; 
  }
  
  public int getTokens()
  {
    return 3; 
  }
  
  public color getGridColor()
  {
    return color(255); 
  }
  
  public void update()
  {
    if(connected)
    {
      System.out.println("x: "+pos.x+" y: "+pos.y);
      pos.add(moves.get(currentMove));
      currentMove=(currentMove+1)%moves.size();
      delay(1000);
    }
  }
  
  private void setupMoves()
  {
    moves.add(new PVector(0,150));
    moves.add(new PVector(150,0));
    moves.add(new PVector(110,30));
    moves.add(new PVector(0,-150));
    moves.add(new PVector(-150,0));
    moves.add(new PVector(-110,-30));
  }
  
  public String toString()
  {
    return "simulated robot X: "+pos.x+" Y: "+pos.y; 
  }
}