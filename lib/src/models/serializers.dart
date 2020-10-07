import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'datetime_from_epoch_serializer.dart';
import 'models.dart';

part 'serializers.g.dart';

@SerializersFor([
  LqlStatsTacticalOverviewDto,
  LqlTableHostsDto,
  LqlTableServicesDto,
  LqlTableCommentsDto,
])
final Serializers serializers = (_$serializers.toBuilder()
  ..addPlugin(StandardJsonPlugin())
  ..add(DateTimeFromEpoch()))
    .build();
