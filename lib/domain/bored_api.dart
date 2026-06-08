class BoredApi {
  String activity;
  double availability;
  String type;
  int participants;
  double price;
  String accessibility;
  String duration;
  bool kidFriendly;
  String key;

  BoredApi({
    required this.activity,
    required this.availability,
    required this.type,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.kidFriendly,
    required this.key,
  });

  factory BoredApi.fromJson(Map<String, dynamic> json) {
    return BoredApi(
      activity: json['activity'] as String,
      availability: (json['availability'] as num).toDouble(),
      type: json['type'] as String,
      participants: json['participants'] as int,
      price: (json['price'] as num).toDouble(),
      accessibility: json['accessibility'] as String,
      duration: json['duration'] as String,
      kidFriendly: json['kidFriendly'] as bool,
      key: json['key'].toString()
    );
  }
}