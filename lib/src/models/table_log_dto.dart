import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'table_log_dto.g.dart';

abstract class TableLogDto implements Built<TableLogDto, TableLogDtoBuilder> {
  static Serializer<TableLogDto> get serializer => _$tableLogDtoSerializer;

  int get state;

  @BuiltValueField(wireName: "current_host_name")
  String get hostName;

  @BuiltValueField(wireName: "current_service_display_name")
  String get displayName;

  @BuiltValueField(wireName: "plugin_output")
  String get pluginOutput;

  DateTime get time;

  factory TableLogDto([void Function(TableLogDtoBuilder) updates]) =
      _$TableLogDto;

  TableLogDto._();
}
