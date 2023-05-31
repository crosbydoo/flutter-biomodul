// ignore_for_file: file_names
class PetunjukModel {
  final String main, title;
  final List<ContentModel> content;

  PetunjukModel({
    required this.main,
    required this.title,
    required this.content,
  });

  factory PetunjukModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonContent = json['content'];
    final contentList = jsonContent
        .map((contentJson) => ContentModel.fromJson(contentJson))
        .toList();

    return PetunjukModel(
      main: json['main'],
      title: json['title'],
      content: contentList,
    );
  }
}

class ContentModel {
  final String title, body;
  final int id;

  ContentModel({
    required this.id,
    required this.title,
    required this.body,
  });

  factory ContentModel.fromJson(Map<String, dynamic> json) {
    return ContentModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
