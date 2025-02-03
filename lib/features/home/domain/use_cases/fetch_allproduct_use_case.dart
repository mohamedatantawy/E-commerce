import 'package:commerce8/features/home/domain/Repos/Home_repo.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

class FetchAllproductUseCase extends Use_Case<List<ProductEntity>, void> {
  final HomeRepo homeRepo;

  FetchAllproductUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<ProductEntity>>> call([pragma]) async {
    return await homeRepo.fetchallproduct();
  }
}

abstract class Use_Case<Type, parm> {
  Future<Either<Failure, Type>> call([pragma]);
}
