class Species {
  Species({
    required this.name,
    required this.url,
  });

  final String name;
  final String url;

  factory Species.fromJson(Map<String, dynamic> json) => Species(
    name: json['name'],
    url: json['url'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'url': url,
  };
}