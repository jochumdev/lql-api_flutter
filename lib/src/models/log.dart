sealed class Log {
  final int state;
  final String hostName;
  final String displayName;
  final String pluginOutput;
  final DateTime time;

  const Log._({
    required this.state,
    required this.hostName,
    required this.displayName,
    required this.pluginOutput,
    required this.time,
  });

  factory Log({
    required int state,
    required String hostName,
    required String displayName,
    required String pluginOutput,
    required DateTime time,
  }) = LogImpl;

  factory Log.fromJson(Map<String, dynamic> json) {
    return LogImpl(
      state: json['state'] as int,
      hostName: json['current_host_name'] as String,
      displayName: json['current_service_display_name'] as String,
      pluginOutput: json['plugin_output'] as String,
      time: DateTime.parse(json['time'] as String),
    );
  }

  Log copyWith({
    int? state,
    String? hostName,
    String? displayName,
    String? pluginOutput,
    DateTime? time,
  });
}

final class LogImpl extends Log {
  const LogImpl({
    required super.state,
    required super.hostName,
    required super.displayName,
    required super.pluginOutput,
    required super.time,
  }) : super._();

  @override
  Log copyWith({
    int? state,
    String? hostName,
    String? displayName,
    String? pluginOutput,
    DateTime? time,
  }) {
    return LogImpl(
      state: state ?? this.state,
      hostName: hostName ?? this.hostName,
      displayName: displayName ?? this.displayName,
      pluginOutput: pluginOutput ?? this.pluginOutput,
      time: time ?? this.time,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LogImpl &&
          runtimeType == other.runtimeType &&
          state == other.state &&
          hostName == other.hostName &&
          displayName == other.displayName &&
          pluginOutput == other.pluginOutput &&
          time == other.time;

  @override
  int get hashCode =>
      state.hashCode ^
      hostName.hashCode ^
      displayName.hashCode ^
      pluginOutput.hashCode ^
      time.hashCode;

  @override
  String toString() {
    return 'Log(state: $state, hostName: $hostName, displayName: $displayName, pluginOutput: $pluginOutput, time: $time)';
  }
}
