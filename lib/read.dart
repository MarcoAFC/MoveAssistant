import 'dart:convert';

Read readFromJson(String str) => Read.fromJson(json.decode(str));

String readToJson(Read data) => json.encode(data.toJson());

class Read {
  int id;
  double distance;
  int temperature;

  Read({this.id, this.distance, this.temperature});

  factory Read.fromJson(Map<String, dynamic> json) => Read(
    id: json["id"],
    distance: json["distance"],
    temperature: json["temperature"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "distance": distance,
    "temperature": temperature,
  };

}

