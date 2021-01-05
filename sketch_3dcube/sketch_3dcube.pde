float rotx, roty; 

void setup() {
  size(800, 800, P3D);
  rotx = radians(45); 
  roty = radians(45); 
}

void draw() {
  background(255); 
  
  translate(width/2, height/2, 0); 
  
  rotateX(rotx); 
  rotateY(roty); 
  noFill(); 
  strokeWeight(3);
  sphere(300);
  cube(width/2+100, height/2+100, 0, color(255, 204, 0), 100); 
  cube(width/2-100, height/2-100, 0, color(65), 100); 
}

void mouseDragged() {
  rotx = rotx + (pmouseY-mouseY) * .01; 
  roty = roty + (pmouseX - mouseX) * -.01; 
}

void cube(float posX, float posY, float posZ, color Color, float size) {
  pushMatrix(); 
  translate(posX, posY, posZ); 
  noFill();
  rotateX(rotx); 
  rotateY(roty); 
  //rotateZ(); 
  fill(Color);
  box(size, size, size);
  popMatrix(); 
}
