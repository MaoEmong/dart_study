// class Dog {
//   String name = "Toto";
//   int age = 13;
//   String color = "white";
//   int thirsty = 100;
// }

// void main() {
//   var d1 = Dog();
//   var d2 = Dog();

//   print("d1의 이름은 ${d1.name}");
//   print("d2의 이름은 ${d2.name}");
// }

class Dog {
  String name;
  int age;
  String color;
  int thirsty;

  Dog(this.name, this.age, this.color, this.thirsty);
}

void main() {
  Dog d1 = Dog("Toto", 13, "white", 100);
  Dog d2 = Dog("Mango", 2, "white", 50);

  print("d1의 이름은 ${d1.name}");
  print("d2의 이름은 ${d2.name}");
}
