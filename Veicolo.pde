//classe per gli oggetti nave
class Veicolo {
  PShape veicolo;
  float x, y;
  float velocita /*= 5*/;
  
  Veicolo(int w, int h, float x, float y) {
    
    this.x = x;
    this.y = y;
    
    veicolo=createShape(RECT, 0, 0, w, h);
    veicolo.setFill(color(86, 26, 0));
  }

  void display() {
    
    shape(veicolo, x, y);
  }
  
  void muoviti (Personaggio guidatore /*float velocita*/){
   
    guidatore.y-=velocita;
    y-=velocita;
  }
  
}

//![Screenshot cappucceto rosso](Catture.PNG)
