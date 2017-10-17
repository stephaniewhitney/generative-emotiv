//parent class for dot objects
class Emitter{

    Dot p1;
    Dot p2;
    int drawRate=6;
    int timeLeft=4;

    Emitter(){

        timeLeft= timeLeft * fr;
        println(timeLeft);
        p1 = new Dot(600,400,random(9));
        p2 = new Dot(600,400,random(15));
    }

    void update(){
        if (frameCount % drawRate==0){

            if (p2.overlaps(p1)) {
                stroke(random(255,9),0,0,100);
                line(p1.x,p1.y,p2.x,p2.y);
            }

            p1.display();
            p1.move();
            //p1.top();

            p2.display();
            p2.move();
            //p2.top();

        }
    }

    boolean finished(){
        timeLeft--;
        if(timeLeft < 0){
            return true;
            } else {
                return false;
            }
        }
    }
