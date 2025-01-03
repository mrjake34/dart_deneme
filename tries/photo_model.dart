final class PhotoResponse {
  final bool? success;
  final int? totalPhotos;
  final String? message;
  final int? offset;
  final int? limit;
  final List<Photos>? photos;

  PhotoResponse({
    this.success,
    this.totalPhotos,
    this.message,
    this.offset,
    this.limit,
    this.photos,
  });

  PhotoResponse copyWith({
    bool? success,
    int? totalPhotos,
    String? message,
    int? offset,
    int? limit,
    List<Photos>? photos,
  }) {
    return PhotoResponse(
      success: success ?? this.success,
      totalPhotos: totalPhotos ?? this.totalPhotos,
      message: message ?? this.message,
      offset: offset ?? this.offset,
      limit: limit ?? this.limit,
      photos: photos ?? this.photos,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'total_photos': totalPhotos,
      'message': message,
      'offset': offset,
      'limit': limit,
      'photos': photos,
    };
  }

  factory PhotoResponse.fromJson(Map<String, dynamic> json) {
    return PhotoResponse(
      success: json['success'] as bool?,
      totalPhotos: json['total_photos'] as int?,
      message: json['message'] as String?,
      offset: json['offset'] as int?,
      limit: json['limit'] as int?,
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  String toString() =>
      "Response(success: $success,totalPhotos: $totalPhotos,message: $message,offset: $offset,limit: $limit,photos: $photos)";
}

final class Photos {
  final String? url;
  final int? user;
  final String? title;
  final int? id;
  final String? description;

  Photos({
    this.url,
    this.user,
    this.title,
    this.id,
    this.description,
  });

  Photos copyWith({
    String? url,
    int? user,
    String? title,
    int? id,
    String? description,
  }) {
    return Photos(
      url: url ?? this.url,
      user: user ?? this.user,
      title: title ?? this.title,
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'user': user,
      'title': title,
      'id': id,
      'description': description,
    };
  }

  factory Photos.fromJson(Map<String, dynamic> json) {
    return Photos(
      url: json['url'] as String?,
      user: json['user'] as int?,
      title: json['title'] as String?,
      id: json['id'] as int?,
      description: json['description'] as String?,
    );
  }

  @override
  String toString() =>
      "Photos(url: $url,user: $user,title: $title,id: $id,description: $description)";
}
