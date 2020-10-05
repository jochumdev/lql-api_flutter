import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lql_stats_tactical_overview_dto.g.dart';

abstract class LqlStatsTacticalOverviewDto
    implements Built<LqlStatsTacticalOverviewDto, LqlStatsTacticalOverviewDtoBuilder> {

  static Serializer<LqlStatsTacticalOverviewDto> get serializer =>
      _$lqlStatsTacticalOverviewDtoSerializer;

  LqlStatsTOEntryDto get hosts;
  LqlStatsTOEntryDto get services;
  LqlStatsTOEntryDto get events;

  factory LqlStatsTacticalOverviewDto(
      [void Function(LqlStatsTacticalOverviewDtoBuilder) updates]) = _$LqlStatsTacticalOverviewDto;

  LqlStatsTacticalOverviewDto._();
}

abstract class LqlStatsTOEntryDto
    implements Built<LqlStatsTOEntryDto, LqlStatsTOEntryDtoBuilder> {

  static Serializer<LqlStatsTOEntryDto> get serializer =>
      _$lqlStatsTOEntryDtoSerializer;

  num get all;
  num get problems;
  num get unhandled;
  num get stale;

  factory LqlStatsTOEntryDto(
      [void Function(LqlStatsTOEntryDtoBuilder) updates]) = _$LqlStatsTOEntryDto;

  LqlStatsTOEntryDto._();
}