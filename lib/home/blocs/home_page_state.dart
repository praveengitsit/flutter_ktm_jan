part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageLoadingState extends HomePageState {
  @override
  List<Object> get props => [];
}

class HomePageLoadedState extends HomePageState {
  final List<ProductBasicInfo> listOfProducts;

  const HomePageLoadedState({
    required this.listOfProducts,
  });

  HomePageLoadedState copyWith({
    List<ProductBasicInfo>? listOfProducts,
  }) =>
      HomePageLoadedState(
        listOfProducts: listOfProducts ?? this.listOfProducts,
      );

  @override
  List<Object> get props => [
        listOfProducts,
      ];
}
