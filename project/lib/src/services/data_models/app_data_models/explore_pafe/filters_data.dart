// category_filter.dart
class CategoryFilter {
  final String name;
  bool isChecked;

  CategoryFilter({required this.name, this.isChecked = false});

  // Sample data for categories
  static List<CategoryFilter> getCategories() {
    return [
      CategoryFilter(name: 'Eggs', isChecked: true),
      CategoryFilter(name: 'Noodles & Pasta'),
      CategoryFilter(name: 'Chips & Crisps'),
      CategoryFilter(name: 'Fast Food'),
      CategoryFilter(name: 'Category 4'),
      CategoryFilter(name: 'Category 5'),
    ];
  }
}

// brand_filter.dart
class BrandFilter {
  final String name;
  bool isChecked;

  BrandFilter({required this.name, this.isChecked = false});

  // Sample data for brands
  static List<BrandFilter> getBrands() {
    return [
      BrandFilter(name: 'Individual Collection'),
      BrandFilter(name: 'Cocola', isChecked: true),
      BrandFilter(name: 'Ifad'),
      BrandFilter(name: 'Kazi Farmas'),
      BrandFilter(name: 'brand 5'),
      BrandFilter(name: 'brand 6'),
    ];
  }
}
