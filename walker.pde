Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
  w.next_step();
}

class Walker {
  int prev_x, prev_y;
  int x, y; 
  
  Walker() {
    prev_x = width/2;
    prev_y = height/2;
		x = prev_x;
		y = prev_y;
  }

  void display() {
    stroke(random(150));
    strokeWeight(10);
    line(prev_x,prev_y,x,y);
    next_step();
  }

  void step() {
		int stepx = int(random(-20,20));
		int stepy = int(random(-20,20));    

    x += stepx;
    y += stepy;
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
  
  void next_step() {
    prev_x = x;
    prev_y = y;
  }
}
