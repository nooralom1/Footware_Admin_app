class SignUpModel {
  String? studentName;
  String? instituteName;
  String? studentContact;

  SignUpModel(
      {required this.studentName,
      required this.studentContact,
      required this.instituteName,
      });
  SignUpModel.fromJson(dynamic json) {
    studentName = json['studentName'];
    instituteName = json['instituteName'];
    studentContact = json['studentContact'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['studentName'] = studentName;
    map['instituteName'] = instituteName;
    map['studentContact'] = studentContact;
    return map;
  }
}

class ImageSubmitModel {
  String? pictureUrl;
  String? dateTime;
  String? uniqueKey;

  ImageSubmitModel(
      {required this.dateTime,
      required this.uniqueKey,
      required this.pictureUrl});
  ImageSubmitModel.fromJson(dynamic json) {
    uniqueKey = json['uniqueKey'];
    dateTime = json['dateTime'];
    pictureUrl = json['pictureUrl'];
  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uniqueKey'] = uniqueKey;
    map['dateTime'] = dateTime;
    map['pictureUrl'] = pictureUrl;
    return map;
  }
}
