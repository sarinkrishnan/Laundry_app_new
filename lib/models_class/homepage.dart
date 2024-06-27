class CatogoryModel {
  final String message;
  final String status;
  final List<Datum> data;

  CatogoryModel({
    required this.message,
    required this.status,
    required this.data,
  });

  factory CatogoryModel.fromJson(Map<String, dynamic> json) => CatogoryModel(
        message: json["message"],
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  final String id;
  final String name;
  final String image;
  final int v;

  Datum({
    required this.id,
    required this.name,
    required this.image,
    required this.v,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json["_id"],
      name: json["name"],
      image: json["image"],
      v: json["__v"],
    );
  }

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "image": image,
        "__v": v,
      };
}
