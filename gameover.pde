PImage gameoverbackground;


void gameover() {
  gameoverbackground = loadImage("2.jpg");
  image(gameoverbackground, 0,0,800,800);
  
   fill(p2);
  textSize(50); 
  rect( 550, 400, 200, 100, 20);
  fill(255);
  text("Quit", 600, 450);

  //return home
  fill(p2);
  rect(550, 520, 200, 50, 20);
  fill(p3);
  textSize(40);
  text("home", 580, 535);
  textSize(60);
  
}

void gameoverClicks() {
   if (mouseX > 500 && mouseX< 750 && mouseY > 400 && mouseY < 500) {
    exit();
  }
  if (mouseX > 550 && mouseX<750 && mouseY > 520 && mouseY < 570) {
    mode=INTRO;
    setup();
  }
}
