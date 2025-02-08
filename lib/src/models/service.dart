sealed class Service {
  final int state;
  final int? acknowledged;
  final String? hostName;
  final String? displayName;
  final String? description;
  final String? pluginOutput;
  final List<num>? comments;
  final DateTime? lastStateChange;

  const Service._({
    required this.state,
    this.acknowledged,
    this.hostName,
    this.displayName,
    this.description,
    this.pluginOutput,
    this.comments,
    this.lastStateChange,
  });

  factory Service({
    required int state,
    int? acknowledged,
    String? hostName,
    String? displayName,
    String? description,
    String? pluginOutput,
    List<num>? comments,
    DateTime? lastStateChange,
  }) = ServiceImpl;

  factory Service.fromJson(Map<String, dynamic> json) {
    return ServiceImpl(
      state: json['state'] as int,
      acknowledged: json['acknowledged'] as int?,
      hostName: json['host_name'] as String?,
      displayName: json['display_name'] as String?,
      description: json['description'] as String?,
      pluginOutput: json['plugin_output'] as String?,
      comments: (json['comments'] as List<dynamic>?)?.cast<num>(),
      lastStateChange: json['last_state_change'] != null
          ? DateTime.fromMillisecondsSinceEpoch(((json['last_state_change'] as int) * 1000).round())
          : null,
    );
  }

  Service copyWith({
    int? state,
    int? acknowledged,
    String? hostName,
    String? displayName,
    String? description,
    String? pluginOutput,
    List<num>? comments,
    DateTime? lastStateChange,
  });
}

final class ServiceImpl extends Service {
  const ServiceImpl({
    required super.state,
    super.acknowledged,
    super.hostName,
    super.displayName,
    super.description,
    super.pluginOutput,
    super.comments,
    super.lastStateChange,
  }) : super._();

  @override
  Service copyWith({
    int? state,
    int? acknowledged,
    String? hostName,
    String? displayName,
    String? description,
    String? pluginOutput,
    List<num>? comments,
    DateTime? lastStateChange,
  }) {
    return ServiceImpl(
      state: state ?? this.state,
      acknowledged: acknowledged ?? this.acknowledged,
      hostName: hostName ?? this.hostName,
      displayName: displayName ?? this.displayName,
      description: description ?? this.description,
      pluginOutput: pluginOutput ?? this.pluginOutput,
      comments: comments ?? this.comments,
      lastStateChange: lastStateChange ?? this.lastStateChange,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceImpl &&
          runtimeType == other.runtimeType &&
          state == other.state &&
          acknowledged == other.acknowledged &&
          hostName == other.hostName &&
          displayName == other.displayName &&
          description == other.description &&
          pluginOutput == other.pluginOutput &&
          comments == other.comments &&
          lastStateChange == other.lastStateChange;

  @override
  int get hashCode =>
      state.hashCode ^
      acknowledged.hashCode ^
      hostName.hashCode ^
      displayName.hashCode ^
      description.hashCode ^
      pluginOutput.hashCode ^
      comments.hashCode ^
      lastStateChange.hashCode;

  @override
  String toString() {
    return 'Service(state: $state, acknowledged: $acknowledged, hostName: $hostName, displayName: $displayName, description: $description, pluginOutput: $pluginOutput, comments: $comments, lastStateChange: $lastStateChange)';
  }
}
