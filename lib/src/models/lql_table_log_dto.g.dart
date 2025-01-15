// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lql_table_log_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LqlTableLogDto> _$lqlTableLogDtoSerializer =
    new _$LqlTableLogDtoSerializer();

class _$LqlTableLogDtoSerializer
    implements StructuredSerializer<LqlTableLogDto> {
  @override
  final Iterable<Type> types = const [LqlTableLogDto, _$LqlTableLogDto];
  @override
  final String wireName = 'LqlTableLogDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, LqlTableLogDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'state',
      serializers.serialize(object.state, specifiedType: const FullType(int)),
      'current_host_name',
      serializers.serialize(object.hostName,
          specifiedType: const FullType(String)),
      'current_service_display_name',
      serializers.serialize(object.displayName,
          specifiedType: const FullType(String)),
      'plugin_output',
      serializers.serialize(object.pluginOutput,
          specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  LqlTableLogDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LqlTableLogDtoBuilder();

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
        case 'current_host_name':
          result.hostName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'current_service_display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'plugin_output':
          result.pluginOutput = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$LqlTableLogDto extends LqlTableLogDto {
  @override
  final int state;
  @override
  final String hostName;
  @override
  final String displayName;
  @override
  final String pluginOutput;
  @override
  final DateTime time;

  factory _$LqlTableLogDto([void Function(LqlTableLogDtoBuilder)? updates]) =>
      (new LqlTableLogDtoBuilder()..update(updates))._build();

  _$LqlTableLogDto._(
      {required this.state,
      required this.hostName,
      required this.displayName,
      required this.pluginOutput,
      required this.time})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(state, r'LqlTableLogDto', 'state');
    BuiltValueNullFieldError.checkNotNull(
        hostName, r'LqlTableLogDto', 'hostName');
    BuiltValueNullFieldError.checkNotNull(
        displayName, r'LqlTableLogDto', 'displayName');
    BuiltValueNullFieldError.checkNotNull(
        pluginOutput, r'LqlTableLogDto', 'pluginOutput');
    BuiltValueNullFieldError.checkNotNull(time, r'LqlTableLogDto', 'time');
  }

  @override
  LqlTableLogDto rebuild(void Function(LqlTableLogDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LqlTableLogDtoBuilder toBuilder() =>
      new LqlTableLogDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LqlTableLogDto &&
        state == other.state &&
        hostName == other.hostName &&
        displayName == other.displayName &&
        pluginOutput == other.pluginOutput &&
        time == other.time;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, hostName.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, pluginOutput.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LqlTableLogDto')
          ..add('state', state)
          ..add('hostName', hostName)
          ..add('displayName', displayName)
          ..add('pluginOutput', pluginOutput)
          ..add('time', time))
        .toString();
  }
}

class LqlTableLogDtoBuilder
    implements Builder<LqlTableLogDto, LqlTableLogDtoBuilder> {
  _$LqlTableLogDto? _$v;

  int? _state;
  int? get state => _$this._state;
  set state(int? state) => _$this._state = state;

  String? _hostName;
  String? get hostName => _$this._hostName;
  set hostName(String? hostName) => _$this._hostName = hostName;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _pluginOutput;
  String? get pluginOutput => _$this._pluginOutput;
  set pluginOutput(String? pluginOutput) => _$this._pluginOutput = pluginOutput;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  LqlTableLogDtoBuilder();

  LqlTableLogDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _hostName = $v.hostName;
      _displayName = $v.displayName;
      _pluginOutput = $v.pluginOutput;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LqlTableLogDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LqlTableLogDto;
  }

  @override
  void update(void Function(LqlTableLogDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LqlTableLogDto build() => _build();

  _$LqlTableLogDto _build() {
    final _$result = _$v ??
        new _$LqlTableLogDto._(
          state: BuiltValueNullFieldError.checkNotNull(
              state, r'LqlTableLogDto', 'state'),
          hostName: BuiltValueNullFieldError.checkNotNull(
              hostName, r'LqlTableLogDto', 'hostName'),
          displayName: BuiltValueNullFieldError.checkNotNull(
              displayName, r'LqlTableLogDto', 'displayName'),
          pluginOutput: BuiltValueNullFieldError.checkNotNull(
              pluginOutput, r'LqlTableLogDto', 'pluginOutput'),
          time: BuiltValueNullFieldError.checkNotNull(
              time, r'LqlTableLogDto', 'time'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
