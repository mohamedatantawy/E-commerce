import 'package:bloc/bloc.dart';
import 'package:commerce8/features/home/domain/entites/product_entity.dart';
import 'package:commerce8/features/home/domain/use_cases/fetch_allproduct_use_case.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'fetch_allproduct_state.dart';

class FetchAllproductCubit extends Cubit<FetchAllproductState> {
  FetchAllproductCubit(this.fetchAllproductUseCase)
      : super(FetchAllproductInitial());
  final FetchAllproductUseCase fetchAllproductUseCase;
 
  Future<void> getAiiproduct() async {
    emit(FetchAllproductloading());
    var result = await fetchAllproductUseCase.call();
    result.fold((failer) {
      emit(FetchAllproductFailure(errormassage: failer.massage));
    }, (product) {
      emit(FetchAllproductSuccess(allproduct: product));
    });
  }
}
