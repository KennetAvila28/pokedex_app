class Home {
  Home({
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
  });

  final String frontDefault;
  final dynamic frontFemale;
  final String frontShiny;
  final dynamic frontShinyFemale;

  factory Home.fromJson(Map<String, dynamic> json) => Home(
    frontDefault: json['front_default'],
    frontFemale: json['front_female'],
    frontShiny: json['front_shiny'],
    frontShinyFemale: json['front_shiny_female'],
  );

  Map<String, dynamic> toJson() => {
    'front_default': frontDefault,
    'front_female': frontFemale,
    'front_shiny': frontShiny,
    'front_shiny_female': frontShinyFemale,
  };
}
