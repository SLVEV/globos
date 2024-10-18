import ddf.minim.*;

PImage moneda,Escudo,circo;
Minim minim;
AudioSample player;

class Globo
{
  float x, y,vx,vy;
  Globo (float _x, float _y)
  {
   x=_x;
   y=_y; 
   vx=random(-0.25,0.25);
   vy=random(-2,-0.5);
  }

  void update()
  {
    y+=2*vy;
    x+=2*vx;
  }

  void dibujate()
  {
      ellipse(x,y,100,130);
      imageMode(CENTER);
      image(moneda,x,y,90,120);
      line(x,y+100,x,y+130);
  }
  
}

ArrayList<Globo> globos;


void setup()
{
  size(701,480);
  globos = new ArrayList<Globo>();  
  moneda = loadImage("bich.png");
  Escudo = loadImage("Escudo3.png");
  circo = loadImage("circo.jpg");
  image(Escudo,0,0);
  minim = new Minim(this);
  player = minim.loadSample("Suuu.mp3");
}

void draw()
{
  background(circo);
  //background(255,0,0);
  
  for(int i=0;i<globos.size();i++)
  {
    globos.get(i).update();
    globos.get(i).dibujate();
  }
}

void mousePressed()
{
  globos.add(new Globo(mouseX,mouseY));
  player.trigger();
  
  
}
