import 'package:bloc/bloc.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:commerce8/features/home/domain/use_cases/fetch_categes_product.dart';
import 'package:commerce8/features/home/presentation/mange/cubit/fetch_allproduct_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'fetchcategersproduct_state.dart';

class FetchcategersproductCubit extends Cubit<FetchcategersproductState> {
  FetchcategersproductCubit(this.fetchCategersAllproductUseCase)
      : super(FetchcategersproductInitial());
  final FetchCategersAllproductUseCase fetchCategersAllproductUseCase;

  
  Future<void> fetchcategespor(String categres) async {
    emit(Fetchcategersproductloading());
   
      var result = await fetchCategersAllproductUseCase.call(categres);
      result.fold((failure) {
        emit(Fetchcategersproductfailure(emassage: failure.massage));
      }, (product) {
        emit(Fetchcategersproductsucces(allproduct: product));
      });
    
  }
}
