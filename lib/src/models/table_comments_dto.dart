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

  String? get description;

  @BuiltValueField(wireName: "entry_time")
  DateTime? get entryTime;

  @BuiltValueField(wireName: "entry_type")
  num? get entryType;

  factory TableCommentsDto([void Function(TableCommentsDtoBuilder) updates]) =
      _$TableCommentsDto;

  TableCommentsDto._();
}
