import java.util.*;

ArrayList<Cell> cells=new ArrayList<Cell>();


void setup() // called once 
{
  size(800,800); 
  int cellId=0;
  //for(int i=0;i<64;i++)
  //{
  //  x=(i%8)*100;
  //  y=(x*8)+i;
  //  System.out.println("x: "+x+" Y: "+y);
  // }
  
  for(int x=0;x<width;x+=100)
  {
    for(int y=0;y<height;y+=100)
    {
      Cell nextCell=new Cell(x,y,100,cellId);
      cells.add(nextCell);
      cellId++;
    }
  }
    drawGrid();
}

void draw() // basicly the same as loop()
{
  Cell test=new Cell(1,1);
  
  background(255);
  // draw the game board 

}

void drawGrid()
{
   for(Cell icell: cells)
   {
     
   }
  
  //for(int y=0;y<width;y+=100)
  //{
  //  line(0,y,width,y); 
  //}
  //for(int x=0;x<height;x+=100)
  //{
  //  line(x,0,x,height); 
  //}
}
