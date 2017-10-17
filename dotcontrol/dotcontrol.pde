ArrayList<Emitter> emitters = new ArrayList<Emitter>();
int fr=60;

// this is a test change
// this is another change
public void setup() {
    size(1200, 800);
    frameRate(fr);
    background(0);
    emitters.add(new Emitter());
}

public void draw() {
    for (int i = emitters.size() - 1; i >= 0; i--) {
        Emitter emitter = emitters.get(i);
        emitter.update();

        if (emitter.finished()) {
            emitters.remove(i);
        }
    }

    //if( emitters.size() <= 0){
    //emitters.add(new Emitter());
    //}
}

public void mousePressed(){
    emitters.add(new Emitter());
}