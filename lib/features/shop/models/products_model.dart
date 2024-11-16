class Product {
  int id;
  String title;
  String description;
  String category;
  double price;
  double discountPercentage;
  double rating;
  int stock;
  List<String> tags;
  String brand;
  String sku;
  int weight;
  Dimensions dimensions;
  String warrantyInformation;
  String shippingInformation;
  String availabilityStatus;
  List<Review> reviews;
  String returnPolicy;
  int minimumOrderQuantity;
  Meta meta;
  List<String> images;
  String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.dimensions,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.reviews,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.meta,
    required this.images,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'] ?? 0, // Default to 0 if id is null
        title: json['title'] ?? '', // Default to empty string if title is null
        description: json['description'] ??
            '', // Default to empty string if description is null
        category: json['category'] ??
            '', // Default to empty string if category is null
        price: (json['price'] ?? 0.0)
            .toDouble(), // Default to 0.0 if price is null
        discountPercentage: (json['discountPercentage'] ?? 0.0).toDouble(),
        rating: (json['rating'] ?? 0.0).toDouble(),
        stock: json['stock'] ?? 0,
        tags: json['tags'] != null ? List<String>.from(json['tags']) : [],
        brand: json['brand'] ?? '', // Default to empty string if brand is null
        sku: json['sku'] ?? '', // Default to empty string if sku is null
        weight: json['weight'] ?? 0, // Default to 0 if weight is null
        dimensions: json['dimensions'] != null
            ? Dimensions.fromJson(json['dimensions'])
            : Dimensions(
                width: 0.0,
                height: 0.0,
                depth: 0.0), // Default dimensions if null
        warrantyInformation: json['warrantyInformation'] ?? '',
        shippingInformation: json['shippingInformation'] ?? '',
        availabilityStatus: json['availabilityStatus'] ?? '',
        reviews: json['reviews'] != null
            ? List<Review>.from(
                json['reviews'].map((review) => Review.fromJson(review)))
            : [],
        returnPolicy: json['returnPolicy'] ?? '',
        minimumOrderQuantity: json['minimumOrderQuantity'] ?? 0,
        meta: json['meta'] != null
            ? Meta.fromJson(json['meta'])
            : Meta(createdAt: '', updatedAt: '', barcode: '', qrCode: ''),
        images: json['images'] != null ? List<String>.from(json['images']) : [],
        thumbnail: json['thumbnail'] ?? '',
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'category': category,
        'price': price,
        'discountPercentage': discountPercentage,
        'rating': rating,
        'stock': stock,
        'tags': tags,
        'brand': brand,
        'sku': sku,
        'weight': weight,
        'dimensions': dimensions.toJson(),
        'warrantyInformation': warrantyInformation,
        'shippingInformation': shippingInformation,
        'availabilityStatus': availabilityStatus,
        'reviews': reviews.map((review) => review.toJson()).toList(),
        'returnPolicy': returnPolicy,
        'minimumOrderQuantity': minimumOrderQuantity,
        'meta': meta.toJson(),
        'images': images,
        'thumbnail': thumbnail,
      };
}

class Dimensions {
  double width;
  double height;
  double depth;

  Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
        width: json['width'].toDouble(),
        height: json['height'].toDouble(),
        depth: json['depth'].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        'width': width,
        'height': height,
        'depth': depth,
      };
}

class Review {
  int rating;
  String comment;
  DateTime date;
  String reviewerName;
  String reviewerEmail;

  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        rating: json['rating'],
        comment: json['comment'],
        date: DateTime.parse(json['date']),
        reviewerName: json['reviewerName'],
        reviewerEmail: json['reviewerEmail'],
      );

  Map<String, dynamic> toJson() => {
        'rating': rating,
        'comment': comment,
        'date': date.toIso8601String(),
        'reviewerName': reviewerName,
        'reviewerEmail': reviewerEmail,
      };
}

class Meta {
  String createdAt;
  String updatedAt;
  String barcode;
  String qrCode;

  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt'],
        barcode: json['barcode'],
        qrCode: json['qrCode'],
      );

  Map<String, dynamic> toJson() => {
        'createdAt': createdAt,
        'updatedAt': updatedAt,
        'barcode': barcode,
        'qrCode': qrCode,
      };
}
