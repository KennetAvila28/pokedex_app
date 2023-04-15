import 'red_blue.dart';

class GenerationI {
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  final RedBlue redBlue;
  final RedBlue yellow;

  factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
    redBlue: RedBlue.fromJson(json['red-blue']),
    yellow: RedBlue.fromJson(json['yellow']),
  );

  Map<String, dynamic> toJson() => {
    'red-blue': redBlue.toJson(),
    'yellow': yellow.toJson(),
  };
}