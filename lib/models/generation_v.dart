import 'sprites.dart';

class GenerationV {
  GenerationV({
    required this.blackWhite,
  });

  final Sprites blackWhite;

  factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
    blackWhite: Sprites.fromJson(json['black-white']),
  );

  Map<String, dynamic> toJson() => {
    'black-white': blackWhite.toJson(),
  };
}

