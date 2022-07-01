// ignore_for_file: prefer_const_constructors

import 'dart:io';

void main() {
  showData();
}

void showData() {
  startTask();
  fetchData(accessData());
}

void startTask() {
  String info1 = '요청수행 시작';
  print(info1);
}

String accessData() {
  String account = '';
  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 3) {
    //sleep(time);
    Future.delayed(time, () {
      account = '8,500만원';
      print(account);
    });
  } else {
    String info2 = '데이터를 가져왔습니다';
    print(info2);
  }

  return account;
}

void fetchData(String account) {
  String info3 = '잔액은 $account 입니다';
  print(info3);
}
