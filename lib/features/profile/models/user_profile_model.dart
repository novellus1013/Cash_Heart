class UserProfileModel {
  final String id;
  final String email;
  final String name;
  final DateTime createdAt;

  UserProfileModel({
    required this.id,
    required this.email,
    required this.name,
    required this.createdAt,
  });

  UserProfileModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        name = json['name'],
        createdAt = json['createdAt'];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'created_at': createdAt,
      'name': name,
      'email': email,
    };
  }
}
