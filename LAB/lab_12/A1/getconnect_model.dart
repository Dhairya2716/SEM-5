class GetconnectModel {

  final String id;
  final String name;
  final String age;
  final String city;

  GetconnectModel({required this.id, required this.name, required this.age, required this.city});

  factory GetconnectModel.fromJson(Map<String, dynamic> json){
    return GetconnectModel(
      id: json["id"].toString(),
      name:json["name"],
      age:json["age"],
      city: json["city"]
    );
  }

  Map<String, dynamic> toJson(){
    return({
      "name":name,
      "age":age,
      "city":city
    });
  }

}