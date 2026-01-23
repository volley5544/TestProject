// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CheckinDataModelStruct extends BaseStruct {
  CheckinDataModelStruct({
    String? time,
    int? count,
  })  : _time = time,
        _count = count;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static CheckinDataModelStruct fromMap(Map<String, dynamic> data) =>
      CheckinDataModelStruct(
        time: data['time'] as String?,
        count: castToType<int>(data['count']),
      );

  static CheckinDataModelStruct? maybeFromMap(dynamic data) => data is Map
      ? CheckinDataModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static CheckinDataModelStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CheckinDataModelStruct(
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CheckinDataModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CheckinDataModelStruct &&
        time == other.time &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([time, count]);
}

CheckinDataModelStruct createCheckinDataModelStruct({
  String? time,
  int? count,
}) =>
    CheckinDataModelStruct(
      time: time,
      count: count,
    );
