// // 상황 1 - 동물 소리 프로그램 만들기
// class Dog{
//   void sound(){
//     print("멍멍 배고파");
//   }
// }
// class Cat{
//   void sound(){
//     print("야옹 배고파");
//   }
// }
// // 다른 개발자에게 물고기 소리 추가 요청
// class Fish{
//   void hungry(){
//     print("뻐끔뻐끔 배고파");
//   }
// }

// void main(){
//   var d = Dog();
//   var c = Cat();

//   d.sound();
//   c.sound();

//   var f = Fish();
//   f.sound();  // 에러
// }

// 상황2 = 추상화를 통한 코드
abstract class Animal {
  void Sound();
}

class Dog implements Animal {
  void Sound() {
    print("멍멍 배고파");
  }
}

class Cat implements Animal {
  void Sound() {
    print("야옹 배고파");
  }
}

class Fish implements Animal {
  void Sound() {
    print("뻐끔뻐끔 배고파");
  }
}

void start(Animal a) {
  // Animal 추상클래스의 Sound 함수가 오버라이드(무효화)되고
  // 자식의 sound 함수가 실행된다.
  // 이것을 동적 바인딩이라고 한다
  a.Sound();
}

void main() {
  start(Dog());
  start(Cat());
  start(Fish());
}
