
import 'dart:convert';

List<NewsModel> newsModelFromJson(String str) => List<NewsModel>.from(json.decode(str).map((x) => NewsModel.fromJson(x)));

String newsModelToJson(List<NewsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsModel {
  String id;
  String msgtitle;
  String userid;
  String sentDatatime;
  String time;
  List<Attachment> attachments;
  bool isLiked;
  int likesCount;
  bool isDisliked;
  int dislikesCount;

  NewsModel({
    required this.id,
    required this.msgtitle,
    required this.userid,
    required this.sentDatatime,
    required this.time,
    required this.attachments,
    this.isLiked = false,
    this.isDisliked = false,
    this.dislikesCount = 0,
    this.likesCount = 0
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      id: json["id"],
      msgtitle: json["msgtitle"],
      userid: json["userid"],
      sentDatatime: json["sent_datatime"],
      time: json["time"],
      attachments: List<Attachment>.from(json["attachments"].map((x) => Attachment.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
    "id": id,
    "msgtitle": msgtitle,
    "userid": userid,
    "sent_datatime": sentDatatime,
    "time": time,
    "attachments": List<dynamic>.from(attachments.map((x) => x.toJson())),
  };
}

class Attachment {
  FileFormat fileFormat;
  String fileSize;
  String fileDescription;
  String attachmentUrl;
  String priority;

  Attachment({
    required this.fileFormat,
    required this.fileSize,
    required this.fileDescription,
    required this.attachmentUrl,
    required this.priority,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) => Attachment(
    fileFormat: fileFormatValues.map[json["file_format"]]!,
    fileSize: json["file_size"],
    fileDescription: json["file_description"],
    attachmentUrl: json["attachment_url"],
    priority: json["priority"],
  );

  Map<String, dynamic> toJson() => {
    "file_format": fileFormatValues.reverse[fileFormat],
    "file_size": fileSize,
    "file_description": fileDescription,
    "attachment_url": attachmentUrl,
    "priority": priority,
  };
}

enum FileFormat {
  AUDIO,
  IMAGE,
  PDF,
  TEXT,
  VIDEO
}

final fileFormatValues = EnumValues({
  "audio": FileFormat.AUDIO,
  "image": FileFormat.IMAGE,
  "pdf": FileFormat.PDF,
  "text": FileFormat.TEXT,
  "video": FileFormat.VIDEO
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
