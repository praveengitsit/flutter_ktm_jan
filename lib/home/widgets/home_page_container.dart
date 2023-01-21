import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ktm_jan/home/models/product_basic_info.dart';

import '../blocs/home_page_bloc.dart';

part 'home_product.dart';

class HomePageContainer extends StatelessWidget {
  const HomePageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        if (state is HomePageLoadingState) {
          return const CircularProgressIndicator();
        }

        if (state is HomePageLoadedState) {
          return ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return _HomeProduct(
                productBasicInfo: state.listOfProducts[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemCount: state.listOfProducts.length,
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
