/*
Created by Axmadjon Isaqov on 15:30:42 22.11.2022
© 2022 @axi_dev 
*/
/*
Theme:::Typedef
*/

import 'dart:io';

typedef _b = int;
typedef _iL = List<int>;

typedef _s = String;

typedef _ls = List<String>;

void main(List<String> arguments) {
  _b raqam = 67;

  print(raqam);

  _iL butunSonlarListi = <int>[];

  butunSonlarListi.add(34);

  print(butunSonlarListi);

  butunSonlarListi = butunSonlarToplami(10);

  print(butunSonlarListi);

  _ls appleList = [];

  appleList.add('iPhone');
  appleList.add('iWatch');
  appleList.add('iMac');
  appleList.add('iTunes');

  chopEt(appleList);

  chopEt('birinchi usul-----' * 4);
  for (var item in appleList) {
    chopEt(item);
  }
  chopEt('ikkinchi usul-----' * 4);
  for (int i = 0; i < appleList.length; i++) {
    chopEt(appleList[i]);
  }

  func() {
    chopEt('bu funksiya');
  }
}

void chopEt(Object obj) {
  stdout.writeln(obj);
}

_iL butunSonlarToplami(int n) => List<int>.generate(n, (index) => index);
