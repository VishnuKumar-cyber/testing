class Product {
  int id;
  String title;
  String cuisine;
  String dish;
  String course;
  String category;
  String diet;
  String meals;
  String cooking;
  int time;

  Product({
    required this.id,
    required this.title,
    required this.dish,
    required this.course,
    required this.category,
    required this.diet,
    required this.meals,
    required this.cooking,
    required this.time,
    required this.cuisine,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      cuisine: json['cuisine'],
      dish: json['dish'],
      course: json['course'],
      category: json['category'],
      diet: json['diet'],
      meals: json['meals'],
      cooking: json['cooking'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['cuisine'] = this.cuisine;
    data['dish'] = this.dish;
    data['course'] = this.course;
    data['category'] = this.category;
    data['diet'] = this.diet;
    data['meals'] = this.meals;
    data['cooking'] = this.cooking;
    data['time'] = this.time;
    return data;
  }
}
