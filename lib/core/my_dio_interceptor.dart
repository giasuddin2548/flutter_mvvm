import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
class DioInterceptor extends InterceptorsWrapper{
  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    Log.i("Network->onRequest Url:${options.uri}");
    Log.i("Network->onRequest Data:${options.data}");
    return super.onRequest(options, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async{
    Log.w("Network->onError->:${err.response?.requestOptions.uri}");
    Log.w("Network->onError->:${err.response?.statusCode.toString()}");
    return super.onError(err, handler);
  }
  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler)async {
    Log.d("Network->onResponse Url:${response.requestOptions.uri}");
    Log.d("Network->onResponse Status Code:${response.statusCode}");
    Log.d("Network->onResponse Data:${response.data}");
    return super.onResponse(response, handler);

  }
}



class Log {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
  );

  static void d(String message) {
    // _logger.d(message);
  }

  static void i(String message) {
    // _logger.i(message);
  }

  static void w(String message) {
    // _logger.w(message);
  }

  static void e(String message) {
    // _logger.e(message);
  }
}