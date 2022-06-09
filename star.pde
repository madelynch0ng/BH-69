 class Star extends GameObject {
  Star() {
    super(random(width), 0, 0,0, random(1,5), #FFFFFF,1);
    vy = size;
  }

  void act() {
    super.act();
    
    if (y > height) {
      lives =0;
    }
  }
}
