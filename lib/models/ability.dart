import 'package:pokedex_app/models/species.dart';

class Ability {
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  final Species ability;
  final bool isHidden;
  final int slot;

  factory Ability.fromJson(Map<String, dynamic> json) => Ability(
    ability: Species.fromJson(json['ability']),
    isHidden: json['is_hidden'],
    slot: json['slot'],
  );

  Map<String, dynamic> toJson() => {
    'ability': ability.toJson(),
    'is_hidden': isHidden,
    'slot': slot,
  };
}