import 'package:dio/dio.dart';

class Failure {
  final String massage;

  Failure({required this.massage});
}

class servicefailure extends Failure {
  servicefailure({required super.massage});

  factory servicefailure.fromdioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return servicefailure(massage: 'connection time out ');
      case DioExceptionType.sendTimeout:
        return servicefailure(massage: 'send time out ');
      case DioExceptionType.receiveTimeout:
        return servicefailure(massage: 'receive time out ');
      case DioExceptionType.badCertificate:
        return servicefailure(massage: 'badcertificate time out ');
      case DioExceptionType.badResponse:
        return servicefailure.frombadResponser(e.response!.statusCode!);
      case DioExceptionType.cancel:
        return servicefailure(massage: 'cancel time out ');
      case DioExceptionType.connectionError:
        return servicefailure(massage: 'connection Error ');
      case DioExceptionType.unknown:
        return servicefailure(massage: 'connection unknown ');
    }
  }
  factory servicefailure.frombadResponser(int statuscode )
  {
    if (statuscode ==404)
    {
 return servicefailure(massage: 'your requsent was not found ,plaecw try later . ');
    }else if (statuscode ==500)
    {
 return servicefailure(massage: 'connection unknown ');
    }
    else if (statuscode ==400 &&statuscode ==401&&statuscode ==403)
    {
 return servicefailure(massage: 'Error ');
    }else 
    {
       return servicefailure(massage: 'Error  there unknown error');
    }
  }
}
