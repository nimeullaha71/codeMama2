class Rectangle {
  int length = 0;
  int width = 0;
  static int objectCount = 0; 

  Rectangle() {
    length = 0;
    width = 0;
    objectCount++; 
  }

  Rectangle.constructor1(int length, int width) {
    this.length = length;
    this.width = width;
    objectCount; 
  }

  Rectangle add(Rectangle r1, Rectangle r2) {
    Rectangle r3 = Rectangle();
    r3.length = r1.length + r2.length;
    r3.width = r1.width + r2.width;
    return r3;
  }

  void display() {
    print("Rectangle Dimensions: ${length} + ${width}i");
  }

  static int getObjectCount() {
    return objectCount;
  }
}

void main() {
  Rectangle r1 = Rectangle.constructor1(5, 5);
  Rectangle r2 = Rectangle.constructor1(6, 7);
  Rectangle r3 = Rectangle();

  r3 = r3.add(r1, r2);
  r3.display();

  print("Number of Rectangle objects created: ${Rectangle.getObjectCount()}");
}
