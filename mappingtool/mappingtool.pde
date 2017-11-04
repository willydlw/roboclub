import java.util.*;


//ArrayList<Cell> cells=new ArrayList<Cell>();
//Cell[] cells; // all the cells in the array

Grid gamegrid; // lol, tron

void setup() // called once 
{
  size(800,800); 
  //int cellId=0;
  //cells=new Cell[64]; // 64 cells on game grid
  
  //for(int x=0;x<width;x+=100)
  //{
  //  for(int y=0;y<height;y+=100)
  //  {
  //    Cell nextCell=new Cell(x,y,100,cellId);
  //    cells[cellId]=nextCell;
  //    cellId++;
  //  }
  //}
  //  drawGrid();
  
  gamegrid=new Grid(8,8);
  // test cell
  Cell test=new Cell(new PVector(0,0),1);
  if(test.posInCell(new PVector(50,175)))
  {
    System.out.println("point is in cell"); 
  }
  else
  {
    System.out.println("point is not in cell"); 
  }
}

void draw() // basicly the same as loop()
{
  
  
  background(255);
  // draw the game board 

}

//void drawGrid()
//{
//   for(Cell icell: cells)
//   {
//     // add a cell 
//   }
  
//}