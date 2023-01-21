import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ktm_jan/home/widgets/home_page_container.dart';

import '../blocs/home_page_bloc.dart';
import '../services/home_service.dart';

class HomePageScreen extends StatelessWidget {
  static const routeName = '/homepage';

  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => HomeService(),
      child: BlocProvider(
        create: (context) => HomePageBloc(
          RepositoryProvider.of<HomeService>(context),
        )..add(
            const LoadHomePage(),
          ),
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'All handmade products',
            ),
          ),
          body: const HomePageContainer(),
        ),
      ),
    );
  }
}
