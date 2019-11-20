import 'dart:mirrors';

// import 'package:meta/meta.dart';
class Rectangle {
  num left, top, width, height;
  Rectangle(this.left, this.top, this.width, this.height);

  // 定义两个计算产生的属性：right 和 bottom。

  // 定义get的第1种方式
  // num get right => left + width;
  // 定义get的第2种方式
  num get right {
    print('right-get');
    return left + width;
  }

  // 定义set的第1种方式
  // set right(num value) => left = value - width;
  // 定义set的第2种方式
  set right(num value) {
    print('right-set');
    left = value - width;
  }

  num get bottom => top + height;
  set bottom(num value) => top = value - height;
}

//获取对象类型
getTypeName(dynamic obj) {
  return reflect(obj).type.reflectedType.toString();
}

// 不会像js一样，只会执行最后一次的值
forcall() {
  var callbacks = [];
  for (var i = 0; i < 5; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
}

// 命名参数
String printUserInfo(String username, {int age, String sex = '男'}) {
  //行参
  if (age != null) {
    return "姓名:$username---性别:$sex--年龄:$age";
  }
  return "姓名:$username---性别:$sex--年龄保密";
}

// 主函数
main() {
  print(printUserInfo('张三', age: 20, sex: '未知'));
  forcall();
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.right);
  rect.right = 34;
}
