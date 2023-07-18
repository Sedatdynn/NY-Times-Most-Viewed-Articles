part of 'home_cubit.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {
  bool? isLoading;
  HomeLoading(this.isLoading);
}

class HomeLoaded extends HomeState {
  final List<Results> items;
  HomeLoaded(this.items);
}

class HomeSortedLoaded extends HomeState {
  final List<Results> items;
  HomeSortedLoaded(this.items);
}

class HomeFailure extends HomeState {
  final String message;
  HomeFailure(this.message);
}
