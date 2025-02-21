part of 'favorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}

final class Favoriteloading extends FavoriteState {}

final class FavoriteUpdate extends FavoriteState {}

final class Favoritefailure extends FavoriteState {
  final String emassage;

  Favoritefailure({required this.emassage});
}
