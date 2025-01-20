import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'stats_tactical_overview_dto.g.dart';

abstract class StatsTacticalOverviewDto
    implements
        Built<StatsTacticalOverviewDto, StatsTacticalOverviewDtoBuilder> {
  static Serializer<StatsTacticalOverviewDto> get serializer =>
      _$statsTacticalOverviewDtoSerializer;

  StatsTOEntryDto get hosts;
  StatsTOEntryDto get services;

  factory StatsTacticalOverviewDto(
          [void Function(StatsTacticalOverviewDtoBuilder) updates]) =
      _$StatsTacticalOverviewDto;

  StatsTacticalOverviewDto._();
}

abstract class StatsTOEntryDto
    implements Built<StatsTOEntryDto, StatsTOEntryDtoBuilder> {
  static Serializer<StatsTOEntryDto> get serializer =>
      _$statsTOEntryDtoSerializer;

  int get all;
  int get warn;
  int get crit;
  int get unkn;

  factory StatsTOEntryDto([void Function(StatsTOEntryDtoBuilder) updates]) =
      _$StatsTOEntryDto;

  StatsTOEntryDto._();
}
