import 'gold.dart';
import 'official_artwork.dart';

class GenerationIii {
  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  final OfficialArtwork emerald;
  final Gold fireredLeafgreen;
  final Gold rubySapphire;

  factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
    emerald: OfficialArtwork.fromJson(json['emerald']),
    fireredLeafgreen: Gold.fromJson(json['firered-leafgreen']),
    rubySapphire: Gold.fromJson(json['ruby-sapphire']),
  );

  Map<String, dynamic> toJson() => {
    'emerald': emerald.toJson(),
    'firered-leafgreen': fireredLeafgreen.toJson(),
    'ruby-sapphire': rubySapphire.toJson(),
  };
}
