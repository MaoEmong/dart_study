// record 타입
void main() {
  final user = ("코스", 10);
  print(user.$1);
  print(user.$2);

  (String, int) user2 = ("메타", 20);
  print(user2.$1);
  print(user2.$2);

  ({String name, int age}) user3 = (name: "메타", age: 20);
  print(user3.name);
  print(user3.age);

  // 이걸 많이 씀
  var user4 = (name: "쌀", age: 20);
  print(user4.name);
  print(user4.age);
}
