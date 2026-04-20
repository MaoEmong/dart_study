import 'dart:math';

void main() {
  List<int> nums = [1, 2, 3, 4];
  print(nums[0]);
  print(nums[1]);
  print(nums[2]);
  print(nums[3]);

  Map<String, dynamic> user = {"id": 1, "username": "cos"};
  print(user["id"]);
  print(user["username"]);

  Set<int> lotto = {};
  Random r = Random();
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);
  lotto.add(r.nextInt(45) + 1);

  print(lotto);

  List<int> lottoList = lotto.toList();
  lottoList.sort();
  print(lottoList);
}
