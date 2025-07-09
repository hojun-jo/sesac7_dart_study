import 'package:modu_3_dart_study/core/response.dart';
import 'package:modu_3_dart_study/data_source/store/store_data_source.dart';
import 'package:modu_3_dart_study/dto/store/store_list_dto.dart';

class MockStoreDataSourceImpl implements StoreDataSource {
  static const _json = {
    "count": 222,
    "stores": [
      {
        "addr": "서울특별시 강북구 솔매로 38 (미아동)",
        "code": "11817488",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6254369,
        "lng": 127.0164096,
        "name": "승약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/02 18:05:00",
        "type": "01",
      },
      {
        "addr": "서울특별시 강북구 삼양로 247 3층 (미아동)",
        "code": "12856941",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6255182,
        "lng": 127.017747,
        "name": "대지약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/03 10:45:00",
        "type": "01",
      },
      {
        "addr": "서울특별시 강북구 삼양로 255 (미아동)",
        "code": "11819723",
        "created_at": '',
        "lat": 37.6261612,
        "lng": 127.0180494,
        "name": "청구약국",
        "remain_stat": "plenty",
        "stock_at": "2020/07/03 10:40:00",
        "type": "01",
      },
      {
        "addr": "서울특별시 강북구 솔샘로 254 2층 2호 (미아동, 삼양아케이트)",
        "code": "11888571",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.627357,
        "lng": 127.018375,
        "name": "민들레약국",
        "remain_stat": "plenty",
        "stock_at": null,
        "type": "01",
      },
      {
        "addr": "서울특별시 강북구 삼양로77길 25 (수유동)",
        "code": "11845929",
        "created_at": "2020/07/03 11:00:00",
        "lat": 37.6297115,
        "lng": 127.0168913,
        "name": "우정약국",
        "remain_stat": null,
        "stock_at": "2020/07/01 15:35:00",
        "type": "01",
      },
    ],
  };
  final int statusCode;
  final bool isException;

  MockStoreDataSourceImpl({int? statusCode, bool? isException})
    : statusCode = statusCode ?? 200,
      isException = isException ?? false;

  @override
  Future<Response<StoreListDto>> getStores() async {
    if (isException) {
      throw Exception('something wrong');
    }

    return Response(
      statusCode: statusCode,
      headers: {},
      body: StoreListDto.fromJson(_json),
    );
  }
}
