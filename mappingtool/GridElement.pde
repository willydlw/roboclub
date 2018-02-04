/*
  Abstract class for putting stuff on the game grid 
  This is really more for ideas about how the game grid should be simulated 
*/

public abstract class GridElement
{
  private boolean onGrid; // boolean to tell if the element is visable on the grid 
  private PVector pos; // positon of the elemnt on the vector
  
  public void place(PVector p)
  {
    pos=p.copy();
    onGrid=true;
  }
  
 
  
}