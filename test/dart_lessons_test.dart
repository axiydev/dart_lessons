import 'package:test/test.dart';

void main() {
  group('yigindi guruhi', () {
    test(' 2 ga 2 ni qoshish', () {
      final javob = 2 + 2;
      expect(javob, 4);
    });

    test('yigindi 2', () {
      final result = 33 + 66;
      expect(result, 99);
    });
  });
}
