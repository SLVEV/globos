PImage moneda; 

class Globo
{
  float x, y,vx,vy;
  PImage fondo;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=vy;
    x+=vx;
  }

  void dibujate()
  {
      ellipse(x,y,100,130);
      imageMode(CENTER);
      image(fondo,x,y,90,120);
      line(x,y+100,x,y+130);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(640,480);
  globos = new ArrayList<Globo>();  
  moneda = loadImage("descarga.png");
}

void draw()
{
  background(150,50,40);
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
  globos.add(new moneda(mouseX,mouseY));
  
}
