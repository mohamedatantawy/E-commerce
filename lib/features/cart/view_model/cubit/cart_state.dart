part of 'cart_cubit.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}
final class Cartloading extends CartState {}
final class Cartsuccess extends CartState {}
