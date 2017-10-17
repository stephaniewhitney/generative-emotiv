class Dot {
    float x, y;
    float r;

    Dot(float x_, float y_, float r_) {
        x = x_;
        y = y_;
        r = r_;
    }
    void move(){
        y=y+random(-30,30);
        x= x + random(-30,30);
    }

    void display() {
        noStroke();
        fill(0,random(255,100),random(255,1),100);
        ellipse(x, y, r*2, r*2);
    }

    void top(){
        if(y < width/10){
            y= height/10;
        }
    }

    boolean overlaps(Dot other) {
        float d = dist(x, y, other.x, other.y);

        if (d < (r + other.r)*10) {
            return true;
        } else {
            return false;
        }
    }
}
