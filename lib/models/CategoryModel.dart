class CategoryModel {
  int? id;
  String? nameEn;
  String? nameAr;
  String? img;

  CategoryModel({this.id, this.nameEn, this.nameAr, this.img});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    img = json['img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nameEn'] = this.nameEn;
    data['nameAr'] = this.nameAr;
    data['img'] = this.img;
    return data;
  }
}
