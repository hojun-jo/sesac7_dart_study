import 'package:modu_3_dart_study/model/address.dart';
import 'package:modu_3_dart_study/model/geo.dart';
import 'package:test/test.dart';

void main() {
  final expectedStreet = "Kulas Light";
  final expectedSuite = "Apt. 556";
  final expectedCity = "Gwenborough";
  final expectedZipcode = "92998-3874";
  final expectedGeo = Geo(lat: "-37.3159", lng: "81.1496");

  group(
    'constructor',
    () {
      test(
        'When create a Address, the street, suite, city, zipcode and geo are given values.',
        () {
          // given
          // when
          final address = Address(
            street: expectedStreet,
            suite: expectedSuite,
            city: expectedCity,
            zipcode: expectedZipcode,
            geo: expectedGeo,
          );

          // then
          expect(address.street, expectedStreet);
          expect(address.suite, expectedSuite);
          expect(address.city, expectedCity);
          expect(address.zipcode, expectedZipcode);
          expect(address.geo, expectedGeo);
        },
      );

      test(
        'When create a Address with all values null, the street, suite, city, zipcode and geo are null.',
        () {
          // given
          // when
          final address = Address(
            street: null,
            suite: null,
            city: null,
            zipcode: null,
            geo: null,
          );

          // then
          expect(address.street, null);
          expect(address.suite, null);
          expect(address.city, null);
          expect(address.zipcode, null);
          expect(address.geo, null);
        },
      );
    },
  );

  group('fromJson', () {
    test(
      'If the json contains all the values and create Address.fromJson, the street, suite, city, zipcode and geo are the given values.',
      () {
        // given
        final json = {
          "street": "Kulas Light",
          "suite": "Apt. 556",
          "city": "Gwenborough",
          "zipcode": "92998-3874",
          "geo": {"lat": "-37.3159", "lng": "81.1496"},
        };

        // when
        final address = Address.fromJson(json);

        // then
        expect(address.street, expectedStreet);
        expect(address.suite, expectedSuite);
        expect(address.city, expectedCity);
        expect(address.zipcode, expectedZipcode);
        expect(address.geo, expectedGeo);
      },
    );

    test(
      'If all values in the json are null and create Address.fromJson, the street, suite, city, zipcode and geo are the given values.',
      () {
        // given
        final json = <String, dynamic>{};

        // when
        final address = Address.fromJson(json);

        // then
        expect(address.street, null);
        expect(address.suite, null);
        expect(address.city, null);
        expect(address.zipcode, null);
        expect(address.geo, null);
      },
    );
  });

  group('toJson', () {
    test(
      'If address has all values, the result of toJson is the same as expectedJson.',
      () {
        // given
        final address = Address(
          street: expectedStreet,
          suite: expectedSuite,
          city: expectedCity,
          zipcode: expectedZipcode,
          geo: expectedGeo,
        );
        final expectedJson = {
          "street": "Kulas Light",
          "suite": "Apt. 556",
          "city": "Gwenborough",
          "zipcode": "92998-3874",
          "geo": {"lat": "-37.3159", "lng": "81.1496"},
        };

        // when
        final result = address.toJson();

        // then
        expect(result, expectedJson);
      },
    );
  });

  group('copyWith', () {
    test(
      'If address contains all values and copyWith is performed, the copied address is a different object and has the same values.',
      () {
        // given
        final address = Address(
          street: expectedStreet,
          suite: expectedSuite,
          city: expectedCity,
          zipcode: expectedZipcode,
          geo: expectedGeo,
        );

        // when
        final copied = address.copyWith();

        // then
        expect(identical(address, copied), isFalse);
        expect(address == copied, isTrue);
      },
    );

    test(
      'If address contains all the values and you do a copyWith with a new street, the copied address will have a different street.',
      () {
        // given
        final address = Address(
          street: expectedStreet,
          suite: expectedSuite,
          city: expectedCity,
          zipcode: expectedZipcode,
          geo: expectedGeo,
        );
        final newStreet = 'Victor Plains';

        // when
        final copied = address.copyWith(street: newStreet);

        // then
        expect(identical(address, copied), isFalse);
        expect(copied.street, newStreet);
        expect(copied.suite, expectedSuite);
        expect(copied.city, expectedCity);
        expect(copied.zipcode, expectedZipcode);
        expect(copied.geo, expectedGeo);
      },
    );
  });
}
