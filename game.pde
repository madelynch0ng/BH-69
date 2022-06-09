void game() {
  fill(dblue, 110);
  noStroke();
  rect(width/2, height/2, width, height);
  addObjects();
  gameEngine();
  debug();
  
  
  //pause button
  noStroke();
  fill(0);
  circle(750, 60, 60);
  textSize(40);
  fill(255);
  text("ll", 738, 75);
}


void addObjects() {
  objects.add(0, new Star());

  if (frameCount% 200 ==0 ) objects.add(new EnemyA());
    if (frameCount% 60 ==0 ) objects.add(new EnemyB());
    
    if (frameCount% 60 ==0 ) objects.add(new EnemyC());
}

void gameEngine() {
  int i = 0;
  while (i < objects.size()) {
    GameObject o = objects.get(i);
    o.act();
    o.show();
    if (o.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }
}

void debug() {
  text(frameRate, 10, 10);
  text( objects.size(), 10, 30);
}
void gameClicks() {
  if (mouseX > 720 && mouseX < 780 && mouseY > 30 && mouseY < 90) {
    mode = PAUSE;
  }
}
