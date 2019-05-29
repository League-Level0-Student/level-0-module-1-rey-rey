import ddf.minim.*;     //at the top of the sketch
Minim minim;     //at the top of the sketch
AudioPlayer sound;    //at the top of the sketch




int pizzaWidth = 250;
int pizzaHeight = 250;
int centerX = 200;
int centerY = 300;


void setupPizzaBox()
{  
  PImage pizzaBox = loadImage("box.jpg");     //in setup method
  pizzaBox.resize(400, 600);      //to match your canvas size
  background(pizzaBox);       //in setup method
}

void setupBoing()
{
  minim = new Minim(this);      //in the setup method
  sound = minim.loadFile("boing.wav");      //in the setup method
}

void setupPizzaBase()
{
  fill(#D3BC8B);
  ellipse(centerX, centerY, pizzaWidth, pizzaHeight);
}

void setupPizzaSauce()
{
  fill(#E50C2C);
  ellipse(centerX, centerY, pizzaWidth-25, pizzaHeight-25);
}

void setupPizzaCheese()
{
  fill(#F4F502);
  ellipse(centerX, centerY, pizzaWidth-100, pizzaHeight-100);
}

void loadPepperoni()
{
  PImage pepperoni = loadImage("pepperoni.jpg");
  pepperoni.resize( 10, 10);
  image(pepperoni, centerX, centerY);
  
}

void mousePressed()
{
  // introducing another way to draw...
  PImage bell = loadImage("bell-pepper.jpg");
  bell.resize( 10, 10);
  image(bell, mouseX, mouseY);
  
  sound.play();
  sound.rewind();
}


void setup()
{
  size(400,600);

  setupPizzaBox();
  setupPizzaBase();
  setupPizzaSauce();
  setupPizzaCheese();
  setupBoing();
}

void draw()
{
  loadPepperoni();
}
