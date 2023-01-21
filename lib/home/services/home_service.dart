import '../data/dummy_home_data.dart';
import '../models/product_basic_info.dart';

class HomeService {
  Future<List<ProductBasicInfo>> getListOfProducts() {
    return Future.value(DUMMY_HOME_DATA);
  }
}
