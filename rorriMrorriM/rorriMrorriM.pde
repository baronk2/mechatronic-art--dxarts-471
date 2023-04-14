import processing.video.*;

Capture cam;

void setup() {
  size(1773, 999);
  String[] cameras = Capture.list();
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[10]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  //chagnge the camera display size
  image(cam, 0, 0, 1773, 999);
  //delay the image display to emphasize ripple
  //effect in nested screens
  delay(300);
}
