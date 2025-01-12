// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lql_table_comments_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LqlTableCommentsDto> _$lqlTableCommentsDtoSerializer =
    new _$LqlTableCommentsDtoSerializer();

class _$LqlTableCommentsDtoSerializer
    implements StructuredSerializer<LqlTableCommentsDto> {
  @override
  final Iterable<Type> types = const [
    LqlTableCommentsDto,
    _$LqlTableCommentsDto
  ];
  @override
  final String wireName = 'LqlTableCommentsDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LqlTableCommentsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entryTime;
    if (value != null) {
      result
        ..add('entry_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.entryType;
    if (value != null) {
      result
        ..add('entry_type')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  LqlTableCommentsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LqlTableCommentsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entry_time':
          result.entryTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'entry_type':
          result.entryType = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
      }
    }

    return result.build();
  }
}

class _$LqlTableCommentsDto extends LqlTableCommentsDto {
  @override
  final num? id;
  @override
  final String? author;
  @override
  final String? comment;
  @override
  final String? description;
  @override
  final DateTime? entryTime;
  @override
  final num? entryType;

  factory _$LqlTableCommentsDto(
          [void Function(LqlTableCommentsDtoBuilder)? updates]) =>
      (new LqlTableCommentsDtoBuilder()..update(updates))._build();

  _$LqlTableCommentsDto._(
      {this.id,
      this.author,
      this.comment,
      this.description,
      this.entryTime,
      this.entryType})
      : super._();

  @override
  LqlTableCommentsDto rebuild(
          void Function(LqlTableCommentsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LqlTableCommentsDtoBuilder toBuilder() =>
      new LqlTableCommentsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LqlTableCommentsDto &&
        id == other.id &&
        author == other.author &&
        comment == other.comment &&
        description == other.description &&
        entryTime == other.entryTime &&
        entryType == other.entryType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, entryTime.hashCode);
    _$hash = $jc(_$hash, entryType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LqlTableCommentsDto')
          ..add('id', id)
          ..add('author', author)
          ..add('comment', comment)
          ..add('description', description)
          ..add('entryTime', entryTime)
          ..add('entryType', entryType))
        .toString();
  }
}

class LqlTableCommentsDtoBuilder
    implements Builder<LqlTableCommentsDto, LqlTableCommentsDtoBuilder> {
  _$LqlTableCommentsDto? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _entryTime;
  DateTime? get entryTime => _$this._entryTime;
  set entryTime(DateTime? entryTime) => _$this._entryTime = entryTime;

  num? _entryType;
  num? get entryType => _$this._entryType;
  set entryType(num? entryType) => _$this._entryType = entryType;

  LqlTableCommentsDtoBuilder();

  LqlTableCommentsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _author = $v.author;
      _comment = $v.comment;
      _description = $v.description;
      _entryTime = $v.entryTime;
      _entryType = $v.entryType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LqlTableCommentsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LqlTableCommentsDto;
  }

  @override
  void update(void Function(LqlTableCommentsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LqlTableCommentsDto build() => _build();

  _$LqlTableCommentsDto _build() {
    final _$result = _$v ??
        new _$LqlTableCommentsDto._(
            id: id,
            author: author,
            comment: comment,
            description: description,
            entryTime: entryTime,
            entryType: entryType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
