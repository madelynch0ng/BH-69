PImage starrynight;

void intro() {

   starrynight= loadImage("starrynight.jpg");
   image(starrynight,0,0,800,800);
   textSize(100);
   text("BUllET HELL",100,300);
   textSize(50);
   text("Tap To Start",250,700);
}

void introClicks() {
  mode = GAME;
}
