/*
Person 객체 복사하기
1-A copyWith로 특정 필드만 바꾸기
Person 클래스가 주어졌을 때 원본 객체는 그대로 두고 특정 필드만 변경한 새로운 객체를 반환하는 copywith메서드 구현
 */

class Person {
  final String name;
  final int age;
  final String email;
  final String city;
  Person({
    required this.name,
    required this.age,
    required this.email,
    required this.city,
  });

  // TODO: copyWith 메서드를 구현하세요.
  // 힌트: 각 파라미터를 nullable로 받고, null이면 기존 값을 사용합니다.
  Person copyWith({String? name, int? age, String? email, String? city}) {
    // 여기를 채우세요
    var result = Person(
      name: name ?? this.name,
      age: age ?? this.age,
      email: email ?? this.email,
      city: city ?? this.city,
    );
    return result;
  }

  @override
  String toString() =>
      'Person(name: $name, age: $age, email: $email, city: $city)';
}

void main() {
  final p1 = Person(name: '홍길동', age: 25, email: 'hong@test.com', city: '서울');

  // 요구사항:
  // 1) p1의 age만 30으로 바꾼 p2를 만들기
  // 2) p1의 city를 '부산'으로, email을 'hong@busan.com'으로 바꾼 p3 만들기
  // 3) p1은 원본 그대로여야 함을 print로 확인
  // TODO: 테스트 코드 작성
  final p2 = p1.copyWith(age: 30);
  final p3 = p1.copyWith(city: '부산', email: 'hong@busan.com');

  print(p1);
  print(p2);
  print(p3);
}
