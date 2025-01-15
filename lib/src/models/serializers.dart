import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'datetime_from_epoch_serializer.dart';

import './lql_stats_tactical_overview_dto.dart';
import './lql_table_comments_dto.dart';
import './lql_table_hosts_dto.dart';
import './lql_table_log_dto.dart';
import './lql_table_services_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  LqlStatsTacticalOverviewDto,
  LqlTableCommentsDto,
  LqlTableHostsDto,
  LqlTableLogDto,
  LqlTableServicesDto,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(DateTimeFromEpoch()))
    .build();
