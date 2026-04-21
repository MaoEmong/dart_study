// 데코레이트된 클릭 : 사운드 효과 + 사용자 콜백을 한번에 실행

abstract class Effect {
  Effect? decorator;

  Effect(this.decorator);

  void effect();
}

class SoundEffect extends Effect {
  SoundEffect(Effect? deco) : super(deco);

  void effect() {
    decorator?.effect();
    print("🕜 [오디오 출력] ~~ 띠링");
  }
}

class AlarmEffect extends Effect {
  AlarmEffect(Effect? deco) : super(deco);

  void effect() {
    decorator?.effect();
    print("로그아웃");
    print("앱꺼짐");
  }
}

class Button {
  String text; // 시그니처
  String color;
  int width;
  int height;
  int radius;
  Function? onPressed;

  void onClick() {
    onPressed?.call();
  }

  Button(
    this.text, {
    required this.color,
    this.width = 100,
    this.height = 50,
    this.radius = 0,
    this.onPressed,
  });

  Button.circle(
    this.text, {
    required this.color,
    required int size,
    this.onPressed,
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
  var btn = new Button(
    "종료",
    color: "red",
    onPressed: () => AlarmEffect(SoundEffect(null)).effect(),
  );

  btn.onClick();
}
