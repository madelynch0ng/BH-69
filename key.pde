void keyPressed() {
  if (keyCode == RIGHT) rightkey = true;
  if (keyCode == LEFT) leftkey= true;
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey= true;
  if (key == ' ')  space = true;
  if (mode == INTRO) introClicks();
  if (mode == GAME) gameClicks();
  if (mode == GAMEOVER) gameoverClicks();
  if (mode == PAUSE) pauseClicks();
}

void keyReleased () {
  if (keyCode == RIGHT) rightkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (key == ' ')    space = false;
}
