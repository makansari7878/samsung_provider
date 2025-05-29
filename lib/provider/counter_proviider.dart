import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0); // Initialize with 0

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}

final counterProvider = StateNotifierProvider<CounterNotifier, int>(
      (ref) => CounterNotifier(),
);