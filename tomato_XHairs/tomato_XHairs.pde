int _count =0;
boolean bited = false;

void setup() {
    size(500, 500);
}

void drawApple() {
    // disables outline
    noStroke();
    
    //  start a green fill, and create the Apple Stem
    fill( 0, 255, 0 ); // lime
    rect(176, 103, 12, 32);
}

void drawAppleStem() {
    // disables outline
    noStroke();
    
    // start a red fill
    fill( 255, 0, 0 );
    
    // create 2 parts of the apple
    ellipse(150, 200, 150, 150);
    ellipse(212, 200, 150, 150);
}

void drawXHair()
{
  // set stroke/outline to black
  stroke(0);
  
  // create XHair
  line(mouseX-66, mouseY, mouseX+66, mouseY);
  line(mouseX, mouseY-66, mouseX, mouseY+66);   
}

void biteApple()
{   
    fill(200, 200, 200);
    ellipse(150-75, 200, 50, 50);
    ellipseMode(CENTER);
}
void draw() {
    //  repaint background with same color
    background(200, 200, 200);
    
    drawApple();
    drawAppleStem();  
    if (mousePressed|| bited )
    {
       biteApple();
       bited = true;
    }
    drawXHair();   

    
}
