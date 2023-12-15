/// status : true
/// Category : "personal-care"
/// data : [{"id":11375,"cat_id":98,"product_name":"Dabur Meswak Toothpaste 100 gm","slug":"dabur-meswak-toothpaste-100-gm","brand":"Dabur","sku":"Meswak Toothpaste 100 gm","qty":500,"price":"50.00","discounted_price":"51.00","categories":"personal-care/tooth-paste","status":1,"main_image":"Dabur Meswak Toothpaste 100 gm.jpg","showcase_homepage":1},{"id":8770,"cat_id":81,"product_name":"Medimix sandal (Pack Of 3) 125 g x 3","slug":"medimix-sandal-pack-of-3-125-g-x-3","brand":"Medimix","sku":"MED-SAND-3","qty":479,"price":"150.00","discounted_price":"150.00","categories":"personal-care/soaps-handwashes","status":1,"main_image":"Medimix sandal (Pack Of 3) 125 g x 3.jpg","showcase_homepage":1},{"id":6802,"cat_id":81,"product_name":"santoor Pack Of 4","slug":"santoor-pack-of-4","brand":"Santoor","sku":"santoor p4","qty":500,"price":"40.00","discounted_price":"39.00","categories":"personal-care/soaps-handwashes","status":1,"main_image":"santoor.jpg","showcase_homepage":1},{"id":4132,"cat_id":82,"product_name":"Dove Nourising Oil Care Shampoo 80 ml","slug":"dove-nourising-oil-care-shampoo-80-ml","brand":"Dove","sku":"Dove-NOC-80","qty":500,"price":"70.00","discounted_price":"54.00","categories":"personal-care/hair-care","status":1,"main_image":"Dove Nourising Oil Care.png","showcase_homepage":1},{"id":2071,"cat_id":82,"product_name":"Parachute Coconut Oil, 100ml (Bottle)","slug":"parachute-coconut-oil-100ml-bottle","brand":"Parachute","sku":"Coconut Oil, 100ml (Bottle)","qty":496,"price":"38.00","discounted_price":"38.00","categories":"personal-care/hair-care","status":1,"main_image":"Parachute 100ml.jpg","showcase_homepage":1},{"id":297,"cat_id":82,"product_name":"Parachute Coconut Oil, 250ml","slug":"parachute-coconut-oil-250ml","brand":"Parachute","sku":"parachute 250","qty":100,"price":"95.00","discounted_price":"93.00","categories":"personal-care/hair-care","status":1,"main_image":"Parachute Coconut Oil, 300ml.jpg","showcase_homepage":1}]

class ProductsModelPersonalCare {
  ProductsModelPersonalCare({
    bool? status,
    String? category,
    List<Data>? data,
  }) {
    _status = status;
    _category = category;
    _data = data;
  }

  ProductsModelPersonalCare.fromJson(dynamic json) {
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

/// id : 11375
/// cat_id : 98
/// product_name : "Dabur Meswak Toothpaste 100 gm"
/// slug : "dabur-meswak-toothpaste-100-gm"
/// brand : "Dabur"
/// sku : "Meswak Toothpaste 100 gm"
/// qty : 500
/// price : "50.00"
/// discounted_price : "51.00"
/// categories : "personal-care/tooth-paste"
/// status : 1
/// main_image : "Dabur Meswak Toothpaste 100 gm.jpg"
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
