// extension

extension StringException on String {
  int whatTime() {
    return 50;
  }
}

void main() {
  String username = "ssar";
  print(username.whatTime());
}
