import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lql_table_hosts_dto.g.dart';

abstract class LqlTableHostsDto
    implements Built<LqlTableHostsDto, LqlTableHostsDtoBuilder> {
  static Serializer<LqlTableHostsDto> get serializer =>
      _$lqlTableHostsDtoSerializer;

  int get state;

  String? get name;

  String? get address;

  String? get alias;

  @BuiltValueField(wireName: "display_name")
  String? get displayName;

  BuiltList<String>? get groups;

  BuiltMap<String, String>? get labels;

  BuiltList<String>? get parents;

  BuiltMap<String, String>? get tags;

  num get latency;

  factory LqlTableHostsDto([void Function(LqlTableHostsDtoBuilder) updates]) =
      _$LqlTableHostsDto;

  LqlTableHostsDto._();
}
