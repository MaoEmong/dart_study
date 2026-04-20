void main() {
  // 컬렉션 복사
  var list = [1, 2, 3];
  var newlist = [...list];

  newlist[0] = 500;
  print(list);
  print(newlist);

  // Map 복사
  // 잘못된 코드
  // var list2 = [
  //   {"id": 1},
  //   {"id": 2},
  // ];
  // var newlist2 = [...list2];

  // newlist2[0]["id"] = 500;
  // print(list2);
  // print(newlist2);

  // print(list2.hashCode);
  // print(newlist2.hashCode);

  // 올바른 코드
  var list2 = [
    {"id": 1},
    {"id": 2},
  ];
  var newlist2 = list2.map((i) => {...i}).toList();

  newlist2[0]["id"] = 500;
  print(list2);
  print(newlist2);

  print(list2.hashCode);
  print(newlist2.hashCode);

  // 컬렉션 데이터 추가
  var list3 = [1, 2, 3];
  var newlist3 = [...list, 4];

  print(list3);
  print(newlist3);

  // 컬렉션 데이터 수정

  // // 잘못된 코드
  // var users = [
  //   {"id": 1, "username": "cos", "password": 1234},
  //   {"id": 2, "username": "ssar", "password": 5678},
  // ];

  // // id : 2번의 username을 love로 변경
  // var newUser = users
  //     .map(
  //       (user) => user["id"] == 2
  //           ? {"id": 2, "username": "love", "password": 5678}
  //           : user,
  //     )
  //     .toList();

  // print(users);
  // print(newUser);

  // 올바른 코드
  var users = [
    {"id": 1, "username": "cos", "password": 1234},
    {"id": 2, "username": "ssar", "password": 5678},
  ];
  // id : 2번의 username을 love로 변경
  var newUser = users
      .map((user) => user["id"] == 2 ? {...user, "username": "love"} : user)
      .toList();
  print(users);
  print(newUser);
}
