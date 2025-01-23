import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'table_comments_dto.g.dart';

abstract class TableCommentsDto
    implements Built<TableCommentsDto, TableCommentsDtoBuilder> {
  static Serializer<TableCommentsDto> get serializer =>
      _$tableCommentsDtoSerializer;

  num? get id;

  String? get author;

  String? get comment;

  @BuiltValueField(wireName: "host_name")
  String? get hostName;

  @BuiltValueField(wireName: "entry_time")
  String? get entryTime;

  @BuiltValueField(wireName: "entry_type")
  num? get entryType;

  bool? get persistent;

  @BuiltValueField(wireName: "is_service")
  bool? get isService;

  @BuiltValueField(wireName: "service_description")
  String? get serviceDescription;

  factory TableCommentsDto([void Function(TableCommentsDtoBuilder) updates]) =
      _$TableCommentsDto;

  TableCommentsDto._();
}
