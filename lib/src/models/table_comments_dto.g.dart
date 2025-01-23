// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_comments_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TableCommentsDto> _$tableCommentsDtoSerializer =
    new _$TableCommentsDtoSerializer();

class _$TableCommentsDtoSerializer
    implements StructuredSerializer<TableCommentsDto> {
  @override
  final Iterable<Type> types = const [TableCommentsDto, _$TableCommentsDto];
  @override
  final String wireName = 'TableCommentsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, TableCommentsDto object,
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
    value = object.hostName;
    if (value != null) {
      result
        ..add('host_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entryTime;
    if (value != null) {
      result
        ..add('entry_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entryType;
    if (value != null) {
      result
        ..add('entry_type')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    value = object.persistent;
    if (value != null) {
      result
        ..add('persistent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isService;
    if (value != null) {
      result
        ..add('is_service')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.serviceDescription;
    if (value != null) {
      result
        ..add('service_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TableCommentsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableCommentsDtoBuilder();

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
        case 'host_name':
          result.hostName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entry_time':
          result.entryTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'entry_type':
          result.entryType = serializers.deserialize(value,
              specifiedType: const FullType(num)) as num?;
          break;
        case 'persistent':
          result.persistent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_service':
          result.isService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'service_description':
          result.serviceDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$TableCommentsDto extends TableCommentsDto {
  @override
  final num? id;
  @override
  final String? author;
  @override
  final String? comment;
  @override
  final String? hostName;
  @override
  final String? entryTime;
  @override
  final num? entryType;
  @override
  final bool? persistent;
  @override
  final bool? isService;
  @override
  final String? serviceDescription;

  factory _$TableCommentsDto(
          [void Function(TableCommentsDtoBuilder)? updates]) =>
      (new TableCommentsDtoBuilder()..update(updates))._build();

  _$TableCommentsDto._(
      {this.id,
      this.author,
      this.comment,
      this.hostName,
      this.entryTime,
      this.entryType,
      this.persistent,
      this.isService,
      this.serviceDescription})
      : super._();

  @override
  TableCommentsDto rebuild(void Function(TableCommentsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableCommentsDtoBuilder toBuilder() =>
      new TableCommentsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableCommentsDto &&
        id == other.id &&
        author == other.author &&
        comment == other.comment &&
        hostName == other.hostName &&
        entryTime == other.entryTime &&
        entryType == other.entryType &&
        persistent == other.persistent &&
        isService == other.isService &&
        serviceDescription == other.serviceDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, author.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, hostName.hashCode);
    _$hash = $jc(_$hash, entryTime.hashCode);
    _$hash = $jc(_$hash, entryType.hashCode);
    _$hash = $jc(_$hash, persistent.hashCode);
    _$hash = $jc(_$hash, isService.hashCode);
    _$hash = $jc(_$hash, serviceDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TableCommentsDto')
          ..add('id', id)
          ..add('author', author)
          ..add('comment', comment)
          ..add('hostName', hostName)
          ..add('entryTime', entryTime)
          ..add('entryType', entryType)
          ..add('persistent', persistent)
          ..add('isService', isService)
          ..add('serviceDescription', serviceDescription))
        .toString();
  }
}

class TableCommentsDtoBuilder
    implements Builder<TableCommentsDto, TableCommentsDtoBuilder> {
  _$TableCommentsDto? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _hostName;
  String? get hostName => _$this._hostName;
  set hostName(String? hostName) => _$this._hostName = hostName;

  String? _entryTime;
  String? get entryTime => _$this._entryTime;
  set entryTime(String? entryTime) => _$this._entryTime = entryTime;

  num? _entryType;
  num? get entryType => _$this._entryType;
  set entryType(num? entryType) => _$this._entryType = entryType;

  bool? _persistent;
  bool? get persistent => _$this._persistent;
  set persistent(bool? persistent) => _$this._persistent = persistent;

  bool? _isService;
  bool? get isService => _$this._isService;
  set isService(bool? isService) => _$this._isService = isService;

  String? _serviceDescription;
  String? get serviceDescription => _$this._serviceDescription;
  set serviceDescription(String? serviceDescription) =>
      _$this._serviceDescription = serviceDescription;

  TableCommentsDtoBuilder();

  TableCommentsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _author = $v.author;
      _comment = $v.comment;
      _hostName = $v.hostName;
      _entryTime = $v.entryTime;
      _entryType = $v.entryType;
      _persistent = $v.persistent;
      _isService = $v.isService;
      _serviceDescription = $v.serviceDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableCommentsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableCommentsDto;
  }

  @override
  void update(void Function(TableCommentsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableCommentsDto build() => _build();

  _$TableCommentsDto _build() {
    final _$result = _$v ??
        new _$TableCommentsDto._(
          id: id,
          author: author,
          comment: comment,
          hostName: hostName,
          entryTime: entryTime,
          entryType: entryType,
          persistent: persistent,
          isService: isService,
          serviceDescription: serviceDescription,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
