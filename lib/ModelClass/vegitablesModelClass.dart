class ProductsModelVegitables {
  ProductsModelVegitables({
    bool? status,
    String? category,
    List<Data>? data,
  }) {
    _status = status;
    _category = category;
    _data = data;
  }

  ProductsModelVegitables.fromJson(dynamic json) {
    _status = json['status'];
    _category = json['Category'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  bool? _status;
  String? _category;
  List<Data>? _data;

  bool? get status => _status;
  String? get category => _category;
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['Category'] = _category;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : 11624
/// cat_id : 107
/// product_name : "Sweet corn  गोड मका 250 GMS PACK"
/// slug : "sweet-corn-250-gms-pack"
/// brand : "LocalShouts"
/// sku : "Sweetcorn 1 Pack"
/// qty : 1000
/// price : "40.00"
/// discounted_price : "30.00"
/// categories : "vegetable"
/// status : 1
/// main_image : "Sweetcorn 1 Pack.jpg"
/// showcase_homepage : 1

class Data {
  Data({
    int? id,
    int? catId,
    String? productName,
    String? slug,
    String? brand,
    String? sku,
    int? qty,
    String? price,
    String? discountedPrice,
    String? categories,
    int? status,
    String? mainImage,
    int? showcaseHomepage,
  }) {
    _id = id;
    _catId = catId;
    _productName = productName;
    _slug = slug;
    _brand = brand;
    _sku = sku;
    _qty = qty;
    _price = price;
    _discountedPrice = discountedPrice;
    _categories = categories;
    _status = status;
    _mainImage = mainImage;
    _showcaseHomepage = showcaseHomepage;
  }

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _catId = json['cat_id'];
    _productName = json['product_name'];
    _slug = json['slug'];
    _brand = json['brand'];
    _sku = json['sku'];
    _qty = json['qty'];
    _price = json['price'];
    _discountedPrice = json['discounted_price'];
    _categories = json['categories'];
    _status = json['status'];
    _mainImage = json['main_image'];
    _showcaseHomepage = json['showcase_homepage'];
  }
  int? _id;
  int? _catId;
  String? _productName;
  String? _slug;
  String? _brand;
  String? _sku;
  int? _qty;
  String? _price;
  String? _discountedPrice;
  String? _categories;
  int? _status;
  String? _mainImage;
  int? _showcaseHomepage;

  int? get id => _id;
  int? get catId => _catId;
  String? get productName => _productName;
  String? get slug => _slug;
  String? get brand => _brand;
  String? get sku => _sku;
  int? get qty => _qty;
  String? get price => _price;
  String? get discountedPrice => _discountedPrice;
  String? get categories => _categories;
  int? get status => _status;
  String? get mainImage => _mainImage;
  int? get showcaseHomepage => _showcaseHomepage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['cat_id'] = _catId;
    map['product_name'] = _productName;
    map['slug'] = _slug;
    map['brand'] = _brand;
    map['sku'] = _sku;
    map['qty'] = _qty;
    map['price'] = _price;
    map['discounted_price'] = _discountedPrice;
    map['categories'] = _categories;
    map['status'] = _status;
    map['main_image'] = _mainImage;
    map['showcase_homepage'] = _showcaseHomepage;
    return map;
  }
}
