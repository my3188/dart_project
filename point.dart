import 'dart:math';

class Point {
  num x;
  num y;
  num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = (x * x + y * y) {
          print('--Point init 默认');
        }
  // distanceFromOrigin = sqrt(x * x + y * y);

  // 第1种初始化初始化实例变量
  /* Point.init(x,y):x=x,y=4{
    print('Point.init');
  } */

  // 第2种初始化初始化实例变量
  Point.init(x, y) {
    this.x = x;
    this.y = y;
    print('--Point init 自定义');
  }
}

class Expoint extends Point {
  num x,y,z;
  // 第一种方式
  Expoint(this.x,this.y,this.z) : super(x, y) {
    print('--Expoint init 默认');
  }
  // 第二种方式
  /* Expoint(x,y,z) : super(x, y) {
    this.x =x;
    this.y = y;
    this.z = z;
    print('--Expoint init 默认');
  } */
  // 第三种方式
  /* Expoint(x,y,z):x=x,y=y,z=z:super(x,y) {
    print('--Expoint init 默认');
  } */
}

main() {
  /* var p = new Point(2, 3);
  print(p.distanceFromOrigin);

  var p1 = Point.init(21, 31);
  print(p1.x);
  print(p1.y);
  print(p1.distanceFromOrigin); */

  var expoint = Expoint(4,5,6);
  print('expoint.z=${expoint.z}');
}
