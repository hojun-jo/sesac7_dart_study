class Photo2Dto {
  int? id;
  String? type;
  String? title;
  String? content;
  String? createdAt;

  Photo2Dto({
    this.id,
    this.type,
    this.title,
    this.content,
    this.createdAt,
  });

  factory Photo2Dto.fromJson(Map<String, dynamic> json) => Photo2Dto(
    id: json['id'] as int?,
    type: json['type'] as String?,
    title: json['title'] as String?,
    content: json['content'] as String?,
    createdAt: json['created_at'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'type': type,
    'title': title,
    'content': content,
    'created_at': createdAt,
  };
}
