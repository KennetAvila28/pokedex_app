import 'other.dart';
import 'versions.dart';

class Sprites {
  Sprites({
    required this.backDefault,
    this.backFemale,
    required this.backShiny,
    this.backShinyFemale,
    required this.frontDefault,
    this.frontFemale,
    required this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
  });

  final String backDefault;
  final dynamic backFemale;
  final String backShiny;
  final dynamic backShinyFemale;
  final String frontDefault;
  final dynamic frontFemale;
  final String frontShiny;
  final dynamic frontShinyFemale;
  final Other? other;
  final Versions? versions;
  final Sprites? animated;

  factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
    backDefault: json['back_default'],
    backFemale: json['back_female'],
    backShiny: json['back_shiny'],
    backShinyFemale: json['back_shiny_female'],
    frontDefault: json['front_default'],
    frontFemale: json['front_female'],
    frontShiny: json['front_shiny'],
    frontShinyFemale: json['front_shiny_female'],
    other: json['other'] == null ? null : Other.fromJson(json['other']),
    versions: json['versions'] == null ? null : Versions.fromJson(json['versions']),
    animated: json['animated'] == null ? null : Sprites.fromJson(json['animated']),
  );

  Map<String, dynamic> toJson() => {
    'back_default': backDefault,
    'back_female': backFemale,
    'back_shiny': backShiny,
    'back_shiny_female': backShinyFemale,
    'front_default': frontDefault,
    'front_female': frontFemale,
    'front_shiny': frontShiny,
    'front_shiny_female': frontShinyFemale,
    'other': other?.toJson(),
    'versions': versions?.toJson(),
    'animated': animated?.toJson(),
  };
}