Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    point(x,y);
  }

  void step() {
    int choice = int(random(1000));
    int stepx = 0; int stepy = 0;

    if (choice < 125) {
      stepy++;
    } else if (choice >= 125 && choice < 250) {
      stepx--;
      stepy++;
    } else if (choice >= 250 && choice < 375) {
      stepx--;
    } else if (choice >= 375 && choice < 500) {
      stepx--;
      stepy--;
    } else if (choice >= 500 && choice < 625) {
      stepy--;
    } else if (choice >= 625 && choice < 750) {
      stepy--;
      stepx++;
    } else if (choice >= 750 && choice < 875) {
      stepx++;
    } else {
      stepx++;
      stepy++;
    }

    x += stepx;
    y += stepy;
  }
}
