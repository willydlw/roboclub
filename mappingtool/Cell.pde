
public class Cell 
{
  // instance values
  // don't use these
  private int posX;
  private int posY;
  PVector pos; // use this instead
  private int sideLength;
  public int id;
  
  public Cell(int posX,int posY) 
  {
    this.posX = posX;
    this.posY = posY;
  }
  
  public Cell(int posX,int posY,int sideLength,int id)
  {
    //this.posX = posX;
    //this.posY = posY;
    pos=new PVector(posX,posY);
    this.sideLength=sideLength;
    this.id=id;
  }
 
  public Cell(PVector pos,int id) // probubly the best constructor
  {
    this.pos=pos.copy(); // copy is a factory method for getting a copy of the current object
    this.id=id;
    this.sideLength=100; // is 100 PX
  }
 
  public String toString()
  {
    return ("X: "+posX+" Y: "+posY+" cell id: "+id); 
  }

  public Boolean posInCell(PVector argpos)
  {
     Boolean inSpace=false;
     // get a vector for the area of the cell
     PVector edges=pos.copy();
     PVector.add(edges,new PVector(this.sideLength,this.sideLength)); 
     // subtract argpos from the edge vector
     PVector subspace=PVector.sub(edges,argpos);
     float magni=subspace.mag();
    
     if(magni <= this.sideLength)
     {
       inSpace=true; 
     }
     else
     {
       inSpace=false; 
     }
    
     return inSpace;
  }
  
  
}