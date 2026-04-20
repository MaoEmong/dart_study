// mixin Engine {
//   int power = 5000;
// }
// mixin Wheel {
//   String wheelName = "4륜 구동 바퀴";
// }

// class BMW with Engine, Wheel {}

// void main() {
//   var bmw = BMW();
//   print(bmw.power);
//   print(bmw.wheelName);
// }

// 해당 Mixin은 인스턴스 되지 않음
// void main(){
//   BMW b = BMW();
//   Engine e = Engine(); // 인스턴스 될 수 없음
//   print(b.power);
//   print(b.wheelName);
// }

// 인스턴스가 가능한 클래스
mixin class Engine {
  int power = 5000;
}

mixin class Wheel {
  String wheelName = "4륜 구동 바퀴";
}

class BMW with Engine, Wheel {}

void main() {
  var b = BMW();
  Engine e = Engine();
  print(e.power);
  print(b.wheelName);
}
