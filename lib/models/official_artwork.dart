class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
    required this.frontShiny,
  });

  final String frontDefault;
  final String frontShiny;

  factory OfficialArtwork.fromJson(Map<String, dynamic> json) => OfficialArtwork(
    frontDefault: json['front_default'],
    frontShiny: json['front_shiny'],
  );

  Map<String, dynamic> toJson() => {
    'front_default': frontDefault,
    'front_shiny': frontShiny,
  };
}