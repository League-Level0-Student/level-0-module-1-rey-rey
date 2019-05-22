int _count =0;

void setup() {
    size(500, 500);
}

void draw() {
println( _count++ );
    //background(200, 200, 200);  //repaints background, refreshes
    noStroke();
    fill( 255, 0, 0 ); // red
    ellipse(150, 200, 150, 150);
    ellipse(212, 200, 150, 150);
    fill( 0, 255, 0 ); // lime
    rect(176, 103, 12, 32);
  
    if (mousePressed) 
    {
       bite();
    }
    
    stroke(0);
  line(mouseX-66, mouseY, mouseX+66, mouseY);
  line(mouseX, mouseY-66, mouseX, mouseY+66); 

    
}

void bite()
{   
    fill(200, 200, 200);
    ellipse(150-75, 200, 50, 50);
    ellipseMode(CENTER);
}
