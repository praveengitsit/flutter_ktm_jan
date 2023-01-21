import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/product_basic_info.dart';
import '../services/home_service.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomeService homeService;
  HomePageBloc(this.homeService) : super(HomePageLoadingState()) {
    on<LoadHomePage>(_onLoadHomePage);
  }

  _onLoadHomePage(
    LoadHomePage event,
    Emitter<HomePageState> emit,
  ) async {
    try {
      final listOfProductsResponse = await homeService.getListOfProducts();
      if (listOfProductsResponse.isNotEmpty) {
        emit(
          HomePageLoadedState(
            listOfProducts: listOfProductsResponse,
          ),
        );
      } else {}
    } catch (e) {}
  }
}
