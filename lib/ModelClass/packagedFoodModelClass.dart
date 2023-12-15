/// status : true
/// Category : "packaged-foods"
/// data : [{"id":11691,"cat_id":68,"product_name":"MANGO PICKLE 1 KG","slug":"mango-pickle-1-kg","brand":"RAM BANDHU","sku":"RAM BANHDU","qty":20,"price":"200.00","discounted_price":"150.00","categories":"packaged-foods","status":1,"main_image":"MANGO PICKLE 1 KG.jpg","showcase_homepage":1},{"id":11652,"cat_id":68,"product_name":"Amul Dark Chocolate Compound 500g","slug":"amul-dark-chocolate-compound-500g","brand":"Amul","sku":"ADCC5","qty":1000,"price":"125.00","discounted_price":"124.00","categories":"packaged-foods","status":1,"main_image":"Amul Dark Chocolate Compound 500g.jpg","showcase_homepage":1},{"id":11641,"cat_id":111,"product_name":"Fresh Malai Paneer 500g","slug":"fresh-malai-paneer-500g","brand":"Localshouts","sku":"Localshouts Special Pan","qty":100,"price":"190.00","discounted_price":"180.00","categories":"packaged-foods/dairy-products","status":1,"main_image":"Localshouts Special Paneer 500g.jpg","showcase_homepage":1},{"id":11576,"cat_id":68,"product_name":"Taj Mahal Tea 500g","slug":"taj-mahal-tea-500g","brand":"Taj Mahal","sku":"Taj Mahal","qty":5000,"price":"330.00","discounted_price":"328.00","categories":"packaged-foods","status":1,"main_image":"Taj Mahal Tea 500g.jpeg","showcase_homepage":1},{"id":11480,"cat_id":68,"product_name":"Sugarlite Sugar Free Pouch Buy 1 get 1 free","slug":"sugarlite-sugar-free-pouch-buy-1-get-1-free","brand":"Sugarlite","sku":"Sugarlite500","qty":10000,"price":"99.00","discounted_price":"96.40","categories":"packaged-foods","status":1,"main_image":"Sugarlite Sugar Free Pouch Buy 1 get 1 free.jpg","showcase_homepage":1},{"id":11445,"cat_id":68,"product_name":"Amul Fresh Cream 1ltr","slug":"amul-fresh-cream-1ltr","brand":"Amul","sku":"AFC1lt","qty":1000,"price":"197.00","discounted_price":"196.50","categories":"packaged-foods","status":1,"main_image":"Amul Fresh Cream 1ltr.jpg","showcase_homepage":1},{"id":11444,"cat_id":68,"product_name":"Amul Cheese Pack (8 Cubes)","slug":"amul-cheese-pack-8-cubes","brand":"Amul","sku":"SCP8C","qty":985,"price":"121.00","discounted_price":"120.00","categories":"packaged-foods","status":1,"main_image":"Amul Cheese Pack (8 Cubes).jpg","showcase_homepage":1},{"id":11360,"cat_id":68,"product_name":"lijjat UDIT papad 200 gm","slug":"lijjat-udit-papad-200-gm","brand":"Lijjat","sku":"papad 200 gm","qty":999,"price":"60.00","discounted_price":"59.00","categories":"packaged-foods","status":1,"main_image":"lijjat papad 200 gm.jpg","showcase_homepage":1},{"id":4471,"cat_id":68,"product_name":"NESTLE Milk powder (EVE) 1Kg","slug":"nestle-milk-powder-eve-1kg","brand":"NESTLE","sku":"NEMP21kl","qty":500,"price":"490.00","discounted_price":"490.00","categories":"packaged-foods","status":1,"main_image":"NESTLE Milk powder (EVE) 1Kg.jpg","showcase_homepage":1},{"id":3955,"cat_id":77,"product_name":"Kissan Fresh Tomato 950gm","slug":"kissan-fresh-tomato-950gm","brand":"Kissan","sku":"KFTK950","qty":49,"price":"120.00","discounted_price":"115.00","categories":"packaged-foods/sauces-and-spreads","status":1,"main_image":"Kissan Fresh Tomato 950gm.jpg","showcase_homepage":1}]

class ProductsModelPackageFood {
  ProductsModelPackageFood({
    bool? status,
    String? category,
    List<Data>? data,
  }) {
    _status = status;
    _category = category;
    _data = data;
  }

  ProductsModelPackageFood.fromJson(dynamic json) {
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

/// id : 11691
/// cat_id : 68
/// product_name : "MANGO PICKLE 1 KG"
/// slug : "mango-pickle-1-kg"
/// brand : "RAM BANDHU"
/// sku : "RAM BANHDU"
/// qty : 20
/// price : "200.00"
/// discounted_price : "150.00"
/// categories : "packaged-foods"
/// status : 1
/// main_image : "MANGO PICKLE 1 KG.jpg"
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
