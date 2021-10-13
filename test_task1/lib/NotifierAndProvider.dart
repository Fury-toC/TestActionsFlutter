import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



abstract class RemainingTime {

  String getTime();
}

class TimeGetter implements RemainingTime {

  @override
  String getTime() {
    DateTime rawDate_ = DateTime.now();
    return "осталось ${60 - rawDate_.minute}ч ${60 - rawDate_.second}мин";
  }
}

final remainingTimeProvider = StateNotifierProvider<RemainingNotifier, String>(
      (ref) => RemainingNotifier(),
);

class RemainingNotifier extends StateNotifier<String> {

  RemainingNotifier() : super(TimeGetter().getTime());
  void getRemaining() {
      state = TimeGetter().getTime();
  }
}











// final remainingTimeProvider = StateProvider(
//     (ref) => RemainingNotifier(TimeGetter().getTime()),
// );
//
// // final remainingNotifierProvider = StateNotifierProvider(
// //     (ref) => RemainingNotifier(ref.watch(remainingTimeProvider))
// // );
//
// class RemainingNotifier extends StateNotifier<String> {
//
//   final String time;
//
//   RemainingNotifier(this.time) : super(time);
//   void getRemaining() {
//     for (;;) {
//       state = TimeGetter().getTime();
//     }
//   }
// }


// class TimeRemaining {
//
//   String remaining;
//
//   TimeRemaining({@required this.remaining});
//
//
//   @override
//   bool operator ==(Object o) {
//     if (identical(this, o)) return true;
//
//     return o is TimeRemaining &&
//         o.remaining == remaining;
//   }
//
//   @override
//   int get hashCode => remaining.hashCode;
// }
//
// // Contains functions
//
// abstract class Timer {
//
//   Future<TimeRemaining> remainingTime();
// }
//
// class TimerOfRemainder implements Timer {
//
//   String time_ = "6ч 66м";
//
//   @override
//   Future<TimeRemaining> remainingTime() {
//     DateTime rawDate_ = DateTime.now();
//     time_ = "${12 - rawDate_.hour}ч ${60 - rawDate_.minute}";
//     return Future(
//             () {
//           return TimeRemaining(
//               remaining: time_
//           );
//         }
//     );
//   }
// }
//
// //
//
// // class AnswerTime extends StateNotifier<AbsRemainingTime> {
// //   AnswerTime() : super("6ч 66м");
// // }
//
// abstract class AbsRemainingTime {
//   const AbsRemainingTime();
// }
//
// class CurState implements AbsRemainingTime {
//   final TimeRemaining timeL;
//   const CurState(this.timeL);
// }
//
// class RemainingTimeNotifier extends StateNotifier<AbsRemainingTime> {
//
//   Timer timer;
//   RemainingTimeNotifier(this.timer) : super(CurState(TimeRemaining(remaining: "6ч 66м")));
//
//   Future<void> remainingTime() {
//     DateTime rawDate_ = DateTime.now();
//     state = CurState(
//         TimeRemaining(
//         remaining: "${12 - rawDate_.hour}ч ${60 - rawDate_.minute}"
//         )
//     );
//   }
// }
//
// final remainingTimeProvider = Provider<Timer>(
//       (ref) => TimerOfRemainder(),
// );
//
// final remainingTimeNotifierProvider = StateNotifierProvider(
//       (ref) => RemainingTimeNotifier(ref.watch(remainingTimeProvider))
// );
