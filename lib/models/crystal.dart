class Crystal {
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  final String backDefault;
  final String backShiny;
  final String backShinyTransparent;
  final String backTransparent;
  final String frontDefault;
  final String frontShiny;
  final String frontShinyTransparent;
  final String frontTransparent;

  factory Crystal.fromJson(Map<String, dynamic> json) => Crystal(
    backDefault: json['back_default'],
    backShiny: json['back_shiny'],
    backShinyTransparent: json['back_shiny_transparent'],
    backTransparent: json['back_transparent'],
    frontDefault: json['front_default'],
    frontShiny: json['front_shiny'],
    frontShinyTransparent: json['front_shiny_transparent'],
    frontTransparent: json['front_transparent'],
  );

  Map<String, dynamic> toJson() => {
    'back_default': backDefault,
    'back_shiny': backShiny,
    'back_shiny_transparent': backShinyTransparent,
    'back_transparent': backTransparent,
    'front_default': frontDefault,
    'front_shiny': frontShiny,
    'front_shiny_transparent': frontShinyTransparent,
    'front_transparent': frontTransparent,
  };
}