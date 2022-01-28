class Prdouct {
   final int? id;
    final String? title;
    final double? price;
    final String? description;
    // final Category? category;
    final String? image;
    final Rating? rating;
    Prdouct({
        this.id,
        this.title,
        this.price,
        this.description,
        // this.category,
        this.image,
        this.rating,
    });

   

    factory Prdouct.fromJson(Map<String, dynamic> json) => Prdouct(
        id: json["id"],
        title: json["title"],
        price: json["price"].toDouble(),
        description: json["description"],
        // category: categoryValues.map[json["category"]],
        image: json["image"],
        rating: Rating.fromJson(json["rating"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        // "category": categoryValues.reverse[category],
        "image": image,
        "rating": rating!.toJson(),
    };
}
class Rating {
   final double? rate;
    final int? count;
    Rating({
        this.rate,
        this.count,
    });

   

    factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        rate: json["rate"].toDouble(),
        count: json["count"],
    );

    Map<String, dynamic> toJson() => {
        "rate": rate,
        "count": count,
    };
}