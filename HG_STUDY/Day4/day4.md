# PLAN
  - flutter 강좌. 18강부터 최소 4강좌. 
  - snack bar / build context 이해하기
  
---
  레이아웃 예제 사이트
  [https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e]

---
### Navigator
Navigator는 stack이용
  : 페이지 변환은 pop과 push를 통해서 이뤄진다
  
    주의점 : initialRoute와 home는 같이 사용하면 안된다.  
    routes - Map 구조 <String : WidgetBuilder>

Navigator.push / Navigator.pushNamed. 
