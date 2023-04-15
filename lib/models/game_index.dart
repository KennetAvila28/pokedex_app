import 'species.dart';

class GameIndex {
  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  final int gameIndex;
  final Species version;

  factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
    gameIndex: json['game_index'],
    version: Species.fromJson(json['version']),
  );

  Map<String, dynamic> toJson() => {
    'game_index': gameIndex,
    'version': version.toJson(),
  };
}