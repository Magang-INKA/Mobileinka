class Mqtt {
  final int userId;
  final int id;
  final String title;

  const Mqtt({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Mqtt.fromJson(Map<String, dynamic> json) {
    return Mqtt(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}