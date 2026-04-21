// 선택적 매개변수, 시그니처, 객체복사(copy with), 이름이 있는 생성자, requried, mixin

mixin class SoundEffect {
  void alarm() {
    print("🕜 [오디오 출력] ~~ 띠링");
  }
}

class Button with SoundEffect {
  String text; // 시그니처
  String color;
  int width;
  int height;
  int radius;
  Function? onClick;

  void press() {
    if (color == "red") {
      alarm();
    }
    onClick?.call();
  }

  Button(
    this.text, {
    required this.color,
    this.width = 100,
    this.height = 50,
    this.radius = 0,
    this.onClick,
  });

  Button.circle(
    this.text, {
    required this.color,
    required int size,
    this.onClick,
  }) : this.width = size,
       this.height = size,
       this.radius = size ~/ 2;

  void setColor(String color) {
    this.color = color;
  }

  void setShape({int? width, int? height, int? radius}) {
    this.width = width ?? this.width;
    this.height = height ?? this.height;
    this.radius = radius ?? this.radius;
  }
}

void main() {
  Button btn1 = new Button("로그인", color: "red");
  Button btn2 = Button(
    "프로필",
    color: "white",
    width: 120,
    height: 120,
    radius: 60,
  );
  var circleBtn = Button.circle("아바타", color: "yellow", size: 200);

  Button btn3 = new Button(
    "로그아웃",
    color: "red",
    onClick: () {
      print("로그아웃");
      print("앱꺼짐");
    },
  );

  btn3.press();
}
