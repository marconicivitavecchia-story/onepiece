//classe per gli oggetti personaggio
class Personaggio {

  PShape personaggio;
  float y, x;

  Personaggio( int w, int h, int setColor, float x, float y ) {

    this.x = x;
    this.y = y;
    
    personaggio = createShape(RECT, 0, 0, w, h);
    personaggio.setFill(setColor);
  }

  void display () {

    shape(personaggio, x, y);
  }
}
