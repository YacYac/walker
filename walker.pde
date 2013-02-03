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
    int direction_x, direction_y;
    
    direction_x = mouseX - x;
    direction_y = mouseY - y;
    
    direction_x = constrain(direction_x,-1,1);
    direction_y = constrain(direction_y,-1,1);
    
    int step_x = int(random(20));
    int step_y = int(random(20));  
    
    float choice = random(100);
    
    if (choice < 50) {
      step_x *= direction_x;
      step_y *= direction_y;
    } else if (choice < 65) {
      step_x *= direction_x;
    } else if (choice < 80) {
      step_y *= direction_y;
    } 

    x += step_x;
    y += step_y;
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
  
  void next_step() {
    prev_x = x;
    prev_y = y;
  }
}
