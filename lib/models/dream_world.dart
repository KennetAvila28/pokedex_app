class DreamWorld {
  DreamWorld({
    required this.frontDefault,
    this.frontFemale,
  });

  final String frontDefault;
  final dynamic frontFemale;

  factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
    frontDefault: json['front_default'],
    frontFemale: json['front_female'],
  );

  Map<String, dynamic> toJson() => {
    'front_default': frontDefault,
    'front_female': frontFemale,
  };
}

