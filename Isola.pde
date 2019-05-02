//classe per gli oggetti isola
class Isola {
  PShape isola;
  float x, y;
  
  Isola(float x, float y) {
    
    this.x = x;
    this.y = y;
    
    isola=createShape(ELLIPSE, 0, 0, 400, 250);
    isola.setFill(color(#278737));
  }

  void display() {

    shape (isola, x, y);
  }
}
