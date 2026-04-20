class Dog {
  String name = "Toto";
  int age = 13;
  String color = "white";
  int thirsty = 100; // 목마름

  void drinkWater() {
    thirsty -= 50;
  }
}

class Dog2 {
  String name = "Toto";
  int age = 13;
  String color = "white";
  int thirsty = 100; // 목마름

  void drinkWater(Water w) {
    w.drink();
    thirsty -= 50;
  }
}

class Water {
  double liter = 2.0;

  void drink() {
    liter -= 0.5;
  }
}

void main() {
  Dog d1 = Dog();
  print("이름은 ${d1.name}");
  print("나이는 ${d1.age}");
  print("색깔은 ${d1.color}");
  print("목마름 지수는 ${d1.thirsty}");

  print("================");
  d1.thirsty = 50;
  print("갈증 지수는 ${d1.thirsty}");
  print("================");
  d1.thirsty = 100;
  print("갈증 지수는 ${d1.thirsty}");
  d1.drinkWater();
  print("갈증 지수는 ${d1.thirsty}");
  print("================");
  var d2 = Dog2();
  var w2 = Water();
  print("갈증 지수는 ${d2.thirsty}");
  d2.drinkWater(w2);
  print("남은 물의 양 ${w2.liter}");
  print("갈증 지수는 ${d2.thirsty}");
}
