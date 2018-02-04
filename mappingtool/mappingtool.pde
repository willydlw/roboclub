import java.util.*;


//ArrayList<Cell> cells=new ArrayList<Cell>();
//Cell[] cells; // all the cells in the array

Grid gamegrid; // lol, tron
Irobot simRobot;

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
  
  gamegrid=new Grid(width,height);
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
  
  gamegrid.printCells();
  // load up a new simulated robot 
  simRobot=new SimulatedRobot(new PVector(120,132));
  simRobot.connect();
}

void draw() // basicly the same as loop()
{
  background(255);
  
  drawGameGrid(gamegrid);
  drawLines();
  drawRobot(simRobot);
  simRobot.update();
  Cell currentCell=gamegrid.getCurrentCell(simRobot); // find the cell the robot is sitting on
  System.out.println(currentCell.id);
}

// function for drawing a game grid to the window
void drawGameGrid(Grid g)
{
  fill(255);
  for(Cell c : g.cells())
  {
    rect(c.getX(),c.getY(),c.getSideLength(),c.getSideLength()); 
  }
}

// draws the robot on the grid
void drawRobot(Irobot robot)
{
  PVector p=robot.getPos();
  fill(0);
  rect(p.x,p.y,50,50);
}

// draws the lines on the game grid 
void drawLines()
{
  line(0,0,width,height);
  line(0,height,width,0);
}