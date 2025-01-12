// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lql_table_hosts_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LqlTableHostsDto> _$lqlTableHostsDtoSerializer =
    new _$LqlTableHostsDtoSerializer();

class _$LqlTableHostsDtoSerializer
    implements StructuredSerializer<LqlTableHostsDto> {
  @override
  final Iterable<Type> types = const [LqlTableHostsDto, _$LqlTableHostsDto];
  @override
  final String wireName = 'LqlTableHostsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, LqlTableHostsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'state',
      serializers.serialize(object.state, specifiedType: const FullType(int)),
      'latency',
      serializers.serialize(object.latency, specifiedType: const FullType(num)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.alias;
    if (value != null) {
      result
        ..add('alias')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groups;
    if (value != null) {
      result
        ..add('groups')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.labels;
    if (value != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    value = object.parents;
    if (value != null) {
      result
        ..add('parents')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    return result;
  }

  @override
  LqlTableHostsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LqlTableHostsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alias':
          result.alias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'groups':
          result.groups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'parents':
          result.parents.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)]))!);
          break;
        case 'latency':
          result.latency = serializers.deserialize(value,
              specifiedType: const FullType(num))! as num;
          break;
      }
    }

    return result.build();
  }
}

class _$LqlTableHostsDto extends LqlTableHostsDto {
  @override
  final int state;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? alias;
  @override
  final String? displayName;
  @override
  final BuiltList<String>? groups;
  @override
  final BuiltMap<String, String>? labels;
  @override
  final BuiltList<String>? parents;
  @override
  final BuiltMap<String, String>? tags;
  @override
  final num latency;

  factory _$LqlTableHostsDto(
          [void Function(LqlTableHostsDtoBuilder)? updates]) =>
      (new LqlTableHostsDtoBuilder()..update(updates))._build();

  _$LqlTableHostsDto._(
      {required this.state,
      this.name,
      this.address,
      this.alias,
      this.displayName,
      this.groups,
      this.labels,
      this.parents,
      this.tags,
      required this.latency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(state, r'LqlTableHostsDto', 'state');
    BuiltValueNullFieldError.checkNotNull(
        latency, r'LqlTableHostsDto', 'latency');
  }

  @override
  LqlTableHostsDto rebuild(void Function(LqlTableHostsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LqlTableHostsDtoBuilder toBuilder() =>
      new LqlTableHostsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LqlTableHostsDto &&
        state == other.state &&
        name == other.name &&
        address == other.address &&
        alias == other.alias &&
        displayName == other.displayName &&
        groups == other.groups &&
        labels == other.labels &&
        parents == other.parents &&
        tags == other.tags &&
        latency == other.latency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, labels.hashCode);
    _$hash = $jc(_$hash, parents.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, latency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LqlTableHostsDto')
          ..add('state', state)
          ..add('name', name)
          ..add('address', address)
          ..add('alias', alias)
          ..add('displayName', displayName)
          ..add('groups', groups)
          ..add('labels', labels)
          ..add('parents', parents)
          ..add('tags', tags)
          ..add('latency', latency))
        .toString();
  }
}

class LqlTableHostsDtoBuilder
    implements Builder<LqlTableHostsDto, LqlTableHostsDtoBuilder> {
  _$LqlTableHostsDto? _$v;

  int? _state;
  int? get state => _$this._state;
  set state(int? state) => _$this._state = state;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  ListBuilder<String>? _groups;
  ListBuilder<String> get groups =>
      _$this._groups ??= new ListBuilder<String>();
  set groups(ListBuilder<String>? groups) => _$this._groups = groups;

  MapBuilder<String, String>? _labels;
  MapBuilder<String, String> get labels =>
      _$this._labels ??= new MapBuilder<String, String>();
  set labels(MapBuilder<String, String>? labels) => _$this._labels = labels;

  ListBuilder<String>? _parents;
  ListBuilder<String> get parents =>
      _$this._parents ??= new ListBuilder<String>();
  set parents(ListBuilder<String>? parents) => _$this._parents = parents;

  MapBuilder<String, String>? _tags;
  MapBuilder<String, String> get tags =>
      _$this._tags ??= new MapBuilder<String, String>();
  set tags(MapBuilder<String, String>? tags) => _$this._tags = tags;

  num? _latency;
  num? get latency => _$this._latency;
  set latency(num? latency) => _$this._latency = latency;

  LqlTableHostsDtoBuilder();

  LqlTableHostsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _name = $v.name;
      _address = $v.address;
      _alias = $v.alias;
      _displayName = $v.displayName;
      _groups = $v.groups?.toBuilder();
      _labels = $v.labels?.toBuilder();
      _parents = $v.parents?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _latency = $v.latency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LqlTableHostsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LqlTableHostsDto;
  }

  @override
  void update(void Function(LqlTableHostsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LqlTableHostsDto build() => _build();

  _$LqlTableHostsDto _build() {
    _$LqlTableHostsDto _$result;
    try {
      _$result = _$v ??
          new _$LqlTableHostsDto._(
              state: BuiltValueNullFieldError.checkNotNull(
                  state, r'LqlTableHostsDto', 'state'),
              name: name,
              address: address,
              alias: alias,
              displayName: displayName,
              groups: _groups?.build(),
              labels: _labels?.build(),
              parents: _parents?.build(),
              tags: _tags?.build(),
              latency: BuiltValueNullFieldError.checkNotNull(
                  latency, r'LqlTableHostsDto', 'latency'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
        _$failedField = 'labels';
        _labels?.build();
        _$failedField = 'parents';
        _parents?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LqlTableHostsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
