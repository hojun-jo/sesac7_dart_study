import 'package:modu_3_dart_study/data_source/album_data_source.dart';
import 'package:modu_3_dart_study/repository/album_repository.dart';
import 'package:modu_3_dart_study/repository/album_repository_impl.dart';
import 'package:test/test.dart';

import '../mocks/mock_album_data_source_impl.dart';

void main() {
  final AlbumDataSource dataSource = MockAlbumDataSourceImpl();
  final AlbumRepository repository = AlbumRepositoryImpl(
    dataSource: dataSource,
  );

  group('getAlbums', () {
    test(
      'getPhotos returns 2 result.',
      () async {
        // given
        final expectedLength = 2;

        // when
        final result = await repository.getAlbums();

        // then
        expect(result.length, expectedLength);
      },
    );

    test(
      'The result of getAlbums has all values.',
      () async {
        // given
        final expectedUserId = 1;
        final expectedId = 1;
        final expectedTitle = "quidem molestiae enim";

        // when
        final result = await repository.getAlbums();
        final photo = result.first;

        // then
        expect(photo.userId, expectedUserId);
        expect(photo.id, expectedId);
        expect(photo.title, expectedTitle);
      },
    );

    test(
      'If an exception is thrown by dataSource, the result of getAlbums is an empty list.',
      () async {
        // given
        final expectedResult = [];
        final AlbumDataSource dataSource = MockAlbumDataSourceImpl(
          isException: true,
        );
        final AlbumRepository repository = AlbumRepositoryImpl(
          dataSource: dataSource,
        );

        // when
        final result = await repository.getAlbums();

        // then
        expect(result, expectedResult);
      },
    );
  });
}
