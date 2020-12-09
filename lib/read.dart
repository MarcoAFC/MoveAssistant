import 'dart:convert';

Read readFromJson(String str) => Read.fromJson(json.decode(str));

String readToJson(Read data) => json.encode(data.toJson());

class Read {
  int id;
  double distance;
  double temperature;

  Read({this.id, this.distance, this.temperature});

  factory Read.fromJson(Map<String, dynamic> json) => Read(
    id: int.tryParse(json["id"]?? "0"),
    distance: double.tryParse(json["distance"]?? "0"),
    temperature: double.tryParse(json["temperature"]?? "0"),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "distance": distance,
    "temperature": temperature,
  };

  static List<Read> listFromJson(List<Map<String, dynamic>> list){
    return list.map((e) => e != null? Read.fromJson(e) : null).toList();
  }
}

