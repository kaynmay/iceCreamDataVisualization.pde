class buttons{
  // create variables needed
  int x1 = 125;
  int x2 = 375;
  int x3 = 625;
  int y = 580;
  int h = 50;
  int w = 150;
  PFont arial = createFont("Arial", 30);

  // create color variables for buttons
  color c1 = color(#3691DA);
  color c2 = color(#B7DD33);
  color c3 = color(#E12F2F);
  color h1 = color(#2E79B4);
  color h2 = color(#96B42A);
  color h3 = color(#B42626);
  color show1 = c1;
  color show2 = c2;
  color show3 = c3;
  
  // change color of button if mouse is over it
  void hover(){
    show1 = c1;
    show2 = c2;
    show3 = c3;
    if (mouseX > x1 && mouseX < x1 + w && mouseY > y && mouseY < y + h){
      show1 = h1;
    }
    if (mouseX > x2 && mouseX < x2 + w && mouseY > y && mouseY < y + h){
      show2 = h2;
    }
    if (mouseX > x3 && mouseX < x3 + w && mouseY > y && mouseY < y + h){
      show3 = h3;
    }
  }

  // display the buttons
  void display(){
    textFont(arial);
    noStroke();
    fill(show1);
    rect(x1, y, w, h, 7);
    fill(show2);
    rect(x2, y, w, h, 7);
    fill(show3);
    rect(x3, y, w, h, 7);
    fill(#000A12);
    text("24° - 40°",x1+18,y+35);
    fill(#101500);
    text("40° - 61°",x2+18,y+35);
    fill(#0F0000);
    text("63° - 72°",x3+18,y+35);
  }
}