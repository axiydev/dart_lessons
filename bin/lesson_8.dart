import 'dart:math';

typedef _lType<T> = List<T>;

typedef CompareFunc = int Function(int, int);

typedef TrigFunction = num Function(num);

int multiply(int a, int b) {
  return a * b * 1000;
}

int daraja(int a, int b) {
  return pow(a, b) as int;
}

num cosinus(num rad) => cos(rad);

num sinus(num rad) => sin(rad);

void calculate(num rad, TrigFunction function) {
  print(function(rad));
}

void main(List<String> args) {
  var s = 34;
  int? son;
  print(son);
  son = 34;

  var lt = [34, 'flutter g4', true];

  List<int> butunList = <int>[
    34,
    56,
    78,
    89,
  ];

  _lType<int> butunList2 = butunList;

  _lType<String> strList = ['pdp', 'academy'];

  addMyData<num>(45, 5.0);

  addMyData<String>('Salom', ' pdp');

  addMyData<List>([23, 56, 78], ['Salom', ' pdp']);

  CompareFunc mFunctions;
  mFunctions = multiply;

  print(mFunctions(2, 3));

  mFunctions = daraja;

  print(mFunctions(2, 3));

  calculate(pi / 6, sinus);

  calculate(pi / 3, cosinus);
}

void addMyData<T extends dynamic>(T a, T b) {
  print(a + b);
}
