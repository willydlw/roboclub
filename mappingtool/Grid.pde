
public class Grid
{
  private int gwidth;
  private int ghight;
  private Cell[] cells; // array of gamegrid cells
  private int cellSideLength;
  
  public Grid(int gwidth,int ghight)
  {
    this.gwidth=gwidth;
    this.ghight=ghight;
    this.cellSideLength=100;
    cells=new Cell[gwidth*ghight];
  }
  
  private void populateGrid()
  {
    int cellId=0;
    for(int x=0;x<gwidth;x+=this.cellSideLength)
    {
      for(int y=0;y<ghight;y+=this.cellSideLength)
      {
         
      }
    }
  }
  
}