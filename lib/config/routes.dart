import '../home/screens/home_page.dart';

class AppRoutes {
  static routes() {
    return {
      HomePageScreen.routeName: (context) => const HomePageScreen(),
    };
  }

  static home() {
    return HomePageScreen.routeName;
  }
}
