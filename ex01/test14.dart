// class Burger{
//   final String name;
//   Burger(){

//   }
// }
// class CheeseBurger extends Burger{
//   CheeseBurget(String name){
//     super.name = name;
//   }
// }

// void main(){
//   CheeseBurger cb = CheeseBurger("치즈햄버거");
//   print(cb.name);
// }


// 앞의 코드는 오류가 납니다.
// 그 이유는 final 변수는 반드시 초기화 되어야 하는 변수인데
// CheeseBurger의 생성자가 실행되면 내부의 super.name = name 부분이 먼저 실행되는것이 아니라 부모 Burger 클래스의 생성자가 먼저 실행되게 됩니다
// Dart 컴파일러 입장에서는 final String name의 값이 반드시 초기화 되어야 하는데 생성자가 실행될때 까지 초기화가 되지 않았기 때문에 오류가 나는 것입니다.