class Workspace {
  int id;
  String title;
  String type;
  String description;
  BigInt userId;
  String uniqueId;
  String email;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  Workspace({
    required this.id,
    required this.title,
    required this.type,
    required this.description,
    required this.userId,
    required this.uniqueId,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  factory Workspace.fromJson(Map<String, dynamic> json) => Workspace(
        id: json["id"],
        title: json["title"],
        type: json["type"],
        description: json["description"],
        userId: json["user_id"],
        uniqueId: json["unique_id"],
        email: json["email"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: DateTime.parse(json["deleted_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "type": type,
        "description": description,
        "user_id": userId,
        "unique_id": uniqueId,
        "email": email,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt.toIso8601String(),
      };
}