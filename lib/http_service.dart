import 'package:dio/dio.dart';

class HttpService{
  Dio _dio;

  final baseUrl = "https://reqres.in/";

  HttpService(){
    _dio = Dio(BaseOptions(
      baseUrl: baseUrl,
    ));

    initializeInterceptors();
  }

  Future<Response> getRequest(String endPoint) async{
    Response response;

    try {
      response = await _dio.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;

  }

  initializeInterceptors(){
    _dio.interceptors.add(InterceptorsWrapper(
      onError: (DioError e, handler) {
        print(e.message);
        return handler.next(e);
      },
      onRequest: (options, handler) {
        print("${options.method} ${options.path}");
        return handler.next(options); 
      },
      onResponse: (response, handler) {
        print(response.data);
        return handler.next(response);
      },
    ));
  }
}
