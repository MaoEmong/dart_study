// class Person {
//   String name;
//   int money;

//   Person(this.name, this.money);
// }

// void main() {
//   var p1 = Person("홍길동", 0);
//   var p2 = Person("임꺽정", 10000);

//   print("${p1.name}의 재산은 ${p1.money}");
//   print("${p2.name}의 재산은 ${p2.money}");
// }

// 선택적 매개변수
class Person {
  String? name;
  int money;
  Person({this.name, this.money = 0});
}

void main() {
  var p1 = Person(name: "홍길동");
  var p2 = Person(name: "임꺽정", money: 10000);
  print("${p1.name}의 재산은 ${p1.money}");
  print("${p2.name}의 재산은 ${p2.money}");
}
