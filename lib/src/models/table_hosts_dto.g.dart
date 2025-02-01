// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_hosts_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TableHostsDto> _$tableHostsDtoSerializer =
    new _$TableHostsDtoSerializer();

class _$TableHostsDtoSerializer implements StructuredSerializer<TableHostsDto> {
  @override
  final Iterable<Type> types = const [TableHostsDto, _$TableHostsDto];
  @override
  final String wireName = 'TableHostsDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, TableHostsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'state',
      serializers.serialize(object.state, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.acknowledged;
    if (value != null) {
      result
        ..add('acknowledged')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    value = object.latency;
    if (value != null) {
      result
        ..add('latency')
        ..add(serializers.serialize(value, specifiedType: const FullType(num)));
    }
    return result;
  }

  @override
  TableHostsDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableHostsDtoBuilder();

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
        case 'acknowledged':
          result.acknowledged = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
              specifiedType: const FullType(num)) as num?;
          break;
      }
    }

    return result.build();
  }
}

class _$TableHostsDto extends TableHostsDto {
  @override
  final int state;
  @override
  final int? acknowledged;
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
  final num? latency;

  factory _$TableHostsDto([void Function(TableHostsDtoBuilder)? updates]) =>
      (new TableHostsDtoBuilder()..update(updates))._build();

  _$TableHostsDto._(
      {required this.state,
      this.acknowledged,
      this.name,
      this.address,
      this.alias,
      this.displayName,
      this.groups,
      this.labels,
      this.parents,
      this.tags,
      this.latency})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(state, r'TableHostsDto', 'state');
  }

  @override
  TableHostsDto rebuild(void Function(TableHostsDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableHostsDtoBuilder toBuilder() => new TableHostsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableHostsDto &&
        state == other.state &&
        acknowledged == other.acknowledged &&
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
    _$hash = $jc(_$hash, acknowledged.hashCode);
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
    return (newBuiltValueToStringHelper(r'TableHostsDto')
          ..add('state', state)
          ..add('acknowledged', acknowledged)
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

class TableHostsDtoBuilder
    implements Builder<TableHostsDto, TableHostsDtoBuilder> {
  _$TableHostsDto? _$v;

  int? _state;
  int? get state => _$this._state;
  set state(int? state) => _$this._state = state;

  int? _acknowledged;
  int? get acknowledged => _$this._acknowledged;
  set acknowledged(int? acknowledged) => _$this._acknowledged = acknowledged;

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

  TableHostsDtoBuilder();

  TableHostsDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _acknowledged = $v.acknowledged;
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
  void replace(TableHostsDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableHostsDto;
  }

  @override
  void update(void Function(TableHostsDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableHostsDto build() => _build();

  _$TableHostsDto _build() {
    _$TableHostsDto _$result;
    try {
      _$result = _$v ??
          new _$TableHostsDto._(
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'TableHostsDto', 'state'),
            acknowledged: acknowledged,
            name: name,
            address: address,
            alias: alias,
            displayName: displayName,
            groups: _groups?.build(),
            labels: _labels?.build(),
            parents: _parents?.build(),
            tags: _tags?.build(),
            latency: latency,
          );
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
            r'TableHostsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
