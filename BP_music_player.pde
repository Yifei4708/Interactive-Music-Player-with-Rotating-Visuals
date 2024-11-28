float angle = 0;
boolean spin = true;
PImage img;
PImage img2;
import processing.sound.*;
SoundFile file;
boolean play = true;
int K = 0;
SoundBar bar;
int bx = 0;
float bspeed;

void setup(){
  size(700,700);
  frameRate(40);
  img = loadImage("CD.png");
  img2 = loadImage("BP.JPG");
  file = new SoundFile(this, "BP.mp3");
  bar = new SoundBar(800);
  bar.play();
  bspeed = 1.0 * width / file.duration() / frameRate;
}

void draw(){
  background(0);
  bar.draw();
  noStroke();
  fill(250,180,200);
  ellipse(bx, 675, 50,50);
  translate(width/2,height/2);
  rotate(angle);
  image(img2, -img2.width/2, -img2.height/2);
  image(img, -img.width/2, -img.height/2);
  if (K == 1){
    angle += .01;
    bx += bspeed;
  }
}

void mouseClicked(){
  
  if (mouseY > 650){
    file.jump( mouseX / 700.0 * file.duration());
    bx = mouseX;
  } else{
      if (spin){
      spin = false;
      K = 0;
      play = false;
      file.pause();
    }else{
      spin = true;
      K = 1;
      play = true;
      file.play();
  }
  }
}
