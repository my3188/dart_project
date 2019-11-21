import 'dart:math';

class Point {
  num x;
  num y;
  num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = (x * x + y * y);
        // distanceFromOrigin = sqrt(x * x + y * y);

  // 第1种初始化初始化实例变量
  /* Point.init(x,y):x=x,y=4{
    print('Point.init');
  } */

  // 第2种初始化初始化实例变量
  Point.init(x,y){
    this.x=x;
    this.y=y;
    print('Point.init');
  }
}

class Expoint extends Point {
  Expoint();
}  
main() {
  var p = new Point(2, 3);
  print(p.distanceFromOrigin);

  var p1 = Point.init(21, 31);
  print(p1.x);
  print(p1.y);
  print(p1.distanceFromOrigin);
}