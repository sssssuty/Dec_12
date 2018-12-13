int grid = 20; 
int speed = 10;
boolean dead = true;
Snake snake;
Apple ap;

void setup() {
  size(500, 500);
  snake = new Snake();
  ap = new Apple();
}

void draw() {
  background(0);
  fill(255);
  
  if (!dead) {
    if (frameCount % speed == 0) {
      snake.update();
    }
    snake.display();
    snake.eat();
    ap.display();
    textAlign(LEFT);
    textSize(30);
    fill(255);
    text(snake.len, 10, 20);
  } else {
    restart();
  } 
}

void restart(){
    textSize(25);
    textAlign(CENTER);
    text("Click to start\nDon't go out the border", width/2, height/2);
}

void mousePressed() {
  if (dead) {
    snake = new Snake();
    ap = new Apple();
    speed = 10;
    dead = false;
  }
}
