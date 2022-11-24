/*
Created by Axmadjon Isaqov on 15:12:34 24.11.2022
© 2022 @axi_dev 
*/
/*
Theme:::Libraries
*/

import 'dart:convert';
import 'dart:math' as math;
import 'dart:math' show pi, sin, Point;
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import 'consts.dart' hide sin;
import 'model/model.dart';
import 'dart:io' show Platform, File, Directory;
import 'dart:collection';

typedef _lhsS = LinkedHashSet<String>;

void main(List<String> args) {
  print(cos(8));
  print(math.cos(pi / 3));
  print(sin(pi / 2));

  Apple? apple = Apple();
  Fruit? fruit = Fruit();

  platformInfo;

  if (Platform.isMacOS) {
    print("Your operation system is MacOS");
  }

  Point? currentPoint = Point(10, 10);
  print(currentPoint);

  Point? otherPoint = Point(-19, 15);

  print(currentPoint + otherPoint);
  print(currentPoint.x * otherPoint.x);

  print(currentPoint.distanceTo(otherPoint));

  _lhsS lHashSet = _lhsS.of({'A', 'B', 'C', 'D'});

  print(lHashSet);

  lHashSet.add('A');

  print(lHashSet);

  List ltI = List<int>.filled(10, 1);

  String strData = '$ltI';
  print(strData.runtimeType);

  List nList = jsonDecode(strData);
  print(nList);

  final juniorDev = Person(age: 21, name: "Ismoil");
  Map<String, dynamic> dataMap = juniorDev.toJson();
  print('data----------$dataMap      type-----------${dataMap.runtimeType}');
  String dataStr = jsonEncode(dataMap);
  print('data----------$dataStr      type-----------${dataStr.runtimeType}');
  Map<String, dynamic> dataNewMap = jsonDecode(dataStr);
  print(
      'data----------$dataNewMap      type-----------${dataNewMap.runtimeType}');
  print(dataNewMap);

  DateTime dateTime = DateTime(2022, 11, 24);
  DateTime dateTimeNow = DateTime.now();

  print(dateTime);
  print(dateTimeNow);

  DateTime? newTime = DateTime.tryParse('2022-11-24');
  print(newTime);

  print(formatDate(newTime!, [dd, '-', M, '-', yyyy]));

  print(DateFormat.yMMMEd().format(dateTime));

  var id = Uuid().v1();

  print(id);

  final date = DateTime.tryParse('2018-10-10');
  print(DateTime.now().difference(date!).inDays);
}

class Person {
  final String name;
  final int age;
  const Person({required this.age, required this.name});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> dataMap = {"name": name, "age": age};

    return dataMap;
  }
}

get platformInfo {
  print(Platform.operatingSystem);
}
