// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lql_table_services_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LqlTableServicesDto> _$lqlTableServicesDtoSerializer =
    new _$LqlTableServicesDtoSerializer();

class _$LqlTableServicesDtoSerializer
    implements StructuredSerializer<LqlTableServicesDto> {
  @override
  final Iterable<Type> types = const [
    LqlTableServicesDto,
    _$LqlTableServicesDto
  ];
  @override
  final String wireName = 'LqlTableServicesDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LqlTableServicesDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'state',
      serializers.serialize(object.state, specifiedType: const FullType(int)),
      'host_name',
      serializers.serialize(object.hostName,
          specifiedType: const FullType(String)),
    ];
    Object? value;
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
  LqlTableServicesDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LqlTableServicesDtoBuilder();

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
        case 'host_name':
          result.hostName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
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

class _$LqlTableServicesDto extends LqlTableServicesDto {
  @override
  final int state;
  @override
  final String hostName;
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

  factory _$LqlTableServicesDto(
          [void Function(LqlTableServicesDtoBuilder)? updates]) =>
      (new LqlTableServicesDtoBuilder()..update(updates))._build();

  _$LqlTableServicesDto._(
      {required this.state,
      required this.hostName,
      this.displayName,
      this.description,
      this.pluginOutput,
      this.comments,
      this.lastStateChange})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        state, r'LqlTableServicesDto', 'state');
    BuiltValueNullFieldError.checkNotNull(
        hostName, r'LqlTableServicesDto', 'hostName');
  }

  @override
  LqlTableServicesDto rebuild(
          void Function(LqlTableServicesDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LqlTableServicesDtoBuilder toBuilder() =>
      new LqlTableServicesDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LqlTableServicesDto &&
        state == other.state &&
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
    return (newBuiltValueToStringHelper(r'LqlTableServicesDto')
          ..add('state', state)
          ..add('hostName', hostName)
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('pluginOutput', pluginOutput)
          ..add('comments', comments)
          ..add('lastStateChange', lastStateChange))
        .toString();
  }
}

class LqlTableServicesDtoBuilder
    implements Builder<LqlTableServicesDto, LqlTableServicesDtoBuilder> {
  _$LqlTableServicesDto? _$v;

  int? _state;
  int? get state => _$this._state;
  set state(int? state) => _$this._state = state;

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

  LqlTableServicesDtoBuilder();

  LqlTableServicesDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
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
  void replace(LqlTableServicesDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LqlTableServicesDto;
  }

  @override
  void update(void Function(LqlTableServicesDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LqlTableServicesDto build() => _build();

  _$LqlTableServicesDto _build() {
    _$LqlTableServicesDto _$result;
    try {
      _$result = _$v ??
          new _$LqlTableServicesDto._(
            state: BuiltValueNullFieldError.checkNotNull(
                state, r'LqlTableServicesDto', 'state'),
            hostName: BuiltValueNullFieldError.checkNotNull(
                hostName, r'LqlTableServicesDto', 'hostName'),
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
            r'LqlTableServicesDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
