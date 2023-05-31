// ignore_for_file: file_names
class KompetensiModel {
  final String title;
  final List<KompetensiIndex> content;

  KompetensiModel({
    required this.title,
    required this.content,
  });

  factory KompetensiModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonContent = json['content'];
    final contentList =
        jsonContent.map((data) => KompetensiIndex.fromJson(data)).toList();

    return KompetensiModel(
      title: json['title'],
      content: contentList,
    );
  }
}

class KompetensiIndex {
  final int id;
  final String title;
  final List<KompetensiContent> mainContent;

  KompetensiIndex({
    required this.id,
    required this.title,
    required this.mainContent,
  });

  factory KompetensiIndex.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonData = json['body'];
    final dataList =
        jsonData.map((e) => KompetensiContent.fromJson(e)).toList();

    return KompetensiIndex(
      id: json['id'],
      title: json['title'],
      mainContent: dataList,
    );
  }
}

class KompetensiContent {
  final int id;
  final String? name, text, imageUrl;

  KompetensiContent({
    required this.id,
    this.name,
    this.text,
    this.imageUrl,
  });

  factory KompetensiContent.fromJson(Map<String, dynamic> json) {
    return KompetensiContent(
      id: json['id'],
      name: json['name'],
      text: json['text'],
      imageUrl: json['imageUrl'],
    );
  }
}
