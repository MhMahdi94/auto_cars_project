class CarModel {
  int? id;
  String? nameEn;
  String? nameAr;
  String? desc;
  String? price;
  String? img;

  CarModel(
      {this.id, this.nameEn, this.nameAr, this.desc, this.price, this.img});

  CarModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    desc = json['desc'];
    price = json['price'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameEn'] = this.nameEn;
    data['nameAr'] = this.nameAr;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['img'] = this.img;
    return data;
  }
}
