class Gold {
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    this.frontTransparent,
  });

  final String backDefault;
  final String backShiny;
  final String frontDefault;
  final String frontShiny;
  final String? frontTransparent;

  factory Gold.fromJson(Map<String, dynamic> json) => Gold(
    backDefault: json['back_default'],
    backShiny: json['back_shiny'],
    frontDefault: json['front_default'],
    frontShiny: json['front_shiny'],
    frontTransparent: json['front_transparent'],
  );

  Map<String, dynamic> toJson() => {
    'back_default': backDefault,
    'back_shiny': backShiny,
    'front_default': frontDefault,
    'front_shiny': frontShiny,
    'front_transparent': frontTransparent,
  };
}