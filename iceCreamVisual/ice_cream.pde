class ice{
  // load ice cream cones and create variables
  PShape img = loadShape("iceCream.svg");
  PShape img2 = loadShape("iceCream2.svg");
  PShape cherry = loadShape("cherry.svg");
  PShape top6 = loadShape("sprinkles6.svg");
  PShape top7 = loadShape("sprinkles7.svg");
  PShape top8 = loadShape("sprinkles8.svg");
  PShape top9 = loadShape("sprinkles9.svg");
  int x, y, w, h;
  float s, t, p;
  color c2, c3, c4, c5, c6, c7, col;
  
  // create cone depending on the data
  ice(int x_pos, int y_pos, int wid, int hei, float scale, float temp, float price){
    x = x_pos;
    y = y_pos;
    w = wid; 
    h = hei;
    s = scale;
    t = temp;
    p = price;
    
    // scale cone by consumption
    img.translate(img.width/2, img.height/2);
    img.scale(s);
    img.translate(-(img.width/2),-(img.height/2));
    img2.translate(img2.width/2, img2.height/2);
    img2.scale(s);
    img2.translate(-(img2.width/2),-(img2.height/2));
    cherry.translate(img2.width/2, img2.height/2);
    cherry.scale(s);
    cherry.translate(-(img2.width/2),-(img2.height/2));
    top6.translate(img2.width/2, img2.height/2);
    top6.scale(s);
    top6.translate(-(img2.width/2),-(img2.height/2));
    top7.translate(img2.width/2, img2.height/2);
    top7.scale(s);
    top7.translate(-(img2.width/2),-(img2.height/2));
    top8.translate(img2.width/2, img2.height/2);
    top8.scale(s);
    top8.translate(-(img2.width/2),-(img2.height/2));
    top9.translate(img2.width/2, img2.height/2);
    top9.scale(s);
    top9.translate(-(img2.width/2),-(img2.height/2));
    
    // color cone by temp
    if (t < 30){
      col = color(#3691DA);
    }
    if (t >= 30 && temp < 40){
      col = color(#37D8A4);
    }
    if (t >= 40 && temp < 50){
      col = color(#37D840);
    }
    if (t >= 50 && temp < 60){
      col = color(#9CD837);
    }
    if (t >= 60 && temp < 70){
      col = color(#D8AE37);
    }
    if (t >= 70){
      col = color(#D84F37);
    }
  }
  
  // display the cone
  void display(){
    shape(img, x, y, w, h);
    img2.disableStyle();
    fill(col, 150);
    shape(img2, x, y, w, h);
    shape(cherry, x, y, w, h);
    
    // number of toppings depending on price
    if (p < .27){
      shape(top6, x, y, w, h);
    }
    if (p >= .27 && p < .28){
      shape(top7, x, y, w, h);
    }
    if (p >= .28 && p < .29){
      shape(top8, x, y, w, h);
    }
    if (p >= .29){
      shape(top9, x, y, w, h);
    }
  }
}