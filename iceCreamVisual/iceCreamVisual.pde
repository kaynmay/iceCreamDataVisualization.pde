// create variables for cones
ice[] cones;
buttons button;
int x, y;
int w = 150;
int h = 200;
float s, t, p;


// create arrays to hold data
float[] temp, cons, price;

// change the way the cones look depending on data
void arrange(int start){
  cones = new ice[10];
  x = 20;
  y = 30;
  for (int i = 0; i < 10; i++){
    s = cons[start] * 3;
    t = temp[start];
    p = price[start];
    if (i == 5){
     y = 290;
     x = 20;
    }
    cones[i] = new ice(x, y, w, h, s, t, p);
    x += w + 25;
    start++;
  }
}

void setup(){
  // setup the screen
  size(900,650);
  background(255);
  button = new buttons();
  
  // transfer data to arrays
  temp = new float[30];
  cons = new float[30];
  price = new float[30];
  int i = 0;
  Table table = loadTable("iceCreamData.csv", "header");
  for (TableRow row : table.rows()) {
    float t = row.getFloat("temp");
    float c = row.getFloat("cons");
    float p = row.getFloat("price");
    temp[i] = t;
    cons[i] = c;
    price[i] = p;
    i += 1;
  }
  arrange(0);
}

// show different temp ranges when buttons are pressed
void mousePressed(){
  if (mouseX > button.x1 && mouseX < button.x1 + button.w
  && mouseY > button.y && mouseY < button.y + button.h){
    background(255);
    arrange(0);
  }
  if (mouseX > button.x2 && mouseX < button.x2 + button.w
  && mouseY > button.y && mouseY < button.y + button.h){
    background(255);
    arrange(10);
  }
  if (mouseX > button.x3 && mouseX < button.x3 + button.w
  && mouseY > button.y && mouseY < button.y + button.h){
    background(255);
    arrange(20);
  }
}

// show the visualization
void draw(){
  for (int i = 0; i < 10; i++){
    cones[i].display();
  }
  button.hover();
  button.display();
}