/// status : true
/// Category : "fruits"
/// data : [{"id":11425,"cat_id":102,"product_name":"Indian Apple 1Kg","slug":"indian-apple-1kg","brand":"Localshouts","sku":"IAPL1","qty":50,"price":"200.00","discounted_price":"180.00","categories":"fruits/apples","status":1,"main_image":"Indian Apple 1Kg.jpg","showcase_homepage":1},{"id":11422,"cat_id":101,"product_name":"Watermelon/Kalingad/Tarbuj 2.5Kg","slug":"watermelonkalingadtarbuj-25kg","brand":"Localshouts","sku":"WKT1","qty":29,"price":"120.00","discounted_price":"100.00","categories":"fruits","status":1,"main_image":"Watermelon/Kalingad/Tarbuj 1Kg.jpg","showcase_homepage":1},{"id":11419,"cat_id":103,"product_name":"Alphonso mango Large size (12pcs)","slug":"alphonso-mango-large-size-12pcs","brand":"Localshouts","sku":"AMLS12","qty":1000,"price":"1520.00","discounted_price":"1450.00","categories":"fruits/mangoes","status":1,"main_image":"Alphonso mango Large size (12pcs).jpg","showcase_homepage":1},{"id":11416,"cat_id":101,"product_name":"Pear 1Kg","slug":"pear-1kg","brand":"Localshouts","sku":"PR1JK","qty":999,"price":"320.00","discounted_price":"240.00","categories":"fruits","status":1,"main_image":"Pear 1Kg.jpg","showcase_homepage":1},{"id":11415,"cat_id":101,"product_name":"Kiwi (3pcs) Box","slug":"kiwi-3pcs-box","brand":"Localshouts","sku":"KQ3B","qty":50,"price":"250.00","discounted_price":"150.00","categories":"fruits","status":1,"main_image":"Kiwi (3pcs) Box.jpg","showcase_homepage":1},{"id":11414,"cat_id":101,"product_name":"Oranges/Santra 1Kg","slug":"orangessantra-1kg","brand":"Localshouts","sku":"ORS1","qty":999,"price":"230.00","discounted_price":"140.90","categories":"fruits","status":1,"main_image":"Oranges/Santra 1Kg.jpg","showcase_homepage":1},{"id":11413,"cat_id":101,"product_name":"Mosambi/Sweet Lime 1Kg","slug":"mosambisweet-lime-1kg","brand":"LocalShouts","sku":"MSL1","qty":999,"price":"160.00","discounted_price":"140.50","categories":"fruits","status":1,"main_image":"Mosambi/Sweet Lime 1Kg.png","showcase_homepage":1},{"id":11412,"cat_id":101,"product_name":"Pomegranate/Dadim/Anar 1Kg","slug":"pomegranatedadimanar-1kg","brand":"Localshouts","sku":"PDA1","qty":1000,"price":"280.00","discounted_price":"220.00","categories":"fruits","status":1,"main_image":"Pomegranate/Dadim/Anar 1Kg.jpg","showcase_homepage":1},{"id":11410,"cat_id":102,"product_name":"Apples 1Kg","slug":"apples-1kg","brand":"Localshouts","sku":"Apples10","qty":9998,"price":"300.00","discounted_price":"240.00","categories":"fruits/apples","status":1,"main_image":"Apples 1Kg.jpg","showcase_homepage":1}]

class ProductsModelFruits {
  ProductsModelFruits({
    bool? status,
    String? category,
    List<Data>? data,
  }) {
    _status = status;
    _category = category;
    _data = data;
  }

  ProductsModelFruits.fromJson(dynamic json) {
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

/// id : 11425
/// cat_id : 102
/// product_name : "Indian Apple 1Kg"
/// slug : "indian-apple-1kg"
/// brand : "Localshouts"
/// sku : "IAPL1"
/// qty : 50
/// price : "200.00"
/// discounted_price : "180.00"
/// categories : "fruits/apples"
/// status : 1
/// main_image : "Indian Apple 1Kg.jpg"
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
