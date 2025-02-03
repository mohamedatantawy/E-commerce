import 'package:commerce8/core/errors/failure.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchallproduct();
}
