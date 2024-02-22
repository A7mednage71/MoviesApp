import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  ApiService(this.dio);

  final String baseUrl = "https://api.themoviedb.org/3/movie";
  final String baseKey = "c3435cfe40aeb079689227d82bf921d3";

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get("$baseUrl$endPoint$baseKey");
    return response.data;
  }
}
