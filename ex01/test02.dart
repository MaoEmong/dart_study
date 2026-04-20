void main() {
  var n1 = 1; // 타입 추론(int)
  // n1 = true; << var는 불가능

  print("정수 : ${n1.runtimeType}");
  print("var : ${n1.isOdd}"); // var는 해당 타입의 클래스 안에 있는 모든 필드와 행위를 사용할 수 있다.

  print("=========================");

  dynamic n2 = 1; // 타입 추론(int)
  print("정수 : ${n2.runtimeType}");
  n2 = true; // dynamic은 다른 타입으로 변경 가능
  print("정수 : ${n2.runtimeType}");
  // print("dynamic : ${n2.isOdd}"); // dynamic은 해당 타입의 클래스 안에 있는 모든 필드와 행위를 사용할 수 없다.

  print("=========================");

  final int n3 = 1; // final은 상수를 표기할 때 사용
  final n4 = 1; // 타입 추론(int)
  print("n4 : ${n4.runtimeType}");
  print("n4 : ${n4.isOdd}"); // final은 해당 타입의 클래스 안에 있는 모든 필드와 행위를 사용할 수 있다.
}
