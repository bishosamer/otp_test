part of 'home_page_bloc.dart';

@immutable
abstract class HomePageState {}

class HomePageInitial extends HomePageState {}

class Success extends HomePageState {}

class Error extends HomePageState {
  final String error;

  Error(this.error);
}
