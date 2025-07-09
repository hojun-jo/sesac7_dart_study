import 'package:intl/intl.dart';
import 'package:modu_3_dart_study/dto/store/store_dto.dart';
import 'package:modu_3_dart_study/model/store/store.dart';
import 'package:modu_3_dart_study/model/store/store_remain_status.dart';

extension StoreDtoToModelMapper on StoreDto {
  Store toModel() {
    return Store(
      address: addr ?? '',
      code: code ?? '',
      createdAt: createdAt != null ? DateTime.parse(createdAt!) : DateTime(0),
      lat: lat ?? 0,
      lng: lng ?? 0,
      name: name ?? '',
      remainStatus: remainStat != null
          ? _statusFromString(remainStat!)
          : StoreRemainStatus.empty,
      stockAt: stockAt != null ? DateTime.parse(stockAt!) : DateTime(0),
      type: type ?? '',
    );
  }

  StoreRemainStatus _statusFromString(String value) {
    return switch (value) {
      'plenty' => StoreRemainStatus.plenty,
      'some' => StoreRemainStatus.some,
      'few' => StoreRemainStatus.few,
      'breaked' => StoreRemainStatus.breaked,
      'empty' => StoreRemainStatus.empty,
      _ => StoreRemainStatus.empty,
    };
  }
}

extension StoreModelToDtoMapper on Store {
  StoreDto toDto() {
    return StoreDto(
      addr: address,
      code: code,
      createdAt: _formatDate(createdAt),
      lat: lat,
      lng: lng,
      name: name,
      remainStat: remainStatus.toString(),
      stockAt: _formatDate(stockAt),
      type: type,
    );
  }

  String _formatDate(DateTime value) {
    return DateFormat('yyyy/MM/dd HH:mm:ss').format(value);
  }
}
