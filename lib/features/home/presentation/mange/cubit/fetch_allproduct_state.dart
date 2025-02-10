part of 'fetch_allproduct_cubit.dart';

@immutable
sealed class FetchAllproductState {}

final class FetchAllproductInitial extends FetchAllproductState {}

final class FetchAllproductloading extends FetchAllproductState {}

final class FetchAllproductFailure extends FetchAllproductState {
  final String errormassage;

  FetchAllproductFailure({required this.errormassage});
}

final class FetchAllproductSuccess extends FetchAllproductState {
  final List<ProductEntity> allproduct;

  FetchAllproductSuccess({required this.allproduct});
}
