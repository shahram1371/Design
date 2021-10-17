import 'package:dio/dio.dart';
import 'User.dart';

class DioClient {
  final Dio _dio = Dio();
  final String url = "http://nhapp.ir/api/v1/user/profile";
  String User_token =
      "eyJhbGciOiJIUzI1NiIsImtpZCI6InNpbTIifQ.eyJleHAiOjIyMzQwMzU5NzUsImlhdCI6MTYzNDAzNjAzNSwiaWQiOjE5MiwiaXNzIjoiaHR0cDovLzUxLjg5LjEwNy4xOTg6ODAwOS9hcGkvdjEvbG9naW4vdXNlci9jaGVjay1sb2dpbiIsImp0aSI6IjUwZ0d0NXRFSFpxQ0gxMnMiLCJuYmYiOjE2MzQwMzYwMzUsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjciLCJyb2xlcyI6WyJ1c2VycyJdLCJzdWIiOiJ1c2VyMTYzNDAzNjAzNSJ9.wdxXdzo9Z_QwI9LM7ulhGVAxQsB5yT37q7i7SjAhZuQ";
  Future<User?> getData() async {
    User? user;
    _dio.interceptors.clear();

    _dio.options.headers["Authorization"] = "Bearer " + User_token;
    // List<User> userlist = [];
    try {
      Response response = await _dio.get(url);
      user = User.fromJson(response.data);
      // if (response.statusCode == 200) {
      //   for (var item in response.data) {
      //     userlist.add(User.fromJson(item));
      //   }
      print(user);
      //   // return shoelist;
      // }
    } on DioError catch (e) {
      print(e);
    }

    return user;
  }
}
