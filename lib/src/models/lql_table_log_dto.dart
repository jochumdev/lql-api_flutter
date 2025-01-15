import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lql_table_log_dto.g.dart';

abstract class LqlTableLogDto
    implements Built<LqlTableLogDto, LqlTableLogDtoBuilder> {
  static Serializer<LqlTableLogDto> get serializer =>
      _$lqlTableLogDtoSerializer;

  int get state;

  @BuiltValueField(wireName: "current_host_name")
  String get hostName;

  @BuiltValueField(wireName: "current_service_display_name")
  String get displayName;

  @BuiltValueField(wireName: "plugin_output")
  String get pluginOutput;

  DateTime get time;

  factory LqlTableLogDto([void Function(LqlTableLogDtoBuilder) updates]) =
      _$LqlTableLogDto;

  LqlTableLogDto._();
}
