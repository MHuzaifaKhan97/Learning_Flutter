import 'package:flutter_test/flutter_test.dart';
import 'package:testcases_flutter/counter.dart';

void main() {
  group("Counter Test Cases", () {
    test('value should start with 0', () {
      expect(Counter().counter, 0);
    });
    test('value should be incremented', () {
      final counter = Counter();
      counter.increment();

      expect(counter.counter, 1);
    });
    test('value should be decremented', () {
      final counter = Counter();
      counter.decrement();

      expect(counter.counter, -1);
    });
  });
}
