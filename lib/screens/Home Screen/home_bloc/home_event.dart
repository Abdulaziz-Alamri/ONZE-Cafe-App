part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class LoadProductsEvent extends HomeEvent {
  final String itemType;
  LoadProductsEvent(this.itemType);
}

final class UpdateCartCountEvent extends HomeEvent {
  final int count;
  UpdateCartCountEvent({required this.count});
}
