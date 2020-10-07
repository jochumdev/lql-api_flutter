import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lql_table_comments_dto.g.dart';

abstract class LqlTableCommentsDto
    implements Built<LqlTableCommentsDto, LqlTableCommentsDtoBuilder> {

  static Serializer<LqlTableCommentsDto> get serializer =>
      _$lqlTableCommentsDtoSerializer;

  @nullable
  num get id;

  @nullable
  String get author;

  @nullable
  String get comment;

  @nullable
  String get description;

  @BuiltValueField(wireName: "entry_time")
  @nullable
  DateTime get entryTime;

  @BuiltValueField(wireName: "entry_type")
  @nullable
  num get entryType;

  factory LqlTableCommentsDto(
      [void Function(LqlTableCommentsDtoBuilder) updates]) = _$LqlTableCommentsDto;

  LqlTableCommentsDto._();
}