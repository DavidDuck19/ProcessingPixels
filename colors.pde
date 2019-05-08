PImage photo;
PrintWriter output;
 int x = 100;
  int y = 100;
  int locationx = 0;
  int locationy = 0; 
void setup(){
  size(100,100);
  photo = loadImage("purple.png");
  output = createWriter("positions.txt");
}

void draw(){
  image(photo, 0, 0);
  while(locationx*locationy < 10000){
    locationx = locationx + 1;
    if(locationx == x){
      locationy++;
      locationx = 0;
    }
    if(locationy == 101){
      println("DONE!!!!!!!!");
       output.flush();
        output.close();
      exit();
    }
    output.println(get(locationx, locationy));
  }
}
