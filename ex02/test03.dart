/*
1-B. DTO를 이용해서 통으로 바꾸는 객체 복사
2026-04-21
PersonDto를 받아서 Person 객체를 통째로 새로 만드는 방식으로 구현하세요. (서버에서 받은 DTO를 도메인
객체로 변환하거나, 도메인 객체를 DTO로 내보내는 상황을 상정)
 */

class PersonDto {
  final String name;
  final int age;
  final String email;
  final String city;
  PersonDto({
    required this.name,
    required this.age,
    required this.email,
    required this.city,
  });
  // TODO: JSON(Map) → DTO 변환
  factory PersonDto.fromJson(Map<String, dynamic> json) {
    // 여기를 채우세요
    var dto = PersonDto(
      name: json["name"],
      age: json["age"],
      email: json["email"],
      city: json["city"],
    );
    return dto;
  }
  // TODO: DTO → JSON(Map) 변환
  Map<String, dynamic> toJson() {
    // 여기를 채우세요
    var json = {
      "name": this.name,
      "age": this.age,
      "email": this.email,
      "city": this.city,
    };
    return json;
  }
}

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

  // TODO: DTO → Person (도메인 객체) 변환
  factory Person.fromDto(PersonDto dto) {
    // 여기를 채우세요
    var person = Person(
      name: dto.name,
      age: dto.age,
      email: dto.email,
      city: dto.city,
    );
    return person;
  }
  // TODO: Person → DTO 변환
  PersonDto toDto() {
    // 여기를 채우세요
    var dto = PersonDto(
      name: this.name,
      age: this.age,
      email: this.email,
      city: this.city,
    );
    return dto;
  }

  @override
  String toString() =>
      'Person(name: $name, age: $age, email: $email, city: $city)';
}

void main() {
  // 요구사항:
  // 1) 아래 json을 받아 PersonDto로 만들고, 이를 Person으로 변환하기
  // 2) 변환된 Person을 다시 DTO로, 그리고 JSON으로 되돌려 출력하기
  final json = {
    'name': '김영희',
    'age': 28,
    'email': 'kim@test.com',
    'city': '대전',
  };
  // TODO: 테스트 코드 작성
  var dto = PersonDto.fromJson(json);
  var person = Person.fromDto(dto);
  print(person.toString());
  var dto2 = person.toDto();
  var json2 = dto2.toJson();
  print(json2);
}
