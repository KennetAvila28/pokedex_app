import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ability.dart';
import 'game_index.dart';
import 'held_item.dart';
import 'move.dart';
import 'species.dart';
import 'sprites.dart';
import 'stat.dart';
import 'type.dart';
class Pokemon {
  Pokemon({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastTypes,
    required this.species,
    // required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  final List<Ability> abilities;
  final int baseExperience;
  final List<Species> forms;
  final List<GameIndex> gameIndices;
  final int height;
  final List<HeldItem> heldItems;
  final int id;
  final bool isDefault;
  final String locationAreaEncounters;
  final List<Move> moves;
  final String name;
  final int order;
  final List<dynamic> pastTypes;
  final Species species;
  // final Sprites sprites;
  final List<Stat> stats;
  final List<Type> types;
  final int weight;

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
    abilities: List<Ability>.from(json['abilities'].map((x) => Ability.fromJson(x))),
    baseExperience: json['base_experience'],
    forms: List<Species>.from(json['forms'].map((x) => Species.fromJson(x))),
    gameIndices: List<GameIndex>.from(json['game_indices'].map((x) => GameIndex.fromJson(x))),
    height: json['height'],
    heldItems: List<HeldItem>.from(json['held_items'].map((x) => HeldItem.fromJson(x))),
    id: json['id'],
    isDefault: json['is_default'],
    locationAreaEncounters: json['location_area_encounters'],
    moves: List<Move>.from(json['moves'].map((x) => Move.fromJson(x))),
    name: json['name'],
    order: json['order'],
    pastTypes: List<dynamic>.from(json['past_types'].map((x) => x)),
    species: Species.fromJson(json['species']),
    // sprites: Sprites.fromJson(json['sprites']),
    stats: List<Stat>.from(json['stats'].map((x) => Stat.fromJson(x))),
    types: List<Type>.from(json['types'].map((x) => Type.fromJson(x))),
    weight: json['weight'],
  );

  Map<String, dynamic> toJson() => {
    'abilities': List<dynamic>.from(abilities.map((x) => x.toJson())),
    'base_experience': baseExperience,
    'forms': List<dynamic>.from(forms.map((x) => x.toJson())),
    'game_indices': List<dynamic>.from(gameIndices.map((x) => x.toJson())),
    'height': height,
    'held_items': List<dynamic>.from(heldItems.map((x) => x.toJson())),
    'id': id,
    'is_default': isDefault,
    'location_area_encounters': locationAreaEncounters,
    'moves': List<dynamic>.from(moves.map((x) => x.toJson())),
    'name': name,
    'order': order,
    'past_types': List<dynamic>.from(pastTypes.map((x) => x)),
    'species': species.toJson(),
    // 'sprites': sprites.toJson(),
    'stats': List<dynamic>.from(stats.map((x) => x.toJson())),
    'types': List<dynamic>.from(types.map((x) => x.toJson())),
    'weight': weight,
  };
}








































