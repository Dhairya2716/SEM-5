import 'package:http/http.dart' as http;

class ApiService {
  static const String apiUrl = 'https://67d16606825945773eb42db5.mockapi.io/userdata';

  static Future<http.Response> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));
    return response;

  //   if (response.statusCode == 200) {
  //     final List<dynamic> jsonData = jsonDecode(response.body);
  //     return jsonData.map((json) => UserModel.fromJson(json)).toList();
  //   } else {
  //     throw Exception("Failed to load users");
  //   }
  }
}
