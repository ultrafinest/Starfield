Particle[] particle = new Particle[2000];
void setup(){
  background(0);
  size(400, 400);
  for(int i = 0; i < particle.length;i++){
    particle[i] = new Particle();
    particle[0] = new Oddball();
    particle[500] = new Oddball();
    particle[1000] = new Oddball();
    particle[1500] = new Oddball();
    particle[1700] = new Oddball();
  }
}

void draw(){
  background(0);
  for(int i = 0; i < particle.length;i++){
    particle[i].show();
    particle[i].move();
  }
  fill(100);
  ellipse(20, 20, 70, 70);
  ellipse(380, 20, 70, 70);
  ellipse(20, 380, 70, 70);
  ellipse(380, 380, 70, 70);
}

void mouseClicked(){
  background(0);
  for(int i = 0; i < 256; i++){
    background(0, 0, i);
  }
  background(0);
  draw();
}

class Particle
{
  int partcolor;
  double angle;
  double partx;
  double party;
  double speed;
  Particle(){
    partcolor = color((int)(Math.random()*256), 0,(int)(Math.random()*256));
    partx = 200;
    party = 200;
    angle = Math.random()*2*Math.PI;
    speed = Math.random()*10;
  }
  void show(){
    fill(partcolor);
    ellipse((float)partx, (float)party, 3, 3);
  }
  
  void move(){
    partx = partx + (Math.cos(angle) * speed);
    party = party + (Math.sin(angle) * speed);
  }
}

class Oddball extends Particle{
  void OddBallParticle(){
    partcolor = color(200, 0, 0);
    partx = 200;
    party = 200;
    angle = Math.random()*4*Math.PI;
    speed = Math.random()*13;
  }
  void show(){
    fill(partcolor);
    ellipse((float)partx, (float)party, 30, 30);
  }
  
  void move(){
    partx = partx + (Math.cos(angle) * speed);
    party = party + (Math.sin(angle) * speed);
  }
}

