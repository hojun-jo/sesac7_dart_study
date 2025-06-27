import 'dart:convert';

import 'package:modu_3_dart_study/assignments/movie/movie.dart';
import 'package:test/test.dart';

void main() {
  final title = 'Star Ward';
  final director = 'George Lucas';
  final year = 1977;
  final jsonString = '''{
  "title": "Star Ward",
  "director": "George Lucas",
  "year": 1977
  }''';

  group(
    'constructor',
    () {
      test(
        'When create a Movie, the title, director, and year are the given values.',
        () {
          // given
          // when
          final movie = Movie(
            title: title,
            director: director,
            year: year,
          );

          // then
          expect(movie.title, title);
          expect(movie.director, director);
          expect(movie.year, year);
        },
      );
    },
  );

  group('fromJson', () {
    test(
      'If the json is valid, the Movie will be created with the given values.',
      () {
        // given
        // when
        final movie = Movie.fromJson(jsonDecode(jsonString));

        // then
        expect(movie.title, title);
        expect(movie.director, director);
        expect(movie.year, year);
      },
    );

    test(
      'If title is null in the json, the title of the Movie is unknown.',
      () {
        // given
        final jsonString = '''{
  "director": "George Lucas",
  "year": 1977
  }''';

        // when
        final movie = Movie.fromJson(jsonDecode(jsonString));

        // then
        expect(movie.title, Movie.unknown);
        expect(movie.director, director);
        expect(movie.year, year);
      },
    );

    test(
      'If director is null in the json, the director of the Movie is unknown.',
      () {
        // given
        final jsonString = '''{
  "title": "Star Ward",
  "year": 1977
  }''';

        // when
        final movie = Movie.fromJson(jsonDecode(jsonString));

        // then
        expect(movie.title, title);
        expect(movie.director, Movie.unknown);
        expect(movie.year, year);
      },
    );

    test(
      'If year is null in the json, the year of the Movie is 0.',
      () {
        // given
        final jsonString = '''{
  "title": "Star Ward",
  "director": "George Lucas"
  }''';

        // when
        final movie = Movie.fromJson(jsonDecode(jsonString));

        // then
        expect(movie.title, title);
        expect(movie.director, director);
        expect(movie.year, Movie.nullYear);
      },
    );
  });
}
