import 'dart:mirrors';

// import 'package:meta/meta.dart';
class Rectangle {
  num left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);
  // 定义两个计算产生的属性：right 和 bottom。
  // num get right => left + width;
  num get right{
    print('right');
    return left + width;
  }
  set right(num value) => left = value - width;
  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

main() {
  getTypeName(dynamic obj) {
    return reflect(obj).type.reflectedType.toString();
  }

  String printUserInfo(String username,
      {int age, /* @required  */ String sex = '男'}) {
    //行参
    if (age != null) {
      return "姓名:$username---性别:$sex--年龄:$age";
    }
    return "姓名:$username---性别:$sex--年龄保密";
  }

  print(printUserInfo('张三', age: 20, sex: '未知'));
  var callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());

  var rect = Rectangle(3, 4, 20, 15);
  // assert(rect.left == 3);
  print(rect.right);
  // assert(rect.left == -8);
}