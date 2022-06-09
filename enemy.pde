class EnemyA extends GameObject {
  int Ecooldown, Ethreshold;

  EnemyA() {
    super(random(width), -20, 0, 3, 40, yellow2, 1);
    Ecooldown = 30;
    Ethreshold = Ecooldown;
  }

  void act() {
    super.act();

    // managing guns
    Ecooldown++;
    if ( Ecooldown>= Ethreshold) {
      //shoot
      objects.add(new EnemyBullet(x, y, 0, 10));
      objects.add(new EnemyBullet(x, y, 10, 0));
      objects.add(new EnemyBullet(x, y, 0, -10));
      objects.add(new EnemyBullet(x, y, -10, 0));
      Ecooldown = 0;
    }


    //collisions
    int i = 0;
    while (i < objects.size()) {
      GameObject obj = objects.get(i); 
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--;
        }
      }
      i++;
    }

    if (lives==0) {
      class Particles extends GameObject {
        //enemy explosion
        Particles(float x, float y, float vx, float vy) {
          super(x, y, random(1,5), random(1,10), 10, p3, 1);

          objects.add(new Particle(x, y, 10));
          objects.add(new Particle(x, y, 5));
          objects.add(new Particle(x, y, 3));
        }
 
      }
             if (offScreen()) lives = 0;
    }
  }
}
