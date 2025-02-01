// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_services_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TableServicesDto> _$tableServicesDtoSerializer =
    new _$TableServicesDtoSerializer();

class _$TableServicesDtoSerializer
    implements StructuredSerializer<TableServicesDto> {
  @override
  final Iterable<Type> types = const [TableServicesDto, _$TableServicesDto];
  @override
  final String wireName = 'TableServicesDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, TableServicesDto object,
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
    value = object.hostName;
    if (value != null) {
      result
        ..add('host_name')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pluginOutput;
    if (value != null) {
      result
        ..add('plugin_output')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comments;
    if (value != null) {
      result
        ..add('comments')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(num)])));
    }
    value = object.lastStateChange;
    if (value != null) {
      result
        ..add('last_state_change')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  TableServicesDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TableServicesDtoBuilder();

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
        case 'host_name':
          result.hostName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plugin_output':
          result.pluginOutput = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comments':
          result.comments.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(num)]))!
              as BuiltList<Object?>);
          break;
        case 'last_state_change':
          result.lastStateChange = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
      }
    }

    return result.build();
  }
}

class _$TableServicesDto extends TableServicesDto {
  @override
  final int state;
  @override
  final int? acknowledged;
  @override
  final String? hostName;
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final String? pluginOutput;
  @override
  final BuiltList<num>? comments;
  @override
  final DateTime? lastStateChange;

  factory _$TableServicesDto(
          [void Function(TableServicesDtoBuilder)? updates]) =>
      (new TableServicesDtoBuilder()..update(updates))._build();

  _$TableServicesDto._(
      {required this.state,
      this.acknowledged,
      this.hostName,
      this.displayName,
      this.description,
      this.pluginOutput,
      this.comments,
      this.lastStateChange})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(state, r'TableServicesDto', 'state');
  }

  @override
  TableServicesDto rebuild(void Function(TableServicesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TableServicesDtoBuilder toBuilder() =>
      new TableServicesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TableServicesDto &&
        state == other.state &&
        acknowledged == other.acknowledged &&
        hostName == other.hostName &&
        displayName == other.displayName &&
        description == other.description &&
        pluginOutput == other.pluginOutput &&
        comments == other.comments &&
        lastStateChange == other.lastStateChange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, acknowledged.hashCode);
    _$hash = $jc(_$hash, hostName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, pluginOutput.hashCode);
    _$hash = $jc(_$hash, comments.hashCode);
    _$hash = $jc(_$hash, lastStateChange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TableServicesDto')
          ..add('state', state)
          ..add('acknowledged', acknowledged)
          ..add('hostName', hostName)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('pluginOutput', pluginOutput)
          ..add('comments', comments)
          ..add('lastStateChange', lastStateChange))
        .toString();
  }
}

class TableServicesDtoBuilder
    implements Builder<TableServicesDto, TableServicesDtoBuilder> {
  _$TableServicesDto? _$v;

  int? _state;
  int? get state => _$this._state;
  set state(int? state) => _$this._state = state;

  int? _acknowledged;
  int? get acknowledged => _$this._acknowledged;
  set acknowledged(int? acknowledged) => _$this._acknowledged = acknowledged;

  String? _hostName;
  String? get hostName => _$this._hostName;
  set hostName(String? hostName) => _$this._hostName = hostName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _pluginOutput;
  String? get pluginOutput => _$this._pluginOutput;
  set pluginOutput(String? pluginOutput) => _$this._pluginOutput = pluginOutput;

  ListBuilder<num>? _comments;
  ListBuilder<num> get comments => _$this._comments ??= new ListBuilder<num>();
  set comments(ListBuilder<num>? comments) => _$this._comments = comments;

  DateTime? _lastStateChange;
  DateTime? get lastStateChange => _$this._lastStateChange;
  set lastStateChange(DateTime? lastStateChange) =>
      _$this._lastStateChange = lastStateChange;

  TableServicesDtoBuilder();

  TableServicesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _acknowledged = $v.acknowledged;
      _hostName = $v.hostName;
      _displayName = $v.displayName;
      _description = $v.description;
      _pluginOutput = $v.pluginOutput;
      _comments = $v.comments?.toBuilder();
      _lastStateChange = $v.lastStateChange;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TableServicesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TableServicesDto;
  }

  @override
  void update(void Function(TableServicesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TableServicesDto build() => _build();

  _$TableServicesDto _build() {
    _$TableServicesDto _$result;
    try {
      _$result = _$v ??
          new _$TableServicesDto._(
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'TableServicesDto', 'state'),
            acknowledged: acknowledged,
            hostName: hostName,
            displayName: displayName,
            description: description,
            pluginOutput: pluginOutput,
            comments: _comments?.build(),
            lastStateChange: lastStateChange,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'comments';
        _comments?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TableServicesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
