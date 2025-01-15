// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lql_stats_tactical_overview_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LqlStatsTacticalOverviewDto>
    _$lqlStatsTacticalOverviewDtoSerializer =
    new _$LqlStatsTacticalOverviewDtoSerializer();
Serializer<LqlStatsTOEntryDto> _$lqlStatsTOEntryDtoSerializer =
    new _$LqlStatsTOEntryDtoSerializer();

class _$LqlStatsTacticalOverviewDtoSerializer
    implements StructuredSerializer<LqlStatsTacticalOverviewDto> {
  @override
  final Iterable<Type> types = const [
    LqlStatsTacticalOverviewDto,
    _$LqlStatsTacticalOverviewDto
  ];
  @override
  final String wireName = 'LqlStatsTacticalOverviewDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LqlStatsTacticalOverviewDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hosts',
      serializers.serialize(object.hosts,
          specifiedType: const FullType(LqlStatsTOEntryDto)),
      'services',
      serializers.serialize(object.services,
          specifiedType: const FullType(LqlStatsTOEntryDto)),
      'events',
      serializers.serialize(object.events,
          specifiedType: const FullType(LqlStatsTOEntryDto)),
    ];

    return result;
  }

  @override
  LqlStatsTacticalOverviewDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LqlStatsTacticalOverviewDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hosts':
          result.hosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LqlStatsTOEntryDto))!
              as LqlStatsTOEntryDto);
          break;
        case 'services':
          result.services.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LqlStatsTOEntryDto))!
              as LqlStatsTOEntryDto);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType: const FullType(LqlStatsTOEntryDto))!
              as LqlStatsTOEntryDto);
          break;
      }
    }

    return result.build();
  }
}

class _$LqlStatsTOEntryDtoSerializer
    implements StructuredSerializer<LqlStatsTOEntryDto> {
  @override
  final Iterable<Type> types = const [LqlStatsTOEntryDto, _$LqlStatsTOEntryDto];
  @override
  final String wireName = 'LqlStatsTOEntryDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LqlStatsTOEntryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'all',
      serializers.serialize(object.all, specifiedType: const FullType(int)),
      'problems',
      serializers.serialize(object.problems,
          specifiedType: const FullType(int)),
      'unhandled',
      serializers.serialize(object.unhandled,
          specifiedType: const FullType(int)),
      'stale',
      serializers.serialize(object.stale, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  LqlStatsTOEntryDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LqlStatsTOEntryDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'all':
          result.all = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'problems':
          result.problems = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'unhandled':
          result.unhandled = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'stale':
          result.stale = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LqlStatsTacticalOverviewDto extends LqlStatsTacticalOverviewDto {
  @override
  final LqlStatsTOEntryDto hosts;
  @override
  final LqlStatsTOEntryDto services;
  @override
  final LqlStatsTOEntryDto events;

  factory _$LqlStatsTacticalOverviewDto(
          [void Function(LqlStatsTacticalOverviewDtoBuilder)? updates]) =>
      (new LqlStatsTacticalOverviewDtoBuilder()..update(updates))._build();

  _$LqlStatsTacticalOverviewDto._(
      {required this.hosts, required this.services, required this.events})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hosts, r'LqlStatsTacticalOverviewDto', 'hosts');
    BuiltValueNullFieldError.checkNotNull(
        services, r'LqlStatsTacticalOverviewDto', 'services');
    BuiltValueNullFieldError.checkNotNull(
        events, r'LqlStatsTacticalOverviewDto', 'events');
  }

  @override
  LqlStatsTacticalOverviewDto rebuild(
          void Function(LqlStatsTacticalOverviewDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LqlStatsTacticalOverviewDtoBuilder toBuilder() =>
      new LqlStatsTacticalOverviewDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LqlStatsTacticalOverviewDto &&
        hosts == other.hosts &&
        services == other.services &&
        events == other.events;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hosts.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jc(_$hash, events.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LqlStatsTacticalOverviewDto')
          ..add('hosts', hosts)
          ..add('services', services)
          ..add('events', events))
        .toString();
  }
}

class LqlStatsTacticalOverviewDtoBuilder
    implements
        Builder<LqlStatsTacticalOverviewDto,
            LqlStatsTacticalOverviewDtoBuilder> {
  _$LqlStatsTacticalOverviewDto? _$v;

  LqlStatsTOEntryDtoBuilder? _hosts;
  LqlStatsTOEntryDtoBuilder get hosts =>
      _$this._hosts ??= new LqlStatsTOEntryDtoBuilder();
  set hosts(LqlStatsTOEntryDtoBuilder? hosts) => _$this._hosts = hosts;

  LqlStatsTOEntryDtoBuilder? _services;
  LqlStatsTOEntryDtoBuilder get services =>
      _$this._services ??= new LqlStatsTOEntryDtoBuilder();
  set services(LqlStatsTOEntryDtoBuilder? services) =>
      _$this._services = services;

  LqlStatsTOEntryDtoBuilder? _events;
  LqlStatsTOEntryDtoBuilder get events =>
      _$this._events ??= new LqlStatsTOEntryDtoBuilder();
  set events(LqlStatsTOEntryDtoBuilder? events) => _$this._events = events;

  LqlStatsTacticalOverviewDtoBuilder();

  LqlStatsTacticalOverviewDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hosts = $v.hosts.toBuilder();
      _services = $v.services.toBuilder();
      _events = $v.events.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LqlStatsTacticalOverviewDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LqlStatsTacticalOverviewDto;
  }

  @override
  void update(void Function(LqlStatsTacticalOverviewDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LqlStatsTacticalOverviewDto build() => _build();

  _$LqlStatsTacticalOverviewDto _build() {
    _$LqlStatsTacticalOverviewDto _$result;
    try {
      _$result = _$v ??
          new _$LqlStatsTacticalOverviewDto._(
            hosts: hosts.build(),
            services: services.build(),
            events: events.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hosts';
        hosts.build();
        _$failedField = 'services';
        services.build();
        _$failedField = 'events';
        events.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LqlStatsTacticalOverviewDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$LqlStatsTOEntryDto extends LqlStatsTOEntryDto {
  @override
  final int all;
  @override
  final int problems;
  @override
  final int unhandled;
  @override
  final int stale;

  factory _$LqlStatsTOEntryDto(
          [void Function(LqlStatsTOEntryDtoBuilder)? updates]) =>
      (new LqlStatsTOEntryDtoBuilder()..update(updates))._build();

  _$LqlStatsTOEntryDto._(
      {required this.all,
      required this.problems,
      required this.unhandled,
      required this.stale})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(all, r'LqlStatsTOEntryDto', 'all');
    BuiltValueNullFieldError.checkNotNull(
        problems, r'LqlStatsTOEntryDto', 'problems');
    BuiltValueNullFieldError.checkNotNull(
        unhandled, r'LqlStatsTOEntryDto', 'unhandled');
    BuiltValueNullFieldError.checkNotNull(
        stale, r'LqlStatsTOEntryDto', 'stale');
  }

  @override
  LqlStatsTOEntryDto rebuild(
          void Function(LqlStatsTOEntryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LqlStatsTOEntryDtoBuilder toBuilder() =>
      new LqlStatsTOEntryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LqlStatsTOEntryDto &&
        all == other.all &&
        problems == other.problems &&
        unhandled == other.unhandled &&
        stale == other.stale;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jc(_$hash, problems.hashCode);
    _$hash = $jc(_$hash, unhandled.hashCode);
    _$hash = $jc(_$hash, stale.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LqlStatsTOEntryDto')
          ..add('all', all)
          ..add('problems', problems)
          ..add('unhandled', unhandled)
          ..add('stale', stale))
        .toString();
  }
}

class LqlStatsTOEntryDtoBuilder
    implements Builder<LqlStatsTOEntryDto, LqlStatsTOEntryDtoBuilder> {
  _$LqlStatsTOEntryDto? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  int? _problems;
  int? get problems => _$this._problems;
  set problems(int? problems) => _$this._problems = problems;

  int? _unhandled;
  int? get unhandled => _$this._unhandled;
  set unhandled(int? unhandled) => _$this._unhandled = unhandled;

  int? _stale;
  int? get stale => _$this._stale;
  set stale(int? stale) => _$this._stale = stale;

  LqlStatsTOEntryDtoBuilder();

  LqlStatsTOEntryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _problems = $v.problems;
      _unhandled = $v.unhandled;
      _stale = $v.stale;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LqlStatsTOEntryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LqlStatsTOEntryDto;
  }

  @override
  void update(void Function(LqlStatsTOEntryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LqlStatsTOEntryDto build() => _build();

  _$LqlStatsTOEntryDto _build() {
    final _$result = _$v ??
        new _$LqlStatsTOEntryDto._(
          all: BuiltValueNullFieldError.checkNotNull(
              all, r'LqlStatsTOEntryDto', 'all'),
          problems: BuiltValueNullFieldError.checkNotNull(
              problems, r'LqlStatsTOEntryDto', 'problems'),
          unhandled: BuiltValueNullFieldError.checkNotNull(
              unhandled, r'LqlStatsTOEntryDto', 'unhandled'),
          stale: BuiltValueNullFieldError.checkNotNull(
              stale, r'LqlStatsTOEntryDto', 'stale'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
