import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

class DateTimeFromEpoch implements PrimitiveSerializer<DateTime> {
  final bool structured = false;
  @override
  final Iterable<Type> types = BuiltList<Type>([DateTime]);
  @override
  final String wireName = 'DateTime';

  @override
  Object serialize(Serializers serializers, DateTime dateTime,
      {FullType specifiedType = FullType.unspecified}) {
    if (!dateTime.isUtc) {
      throw ArgumentError.value(
          dateTime, 'dateTime', 'Must be in utc for serialization.');
    }

    return dateTime.millisecondsSinceEpoch;
  }

  @override
  DateTime deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    var microsecondsSinceEpoch = serialized as int;
    return DateTime.fromMillisecondsSinceEpoch((microsecondsSinceEpoch*1000).round(),
        isUtc: false);
  }
}