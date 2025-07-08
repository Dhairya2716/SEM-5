class insertStudent{

  final int? id;
  final String name;
  final String age;

  insertStudent({
    this.id,
    required this.name,
    required this.age,
});

  Map<String, dynamic> toMap(){
    return {
      "id":id,
      "name":name,
      "age":age,
    };
  }

  factory insertStudent.fromMap(Map<String, dynamic> map){
    return insertStudent(
      id: map["id"],
      name: map["name"],
      age: map["age"],
    );
  }

}