import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:simplyfirescore/core/app/global_exports.dart';
import 'package:test/test.dart';

class CustomType extends Equatable {
  String name;
  int num;
  bool yesno;
  CustomType(this.name, this.num, this.yesno);
  String toString() => "{name: $name, num: $num, yesno: $yesno}";

  @override
  List<Object?> get props => [name, num, yesno];
}

void main() {
  setUpAll(() {});
  group(
    'simples_helpers_test',
    () {
      // testing void function execution
      test(
        'smplesCall_void',
        () async {
          final res = await simplesCall(() async => print("hi"));
          expect(res, Right(null));
        },
      );

      // testing primitive string
      test(
        'smplesCall_string',
        () async {
          final res = await simplesCall(() async => "hi");
          res.fold((l) => print('left'), (r) => print(r));
          expect(res, Right("hi"));
        },
      );

      // testing custom type
      test(
        'smplesCall_customType',
        () async {
          Future.delayed(Duration(seconds: 2));
          final res = await simplesCall(() async => CustomType("hi", 3, true));
          expect(res, isA<Right>());
          final expected = res.fold((l) => l, (r) => r);
          expect(expected, equals(CustomType("hi", 3, true)));
          // expect(expected, equa(CustomType("hi", 30, false)));
        },
      );
    },
  );
}
