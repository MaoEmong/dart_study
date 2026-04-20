class Burger {
  final String name;
  Burger(this.name);
}

class CheeseBurger extends Burger {
  CheeseBurger(String name) : super(name) {}
}

void main() {
  CheeseBurger cb = CheeseBurger("치즈햄버거");
  print(cb.name);
}
