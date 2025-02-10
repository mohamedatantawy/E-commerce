import 'dart:math';

import 'package:commerce8/core/errors/failure.dart';
import 'package:commerce8/features/home/data/data_source/Home_remote_data_source.dart';
import 'package:commerce8/features/home/domain/Repos/Home_repo.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepeImple extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepeImple({required this.homeRemoteDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>> fetchallproduct()async {
    try {
      var productlist =await homeRemoteDataSource.fetchallproduct();
      return right(productlist);
    }  catch (e) {
      if (e is DioException)
      {return left(servicefailure.fromdioError(e));}
      else {
       return left(servicefailure(massage: e.toString()));
    }
    }
    
  }
}
