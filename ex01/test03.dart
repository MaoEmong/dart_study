// 1. 함수
int add(int n1, int n2) {
  return n1 + n2;
}

// 2. 익명 함수
/*Function*/
final add2 = (n1, n2) {
  return n1 + n2;
};

// 3. 람다표현식
final add3 = (n1, n2) => n1 + n2;

// 4. 메서드
// 행위를 통해 상태를 변경 시킨다
class Car {
  int x = 0;

  void run() {
    x++;
  }
}

void main() {
  int sum1 = add(1, 2);
  print(sum1);

  int sum2 = add2(3, 5);
  print(sum2);

  int sum3 = add3(5, 8);
  print(sum3);

  var car = Car();
  car.run();
  print(car.x);
}
