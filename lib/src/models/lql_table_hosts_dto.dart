import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lql_table_hosts_dto.g.dart';

abstract class LqlTableHostsDto
    implements Built<LqlTableHostsDto, LqlTableHostsDtoBuilder> {

  static Serializer<LqlTableHostsDto> get serializer =>
      _$lqlTableHostsDtoSerializer;

  @nullable
  num get state;

  @nullable
  String get name;

  @nullable
  String get address;

  @nullable
  String get alias;

  @BuiltValueField(wireName: "display_name")
  @nullable
  String get displayName;

  @nullable
  BuiltList<String> get groups;

  @nullable
  BuiltMap<String, String> get labels;

  @nullable
  BuiltList<String> get parents;

  @nullable
  BuiltMap<String, String> get tags;

  num get latency;

  factory LqlTableHostsDto(
      [void Function(LqlTableHostsDtoBuilder) updates]) = _$LqlTableHostsDto;

  LqlTableHostsDto._();
}