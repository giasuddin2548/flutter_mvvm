import 'package:dio/dio.dart';

class ApiClient{
  final Dio _dio;
  ApiClient(this._dio);

  Future<Response> getData(String url, Map<String, dynamic> data)async{
    try{
      var res= await _dio.get(url, queryParameters: data);
      return res;
    }on DioException catch(ex){
      return Response(requestOptions: ex.requestOptions);
    }
  }
  Future<Response> postData(String url, Map<String, dynamic> data)async{
    try{
      var res= await _dio.post(url, data: data);
      return res;
    }on DioException catch(ex){
      return Response(requestOptions: ex.requestOptions);
    }
  }

}