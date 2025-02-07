import 'dart:convert';

sealed class StatsTacticalOverview {
  final StatsTOEntry hosts;
  final StatsTOEntry services;

  const StatsTacticalOverview._({
    required this.hosts,
    required this.services,
  });

  factory StatsTacticalOverview({
    required StatsTOEntry hosts,
    required StatsTOEntry services,
  }) = StatsTacticalOverviewImpl;

  factory StatsTacticalOverview.fromJson(Map<String, dynamic> json) {
    return StatsTacticalOverviewImpl(
      hosts: StatsTOEntry.fromJson(json['hosts'] as Map<String, dynamic>),
      services: StatsTOEntry.fromJson(json['services'] as Map<String, dynamic>),
    );
  }

  StatsTacticalOverview copyWith({
    StatsTOEntry? hosts,
    StatsTOEntry? services,
  });
}

final class StatsTacticalOverviewImpl extends StatsTacticalOverview {
  const StatsTacticalOverviewImpl({
    required super.hosts,
    required super.services,
  }) : super._();

  @override
  StatsTacticalOverview copyWith({
    StatsTOEntry? hosts,
    StatsTOEntry? services,
  }) {
    return StatsTacticalOverviewImpl(
      hosts: hosts ?? this.hosts,
      services: services ?? this.services,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsTacticalOverviewImpl &&
          runtimeType == other.runtimeType &&
          hosts == other.hosts &&
          services == other.services;

  @override
  int get hashCode => hosts.hashCode ^ services.hashCode;

  @override
  String toString() {
    return 'StatsTacticalOverview(hosts: $hosts, services: $services)';
  }
}

sealed class StatsTOEntry {
  final int all;
  final int warn;
  final int crit;
  final int unkn;

  const StatsTOEntry._({
    required this.all,
    required this.warn,
    required this.crit,
    required this.unkn,
  });

  factory StatsTOEntry({
    required int all,
    required int warn,
    required int crit,
    required int unkn,
  }) = StatsTOEntryImpl;

  factory StatsTOEntry.fromJson(Map<String, dynamic> json) {
    return StatsTOEntryImpl(
      all: json['all'] as int,
      warn: json['warn'] as int,
      crit: json['crit'] as int,
      unkn: json['unkn'] as int,
    );
  }

  StatsTOEntry copyWith({
    int? all,
    int? warn,
    int? crit,
    int? unkn,
  });
}

final class StatsTOEntryImpl extends StatsTOEntry {
  const StatsTOEntryImpl({
    required super.all,
    required super.warn,
    required super.crit,
    required super.unkn,
  }) : super._();

  @override
  StatsTOEntry copyWith({
    int? all,
    int? warn,
    int? crit,
    int? unkn,
  }) {
    return StatsTOEntryImpl(
      all: all ?? this.all,
      warn: warn ?? this.warn,
      crit: crit ?? this.crit,
      unkn: unkn ?? this.unkn,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsTOEntryImpl &&
          runtimeType == other.runtimeType &&
          all == other.all &&
          warn == other.warn &&
          crit == other.crit &&
          unkn == other.unkn;

  @override
  int get hashCode => all.hashCode ^ warn.hashCode ^ crit.hashCode ^ unkn.hashCode;

  @override
  String toString() {
    return 'StatsTOEntry(all: $all, warn: $warn, crit: $crit, unkn: $unkn)';
  }
}
