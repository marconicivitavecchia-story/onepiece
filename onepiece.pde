PShape rufy;
PShape nave;
PShape raftel;

int rufyY, naveY;

void setup (){
  fullScreen ();
  
  rufy = createShape (RECT, 0, 0, 100, 100);
  rufy.setFill (#F6FF00);
  
  nave = createShape (RECT, 0, 0, 200, 300);
  nave.setFill (#59330A);
  
  raftel = createShape (ELLIPSE, 0, 0, 400, 250);
  raftel.setFill (#037A17);
  
  rufyY = height - 150;
  naveY = height - 200;
  
}

void draw (){
  
  background (#0370A3);
  
  shape ( nave, width/2, naveY );
  shape ( rufy, width/2 + 50, rufyY  );
  shape ( raftel, width/2 - 75, height/4 );
  

}
