
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
    int numCells=(gwidth/cellSideLength)*(ghight/cellSideLength);
    cells=new Cell[numCells];
    this.populateGrid();
  }
  
  public void printCells()
  {
    for(Cell cell : cells)
    {
      System.out.println(cell); 
    }
  }
  
  private void populateGrid()
  {
    int cellId=0;
    for(int x=0;x<gwidth;x+=this.cellSideLength)
    {
      for(int y=0;y<ghight;y+=this.cellSideLength)
      {
         cells[cellId]=new Cell(new PVector(x,y),cellId);
         cells[cellId].cellColor=color(255,255,255); // wtf idk ... 
         cellId++;
         //System.out.println(cellId);
         //System.out.println("x: "+x+" y: "+y);
      }
    }
  }
  
  public Cell[] cells()
  {
    return cells; // return the cell array
  }
}