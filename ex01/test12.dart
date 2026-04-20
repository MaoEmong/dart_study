class Burger {
  Burger() {
    // 부모 생성자
    print("버거");
  }
}

class CheeseBurger extends Burger {
  CheeseBurger() {
    // 자식 생성자
    print("치즈버거");
  }
}

void main() {
  CheeseBurger cb = CheeseBurger();
  // CheeseBurger는 다형성을 가집니다. Burger이기도 하고 CheeseBurger이기도 합니다
  // Burger cb2 = CheeseBurger(); 해당 코드도 가능합니다
}
