class User2Dto {
  int? id;
  String? name;

  User2Dto({
    this.id,
    this.name,
  });

  factory User2Dto.fromJson(Map<String, dynamic> json) => User2Dto(
    id: json['id'],
    name: json['name'],
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
  };
}
