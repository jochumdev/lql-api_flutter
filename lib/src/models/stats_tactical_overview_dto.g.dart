// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats_tactical_overview_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StatsTacticalOverviewDto> _$statsTacticalOverviewDtoSerializer =
    new _$StatsTacticalOverviewDtoSerializer();
Serializer<StatsTOEntryDto> _$statsTOEntryDtoSerializer =
    new _$StatsTOEntryDtoSerializer();

class _$StatsTacticalOverviewDtoSerializer
    implements StructuredSerializer<StatsTacticalOverviewDto> {
  @override
  final Iterable<Type> types = const [
    StatsTacticalOverviewDto,
    _$StatsTacticalOverviewDto
  ];
  @override
  final String wireName = 'StatsTacticalOverviewDto';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, StatsTacticalOverviewDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'hosts',
      serializers.serialize(object.hosts,
          specifiedType: const FullType(StatsTOEntryDto)),
      'services',
      serializers.serialize(object.services,
          specifiedType: const FullType(StatsTOEntryDto)),
    ];

    return result;
  }

  @override
  StatsTacticalOverviewDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatsTacticalOverviewDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'hosts':
          result.hosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StatsTOEntryDto))!
              as StatsTOEntryDto);
          break;
        case 'services':
          result.services.replace(serializers.deserialize(value,
                  specifiedType: const FullType(StatsTOEntryDto))!
              as StatsTOEntryDto);
          break;
      }
    }

    return result.build();
  }
}

class _$StatsTOEntryDtoSerializer
    implements StructuredSerializer<StatsTOEntryDto> {
  @override
  final Iterable<Type> types = const [StatsTOEntryDto, _$StatsTOEntryDto];
  @override
  final String wireName = 'StatsTOEntryDto';

  @override
  Iterable<Object?> serialize(Serializers serializers, StatsTOEntryDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'all',
      serializers.serialize(object.all, specifiedType: const FullType(int)),
      'warn',
      serializers.serialize(object.warn, specifiedType: const FullType(int)),
      'crit',
      serializers.serialize(object.crit, specifiedType: const FullType(int)),
      'unkn',
      serializers.serialize(object.unkn, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  StatsTOEntryDto deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatsTOEntryDtoBuilder();

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
        case 'warn':
          result.warn = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'crit':
          result.crit = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'unkn':
          result.unkn = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$StatsTacticalOverviewDto extends StatsTacticalOverviewDto {
  @override
  final StatsTOEntryDto hosts;
  @override
  final StatsTOEntryDto services;

  factory _$StatsTacticalOverviewDto(
          [void Function(StatsTacticalOverviewDtoBuilder)? updates]) =>
      (new StatsTacticalOverviewDtoBuilder()..update(updates))._build();

  _$StatsTacticalOverviewDto._({required this.hosts, required this.services})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hosts, r'StatsTacticalOverviewDto', 'hosts');
    BuiltValueNullFieldError.checkNotNull(
        services, r'StatsTacticalOverviewDto', 'services');
  }

  @override
  StatsTacticalOverviewDto rebuild(
          void Function(StatsTacticalOverviewDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsTacticalOverviewDtoBuilder toBuilder() =>
      new StatsTacticalOverviewDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsTacticalOverviewDto &&
        hosts == other.hosts &&
        services == other.services;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, hosts.hashCode);
    _$hash = $jc(_$hash, services.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsTacticalOverviewDto')
          ..add('hosts', hosts)
          ..add('services', services))
        .toString();
  }
}

class StatsTacticalOverviewDtoBuilder
    implements
        Builder<StatsTacticalOverviewDto, StatsTacticalOverviewDtoBuilder> {
  _$StatsTacticalOverviewDto? _$v;

  StatsTOEntryDtoBuilder? _hosts;
  StatsTOEntryDtoBuilder get hosts =>
      _$this._hosts ??= new StatsTOEntryDtoBuilder();
  set hosts(StatsTOEntryDtoBuilder? hosts) => _$this._hosts = hosts;

  StatsTOEntryDtoBuilder? _services;
  StatsTOEntryDtoBuilder get services =>
      _$this._services ??= new StatsTOEntryDtoBuilder();
  set services(StatsTOEntryDtoBuilder? services) => _$this._services = services;

  StatsTacticalOverviewDtoBuilder();

  StatsTacticalOverviewDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hosts = $v.hosts.toBuilder();
      _services = $v.services.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsTacticalOverviewDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatsTacticalOverviewDto;
  }

  @override
  void update(void Function(StatsTacticalOverviewDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsTacticalOverviewDto build() => _build();

  _$StatsTacticalOverviewDto _build() {
    _$StatsTacticalOverviewDto _$result;
    try {
      _$result = _$v ??
          new _$StatsTacticalOverviewDto._(
            hosts: hosts.build(),
            services: services.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'hosts';
        hosts.build();
        _$failedField = 'services';
        services.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StatsTacticalOverviewDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$StatsTOEntryDto extends StatsTOEntryDto {
  @override
  final int all;
  @override
  final int warn;
  @override
  final int crit;
  @override
  final int unkn;

  factory _$StatsTOEntryDto([void Function(StatsTOEntryDtoBuilder)? updates]) =>
      (new StatsTOEntryDtoBuilder()..update(updates))._build();

  _$StatsTOEntryDto._(
      {required this.all,
      required this.warn,
      required this.crit,
      required this.unkn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(all, r'StatsTOEntryDto', 'all');
    BuiltValueNullFieldError.checkNotNull(warn, r'StatsTOEntryDto', 'warn');
    BuiltValueNullFieldError.checkNotNull(crit, r'StatsTOEntryDto', 'crit');
    BuiltValueNullFieldError.checkNotNull(unkn, r'StatsTOEntryDto', 'unkn');
  }

  @override
  StatsTOEntryDto rebuild(void Function(StatsTOEntryDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsTOEntryDtoBuilder toBuilder() =>
      new StatsTOEntryDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsTOEntryDto &&
        all == other.all &&
        warn == other.warn &&
        crit == other.crit &&
        unkn == other.unkn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, all.hashCode);
    _$hash = $jc(_$hash, warn.hashCode);
    _$hash = $jc(_$hash, crit.hashCode);
    _$hash = $jc(_$hash, unkn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatsTOEntryDto')
          ..add('all', all)
          ..add('warn', warn)
          ..add('crit', crit)
          ..add('unkn', unkn))
        .toString();
  }
}

class StatsTOEntryDtoBuilder
    implements Builder<StatsTOEntryDto, StatsTOEntryDtoBuilder> {
  _$StatsTOEntryDto? _$v;

  int? _all;
  int? get all => _$this._all;
  set all(int? all) => _$this._all = all;

  int? _warn;
  int? get warn => _$this._warn;
  set warn(int? warn) => _$this._warn = warn;

  int? _crit;
  int? get crit => _$this._crit;
  set crit(int? crit) => _$this._crit = crit;

  int? _unkn;
  int? get unkn => _$this._unkn;
  set unkn(int? unkn) => _$this._unkn = unkn;

  StatsTOEntryDtoBuilder();

  StatsTOEntryDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _all = $v.all;
      _warn = $v.warn;
      _crit = $v.crit;
      _unkn = $v.unkn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsTOEntryDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StatsTOEntryDto;
  }

  @override
  void update(void Function(StatsTOEntryDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatsTOEntryDto build() => _build();

  _$StatsTOEntryDto _build() {
    final _$result = _$v ??
        new _$StatsTOEntryDto._(
          all: BuiltValueNullFieldError.checkNotNull(
              all, r'StatsTOEntryDto', 'all'),
          warn: BuiltValueNullFieldError.checkNotNull(
              warn, r'StatsTOEntryDto', 'warn'),
          crit: BuiltValueNullFieldError.checkNotNull(
              crit, r'StatsTOEntryDto', 'crit'),
          unkn: BuiltValueNullFieldError.checkNotNull(
              unkn, r'StatsTOEntryDto', 'unkn'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
