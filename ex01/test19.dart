void main() {
  var list = [1, 2, 3, 4];

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }

  var chobab = ["새우초밥", "광어초밥", "연어초밥"];
  var chobabChange = chobab.map((i) => "간장_" + i);
  print(chobabChange);

  var chobab2 = ["새우초밥", "광어초밥", "연어초밥"];
  var chobabChange2 = chobab2.where((i) => i != "광어초밥");
  print(chobabChange2);
}
