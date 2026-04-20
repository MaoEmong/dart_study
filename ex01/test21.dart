class Animal {
  final String name;
  const Animal(this.name);
}

void main() {
  // 생성자 인수의 값이 동일하기 때문에 객체를 재사용
  var a1 = const Animal("사자");
  var a2 = const Animal("사자");

  // 생성자 인수의 값이 다르기 때문에 새로운 객체 생성
  var a3 = const Animal("기린");

  print(a1.hashCode);
  print(a2.hashCode);
  print(a3.hashCode);
}
