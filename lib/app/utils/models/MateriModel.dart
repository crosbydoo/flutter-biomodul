// ignore_for_file: file_names

class MateriModel {
  final String title;
  final List<Main> main;
  final List<Content> content;

  MateriModel({
    required this.title,
    required this.main,
    required this.content,
  });

  factory MateriModel.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonContent = json['main'];
    final contentList =
        jsonContent.map((edata) => Main.fromJson(edata)).toList();
    final List<dynamic> jsonData = json['content'];
    final contentData = jsonData.map((e) => Content.fromJson(e)).toList();

    return MateriModel(
      title: json['title'],
      main: contentList,
      content: contentData,
    );
  }
}

class Main {
  final String title, img;

  Main({
    required this.title,
    required this.img,
  });

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      img: json['img'],
      title: json['title'],
    );
  }
}

class Content {
  final String title;
  final List<Body> body;

  Content({
    required this.title,
    required this.body,
  });

  factory Content.fromJson(Map<String, dynamic> json) {
    final List<dynamic> bodyjson = json['body'];
    final databody = bodyjson.map((body) => Body.fromJson(body)).toList();

    return Content(
      title: json['title'],
      body: databody,
    );
  }
}

class Body {
  final String name;
  final dynamic text;
  final String? img, urlVideo, main;
  final List<BodyBody>? bodybody;

  Body({
    required this.name,
    this.text,
    this.img,
    this.urlVideo,
    this.main,
    this.bodybody,
  });

  factory Body.fromJson(Map<String, dynamic> json) {
    final List<dynamic> bodybody = json['body'];
    final bodyC = bodybody.map((ebod) => BodyBody.fromJson(ebod)).toList();

    return Body(
      name: json['name'],
      text: json['text'],
      img: json['img'],
      urlVideo: json['urlVideo'],
      main: json['main'],
      bodybody: bodyC,
    );
  }
}

class BodyBody {
  final String text;

  BodyBody({
    required this.text,
  });

  factory BodyBody.fromJson(Map<String, dynamic> json) {
    return BodyBody(
      text: json['text'],
    );
  }
}
