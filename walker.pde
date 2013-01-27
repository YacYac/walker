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

		if (choice < 115) {
			stepy++;
		} else if (choice >= 115 && choice < 230) {
			stepx--;
			stepy++;
		} else if (choice >= 230 && choice < 345) {
			stepx--;
		} else if (choice >= 345 && choice < 460) {
			stepx--;
			stepy--;
		} else if (choice >= 460 && choice < 575) {
			stepy--;
		} else if (choice >= 575 && choice < 690) {
			stepy--;
			stepx++;
		} else if (choice >= 690 && choice < 805) {
			stepx++;
		} else {
			stepx++;
			stepy++;
		}

		x += stepx;
		y += stepy;
	}
}
