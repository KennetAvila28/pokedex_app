import 'species.dart';

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  final int slot;
  final Species type;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
    slot: json['slot'],
    type: Species.fromJson(json['type']),
  );

  Map<String, dynamic> toJson() => {
    'slot': slot,
    'type': type.toJson(),
  };
}