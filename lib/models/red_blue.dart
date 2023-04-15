class RedBlue {
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  final String backDefault;
  final String backGray;
  final String backTransparent;
  final String frontDefault;
  final String frontGray;
  final String frontTransparent;

  factory RedBlue.fromJson(Map<String, dynamic> json) => RedBlue(
    backDefault: json['back_default'],
    backGray: json['back_gray'],
    backTransparent: json['back_transparent'],
    frontDefault: json['front_default'],
    frontGray: json['front_gray'],
    frontTransparent: json['front_transparent'],
  );

  Map<String, dynamic> toJson() => {
    'back_default': backDefault,
    'back_gray': backGray,
    'back_transparent': backTransparent,
    'front_default': frontDefault,
    'front_gray': frontGray,
    'front_transparent': frontTransparent,
  };
}