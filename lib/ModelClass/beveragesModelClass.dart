/// status : true
/// Category : "beverages"
/// data : [{"id":11685,"cat_id":26,"product_name":"Lion Orange Squash 700 ml","slug":"lion-orange-squash-700-ml","brand":"LION","sku":"8906006722859","qty":10,"price":"164.00","discounted_price":"150.00","categories":"beverages","status":1,"main_image":"Lion Orange Squash 700 ml.jpg","showcase_homepage":1},{"id":11684,"cat_id":0,"product_name":"Lion Pineapple Squash 700 ml","slug":"lion-pineapple-squash-700-ml","brand":"LION","sku":"8906006722866","qty":10,"price":"145.00","discounted_price":"125.00","categories":"beverages","status":1,"main_image":"Lion Pineapple Squash 700 ml.jpg","showcase_homepage":1},{"id":11683,"cat_id":26,"product_name":"Lion Mango Squash 700 ml","slug":"lion-mango-squash-700-ml","brand":"LION","sku":"8906006723726","qty":10,"price":"145.00","discounted_price":"125.00","categories":"beverages","status":1,"main_image":"Lion Mango Squash 700 ml.jpg","showcase_homepage":1},{"id":11666,"cat_id":0,"product_name":"Malas BlueBerry Crush 750 ml Bottle","slug":"malas-blueberry-crush-750-ml-bottle","brand":"Malas","sku":"BLUEBERRY C","qty":10,"price":"320.00","discounted_price":"304.00","categories":"beverages","status":1,"main_image":"Malas BlueBerry Crush 750 ml Bottle.jpg","showcase_homepage":1},{"id":11663,"cat_id":26,"product_name":"Malas Guava Crush 750 ml","slug":"malas-guava-crush-750-ml","brand":"Malas","sku":"guava750","qty":10,"price":"160.00","discounted_price":"155.00","categories":"beverages","status":1,"main_image":"Malas Guava Crush 750 ml.jpg","showcase_homepage":1},{"id":11609,"cat_id":110,"product_name":"Red Bull Pack of 4","slug":"red-bull-pack-of-4","brand":"Red Bull","sku":"Red Bull","qty":1000,"price":"435.00","discounted_price":"435.00","categories":"beverages/red-bull","status":1,"main_image":"Red Bull Pack of 4.jpg","showcase_homepage":1},{"id":11389,"cat_id":41,"product_name":"Society Leaf Tea 250G Pouch","slug":"society-leaf-tea-250g-pouch","brand":"Society","sku":"SLT250","qty":5000,"price":"135.00","discounted_price":"135.00","categories":"beverages/tea","status":1,"main_image":"Society Leaf Tea 250G Pouch.jpg","showcase_homepage":1},{"id":9572,"cat_id":41,"product_name":"SAPAT CHOCKLATE 250gm","slug":"sapat-chocklate-250gm","brand":"","sku":"SC250","qty":500,"price":"110.00","discounted_price":"110.00","categories":"beverages/tea","status":1,"main_image":"SAPAT CHOCKLATE 250gm.jpg","showcase_homepage":1},{"id":9432,"cat_id":26,"product_name":"LION ROSE SHARBAT","slug":"lion-rose-sharbat","brand":"LION","sku":"8906006722842","qty":500,"price":"140.00","discounted_price":"120.00","categories":"beverages","status":1,"main_image":"LION ROSE SHARBAT.jpg","showcase_homepage":1},{"id":7601,"cat_id":26,"product_name":"Mala's Litchi Crush","slug":"malas-litchi-crush","brand":"Malas","sku":"litchi c","qty":500,"price":"160.00","discounted_price":"155.00","categories":"beverages","status":1,"main_image":"Mala's Litchi Crush.jpg","showcase_homepage":1},{"id":7599,"cat_id":26,"product_name":"Mala's Pineapple crush","slug":"malas-pineapple-crush","brand":"","sku":"PINEAPPLE C","qty":500,"price":"160.00","discounted_price":"155.00","categories":"beverages","status":1,"main_image":"Mala's Pineapple crush.jpg","showcase_homepage":1}]

class ProductsModelBeverages {
  ProductsModelBeverages({
    bool? status,
    String? category,
    List<Data>? data,
  }) {
    _status = status;
    _category = category;
    _data = data;
  }

  ProductsModelBeverages.fromJson(dynamic json) {
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

/// id : 11685
/// cat_id : 26
/// product_name : "Lion Orange Squash 700 ml"
/// slug : "lion-orange-squash-700-ml"
/// brand : "LION"
/// sku : "8906006722859"
/// qty : 10
/// price : "164.00"
/// discounted_price : "150.00"
/// categories : "beverages"
/// status : 1
/// main_image : "Lion Orange Squash 700 ml.jpg"
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
