import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';

part 'table_services_dto.g.dart';

abstract class TableServicesDto
    implements Built<TableServicesDto, TableServicesDtoBuilder> {
  static Serializer<TableServicesDto> get serializer =>
      _$tableServicesDtoSerializer;

  int get state;

  @BuiltValueField(wireName: "host_name")
  String? get hostName;

  @BuiltValueField(wireName: "display_name")
  String? get displayName;

  String? get description;

  @BuiltValueField(wireName: "plugin_output")
  String? get pluginOutput;

  BuiltList<num>? get comments;

  @BuiltValueField(wireName: "last_state_change")
  DateTime? get lastStateChange;

  factory TableServicesDto([void Function(TableServicesDtoBuilder) updates]) =
      _$TableServicesDto;

  TableServicesDto._();
}
