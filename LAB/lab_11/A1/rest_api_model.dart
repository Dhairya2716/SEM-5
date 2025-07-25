class UserModel{

  final String name;
  final String age;
  final String city;

  UserModel({
    required this.name,
    required this.age,
    required this.city,
});

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      name: json['name'],
      age: json['age'],
      city: json['city'],
    );
  }

}