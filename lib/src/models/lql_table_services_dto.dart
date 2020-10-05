import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lql_table_services_dto.g.dart';

abstract class LqlTableServicesDto
    implements Built<LqlTableServicesDto, LqlTableServicesDtoBuilder> {

  static Serializer<LqlTableServicesDto> get serializer =>
      _$lqlTableServicesDtoSerializer;

  @nullable
  num get state;

  @BuiltValueField(wireName: "host_name")
  @nullable
  String get hostName;

  @BuiltValueField(wireName: "display_name")
  @nullable
  String get displayName;

  @nullable
  String get description;

  @BuiltValueField(wireName: "plugin_output")
  @nullable
  String get pluginOutput;

  factory LqlTableServicesDto(
      [void Function(LqlTableServicesDtoBuilder) updates]) = _$LqlTableServicesDto;

  LqlTableServicesDto._();
}