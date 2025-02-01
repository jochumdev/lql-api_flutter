import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'table_hosts_dto.g.dart';

abstract class TableHostsDto
    implements Built<TableHostsDto, TableHostsDtoBuilder> {
  static Serializer<TableHostsDto> get serializer => _$tableHostsDtoSerializer;

  int get state;

  int? get acknowledged;

  String? get name;

  String? get address;

  String? get alias;

  @BuiltValueField(wireName: "display_name")
  String? get displayName;

  BuiltList<String>? get groups;

  BuiltMap<String, String>? get labels;

  BuiltList<String>? get parents;

  BuiltMap<String, String>? get tags;

  num? get latency;

  factory TableHostsDto([void Function(TableHostsDtoBuilder) updates]) =
      _$TableHostsDto;

  TableHostsDto._();
}
