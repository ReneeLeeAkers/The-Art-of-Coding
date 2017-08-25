/*------------------------------------------------- 
 LadyBird Pulsating Cirlces :
 */

float circlesize;
float increment;
int max_size;

/*------------------------------------------------- 
 Following The Ladybird :
  */

int size = 60;
int[] x = new int[size];
int[] y = new int[size];
int mouse = 5;

 
//-------------------------------------------------
//LadyBird Images :

PImage[] images = new PImage[2];
int imageIndex = 0;

//-------------------------------------------------
void setup() {
  size(1000,1000);

  circlesize = 50;
  max_size = 100;
  increment = 1.5;
  
    images [0]  = loadImage("a.png");
    images [1] = loadImage ("c.png");
}

//-------------------------------------------------
// Following The LadyBird :
 
void update() {
  circlesize += increment;

  if ((circlesize >= max_size) || (circlesize <= 0)) {
    increment *= -1;
  }
}

/*------------------------------------------------- 
 LadyBird Pulsating Cirlces :
 */

void drawCircles(int rows, int columns) {
  for (int a = 0; a < columns; a++) {
    for (int b = 0; b < rows; b++) {
      fill(200,30,56);
      ellipse(a*(max_size*2), b*(max_size*2), circlesize, circlesize);
    }
  }
}

//-------------------------------------------------
void draw() {
background(112, 128, 144); 
update();
drawCircles(194,56);

  fill(6);
  strokeWeight(5);
  x[mouse] = mouseX;
  y[mouse] = mouseY;
  mouse = (mouse + 2) % size;
  
  for (int i = 0; i < size; i++) {
   
    int pos = (mouse + i) % size;
    float radius = (size-i) / 2.0;
    ellipse(x[pos], y[pos], radius, radius);
  }
  
  imageMode(CENTER);
  image(images[imageIndex],width/2,height/2);
}

//----------------------------
void keyPressed() {
  if (key == 'a') imageIndex = 0;
  if (key == 'b') imageIndex = 1;
  
}
    
  



 