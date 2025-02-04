import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'datetime_from_epoch_serializer.dart';

import 'stats_tactical_overview_dto.dart';
import 'table_comments_dto.dart';
import 'table_hosts_dto.dart';
import 'table_log_dto.dart';
import 'table_services_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  StatsTacticalOverviewDto,
  TableCommentsDto,
  TableHostsDto,
  TableLogDto,
  TableServicesDto,
])
final Serializers serializers = (_$serializers.toBuilder()
      ..addPlugin(StandardJsonPlugin())
      ..add(DateTimeFromEpoch()))
    .build();
