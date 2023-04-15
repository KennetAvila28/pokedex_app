import 'species.dart';

class VersionDetail {
  VersionDetail({
    required this.rarity,
    required this.version,
  });

  final int rarity;
  final Species version;

  factory VersionDetail.fromJson(Map<String, dynamic> json) => VersionDetail(
    rarity: json['rarity'],
    version: Species.fromJson(json['version']),
  );

  Map<String, dynamic> toJson() => {
    'rarity': rarity,
    'version': version.toJson(),
  };
}