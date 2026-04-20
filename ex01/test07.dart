class Chef {
  String name;
  Chef(this.name);
  void cook() {
    print("요리를 시작합니다.");
  }
}

void main() {
  var c1 = Chef("홍길동")..cook();
  print("요리사 이름은 ${c1.name}");
}
