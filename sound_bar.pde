public class SoundBar{
  private int x;
  private int y;
  private float blen;
  private int duration;
  
  public SoundBar(float blen){
    this.x = 0;
    this.y = 650;
    this.blen = blen;
  }
  
  public void play(){
    this.blen = (this.blen / duration);
  }
  
  public void draw(){
    fill(255);
    rect(this.x, this.y,800,50);
  }
  
}
