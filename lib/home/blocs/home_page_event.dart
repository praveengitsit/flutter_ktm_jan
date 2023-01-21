part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();
}

class LoadHomePage extends HomePageEvent {
  const LoadHomePage();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}
