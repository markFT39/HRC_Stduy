## Day3

오늘 계획 : 
  >  플러터 강의 최소 4개 -> 최대 6개. _(11강부터시작)_  
  >  만약 시간이 남으면, todoList statelessWidget으로 한번 모양만 짜보기.  
  >  복습(시간 남으면)

---
# Widget 정리

AppBar -

    leading : 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할때

    actions : 복수의 아이콘 버튼 등을 오른쪽에 배치

    onPressed: → 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳 ( no return )

Drawer -

    Scaffold의 argument 중에 하나 / Drawer class 

Listveiw -

    → 복수의 위젯을 나열하는 위젯

    → 리스트의 한줄 한줄을 ListTile widget 


onTap  → gestureDetector / InkWell 

    : action을 감지할 수 있는 기능이 있음
---
## TextButton
기존 Material Buttons → FlatButton , RaisedButton, OutlineButton 더이상 사용 X

대신 → TextButton, ElevatedButton, OutlinedButton이 사용됨
![textButton](https://user-images.githubusercontent.com/94732149/176386585-face180e-76e1-4ab3-8598-ddef5962f619.png)

---
### BulidContext ?

정의 1 :

A handle to the location of a widget in the widget tree

widget tree에서 widget의 위치에 대해서 다루는 



Widget에서 build method가 존재 → 이를 통해서 계층구조를 가짐 

```dart
Widget build(BuildContext context){
	return Widget;
}
```

build method가 Widget를 리턴하는데 

이때, BuildContext 타입의 context의 내용이 인자로 전달된다.

context → Widget Tree상 어디에 위치에 있는지 정보를 담고 있음

정의 2 : 

Each widget has its own BuildContext,

which becomes the parent of the widget returned by the [StatelessWidget.build](http://StatelessWidget.build) or [State.build](http://State.build) function

→ 각 위젯은 자신만의 BuildContext를 가진다

이는, build method에 의해 리턴되는 widget의 부모가 된다.
