---
name: dart-blog-writer
description: Use when this project needs Dart study examples turned into Korean technical-blog notes or Notion pages, especially 기술블로그/Language/9. Dart언어, Flutter-oriented Dart learning content, C#/Java comparison, code explanation, and expected output for important calls.
---

# Dart Blog Writer

## 개요

이 스킬은 이 프로젝트의 Dart 학습 예제를 한글 기술블로그 글감으로 정리할 때 사용한다. `ex01/*.dart`는 책을 보며 작성한 실습 예제로 보고, 예제의 의도를 보존하면서 C#/Java 경험자가 Flutter 학습으로 넘어가기 쉽게 설명한다.

## 핵심 규칙

- 본문은 한글로 작성한다. Dart 키워드, 파일명, 클래스명, 메서드명, API 이름은 영어 원문을 유지한다.
- 서로 다른 주제를 한 페이지에 몰아넣지 않는다. 주제별 Notion 하위 페이지로 나눈다.
- 단순 학습 메모가 아니라 기술블로그 글처럼 읽히게 쓴다.
- 책 기반 예제를 함부로 비평하거나 개선 포인트 섹션을 만들지 않는다.
- 코드 수정은 사용자가 명시적으로 요청한 명백한 오타에만 한정한다.
- 중요한 호출에는 출력 결과를 함께 적는다. 특히 `print(...)`, `runtimeType`, 컬렉션 변환, 객체 상태 변경, 생성자/hash 예제는 결과를 보여준다.
- 실행마다 달라지는 값은 고정값처럼 쓰지 않는다. 출력 형태와 중요한 관계를 설명한다.
- C#/Java 비교는 이해에 도움이 될 때만 넣는다.
- Flutter에서 자주 다시 등장하는 문법은 “Flutter에서 왜 중요한가”를 연결한다.
- 로컬 예제 범위를 넘어서는 기술 주장을 추가할 때는 Dart 공식 문서를 확인한다.

## 페이지 구성

각 주제 페이지는 다음 흐름을 따른다.

1. 독자 상황에서 출발하는 도입부
2. 관련 예제 파일 범위
3. 문법이 아니라 개념 중심 설명
4. 프로젝트 예제를 기반으로 한 코드
5. 중요한 호출의 출력 결과
6. 필요한 경우 C#/Java 비교
7. Flutter와의 연결
8. `핵심 정리` 짧은 bullet

`9. Dart언어` 아래 권장 하위 페이지 구조:

- `1. Dart 시작점과 변수`
- `2. 함수와 람다`
- `3. 클래스와 객체`
- `4. 생성자와 named parameter`
- `5. Null safety`
- `6. 상속과 super`
- `7. 추상 클래스와 implements`
- `8. mixin과 mixin class`
- `9. 컬렉션 List Map Set`
- `10. map where spread와 복사`
- `11. const 생성자와 객체 재사용`

## 출력 결과 작성 예시

호출 결과가 중요한 코드는 결과를 바로 붙인다.

```dart
print(n1.runtimeType);
print(d1.runtimeType);
print(b1.runtimeType);
print(s1.runtimeType);
```

```text
int
double
bool
String
```

객체 상태 변화도 출력으로 보여준다.

```dart
var d1 = Dog();
print(d1.thirsty);
d1.drinkWater();
print(d1.thirsty);
```

```text
100
50
```

실행마다 값이 달라질 수 있는 경우에는 정확한 숫자를 단정하지 않는다.

```dart
print(a1.hashCode);
print(a2.hashCode);
print(a3.hashCode);
```

이 경우 “실제 숫자는 실행 환경에 따라 달라질 수 있다”고 쓰고, 중요한 관계를 보여준다.

```text
123456
123456
789012
```

첫 번째와 두 번째 값이 같은 이유는 같은 `const` 생성자와 같은 인자로 만든 객체가 재사용될 수 있기 때문이다.

## Notion 작업 흐름

1. 대상 Notion 페이지를 먼저 검색하고 fetch한다.
2. 기존 페이지와 내용을 사용자가 명시적으로 요청하지 않는 한 삭제하거나 덮어쓰지 않는다.
3. `9. Dart언어` 아래에 주제별 하위 페이지를 만든다.
4. 사용자가 명시적으로 요청하지 않는 한 전체 내용을 하나의 통합 페이지로 만들지 않는다.
5. 생성 또는 수정 후 다시 fetch해서 하위 페이지와 주요 섹션이 정상적으로 들어갔는지 확인한다.

## 문체 기준

- “Flutter를 배우기 시작하면...”처럼 독자 상황에서 출발한다.
- 어려운 코드를 먼저 던지지 말고, 왜 중요한지 먼저 설명한다.
- 문단은 짧고 스캔 가능하게 유지한다.
- 과장보다 정확한 설명을 우선한다.
- “학습 완료”처럼 끝맺지 않는다. 이 프로젝트의 Dart 학습은 계속 이어진다.

## 피해야 할 실수

| 실수 | 올바른 처리 |
| --- | --- |
| 모든 주제를 한 페이지에 넣기 | 개념별 하위 페이지로 나누기 |
| 코드 조각만 나열하기 | 맥락, 출력, 비교, Flutter 연결을 함께 쓰기 |
| 책 예제를 비평하기 | 예제의 학습 목적을 설명하기 |
| 출력 결과 생략하기 | 중요한 호출 결과를 바로 붙이기 |
| `var`를 dynamic처럼 설명하기 | `var`는 타입 추론이라고 설명하기 |
| `final`을 깊은 불변성으로 설명하기 | 재할당 금지와 내부 변경 가능성을 구분하기 |
| 랜덤/hash 결과를 고정값처럼 쓰기 | 출력 형태와 관계만 예시로 보여주기 |

