
import 'package:commerce8/core/errors/failure.dart';
import 'package:commerce8/features/home/domain/Repos/Home_repo.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:dartz/dartz.dart';

class FetchCategersAllproductUseCase extends Use_Case<List<ProductEntity>, String  > {
  final HomeRepo homeRepo;

  FetchCategersAllproductUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<ProductEntity>>> call(  categres) async {
   if (categres =='all')
   {
     return await homeRepo.fetchallproduct( );
   }else{
     return await homeRepo.fetchcategersproduct( categres);
   }
  }
}

abstract class Use_Case<Type, String> {
  Future<Either<Failure, Type>> call(pragma);
}
