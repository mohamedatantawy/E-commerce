part of 'fetchcategersproduct_cubit.dart';

@immutable
sealed class FetchcategersproductState {}

final class FetchcategersproductInitial extends FetchcategersproductState {}

final class Fetchcategersproductloading extends FetchcategersproductState {}

final class Fetchcategersproductfailure extends FetchcategersproductState {
  final String emassage;

  Fetchcategersproductfailure({required this.emassage});
}

final class Fetchcategersproductsucces extends FetchcategersproductState {

  final List<ProductEntity> allproduct;

  Fetchcategersproductsucces({required this.allproduct});
}
