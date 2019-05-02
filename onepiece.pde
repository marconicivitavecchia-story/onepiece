Personaggio rufy;
Veicolo nave;
Isola raftel;

PShape tesoro;
boolean rufyOnIsland = false;
boolean naveFermata = false;


void setup () {
  fullScreen ();

  //creazione di rufy con la sua grandezza
  rufy = new Personaggio(100, 100, #E3DF10, width*.45, height*.85);

  //creazione della nave con la sua grandezza
  nave = new Veicolo(200, 300, width*.42, height*.8);

  //creazione dell'isola raftel
  raftel = new Isola(width*0.5, height*0.25);

  tesoro = createShape ( RECT, 0, 0, 75, 75);
  tesoro.setStrokeWeight (17);
  tesoro.setStroke (#59330A);
  tesoro.setFill (#DCC132);
}

void draw () {
  
  println(width);

  // Scena nave
  if ( rufyOnIsland == false )
  {
    background (#0370A3);

    //visualizzazione della nave
    nave.display();

    //visualizzazione dell'isola raftel
    raftel.display();

    //visualizzazione del personaggio rufy
    rufy.display();

    if ( nave.y <= raftel.y + 125 ){
     
      nave.velocita = 0;
      nave.muoviti ( rufy );
      naveFermata = true;
    }else{
     
      nave.velocita = 5;
      nave.muoviti ( rufy );
    }
    
    if ( naveFermata == true ){
      
      if ( rufy.y >= raftel.y*.5 ){
        
      rufy.y--;
      }
      
      if ( rufy.y <= raftel.y*.5 ){
      
        rufy.y-=0;
        rufyOnIsland = true;
      }
      
    }
  }

  // Scena isola
  if ( rufyOnIsland == true ) {

    background (#037A17);

    if ( rufy.y <= raftel.y*.5 ) {

      rufy.y = height*.85;
    }

    //visualizzazione di rufy nell'isola
    rufy.display();
    shape ( tesoro, width*.51, height*.25 );

    //movimento di rufy nell'isola
    if ( rufy.y <= height*.33 ) {

      rufy.y -= 0;
      tesoro.setFill (#000000);
    } else {

      rufy.y -= 2;
    }
  }
}
