import 'package:usedev/src/models/category_model.dart';

class MockCategories {
  static List<CategoryModel> getCategories() {
    return CategoryModel.mockCategories();
  }
}