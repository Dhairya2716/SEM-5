import './utils/import_export.dart';

class GetconnectServices extends GetConnect{

  final String baseUrl = 'https://67d16606825945773eb42db5.mockapi.io/userdata';

  Future<Response> getUser() async{
    return await get(baseUrl);
  }

  Future<Response> postUser(GetconnectModel user) async{
    return await post(baseUrl, user.toJson());
  }

  Future<Response> putUser(int id, GetconnectModel user) async{
    return await put('$baseUrl/$id', user.toJson());
  }

}