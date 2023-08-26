class Testimony {
  final int id;
  final DateTime createdAt;
  final String author;
  final String content;

  Testimony({
    required this.id,
    required this.createdAt,
    required this.author,
    required this.content,
  });

  factory Testimony.fromJson(Map<String, dynamic> json) => Testimony(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        author: json["author"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "author": author,
        "content": content,
      };
}
