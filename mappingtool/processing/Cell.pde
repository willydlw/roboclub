
public class Cell 
{
  // instance values
  private int posX;
  private int posY;
  private int sideLength;
  public int id;
  
  public Cell(int posX,int posY) 
  {
    this.posX = posX;
    this.posY = posY;
  }
  
  public Cell(int posX,int posY,int sideLength,int id)
  {
    this.posX = posX;
    this.posY = posY;
    this.sideLength=sideLength;
    this.id=id;
  }
 
  public String toString()
  {
    return ("X: "+posX+" Y: "+posY+" cell id: "+id); 
  }
  
  public int sideLength()
  {
     
  }
  
}