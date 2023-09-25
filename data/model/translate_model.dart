class TranslateModel {
  final String responseData;
  final dynamic quotaFinished;
  final dynamic mtLangSupported;
  final String responseDetails;
  final dynamic responderId;
  final dynamic exception_code;
  final String matches;

  TranslateModel({
    required this.exception_code,
    required this.matches,
    required this.mtLangSupported,
    required this.quotaFinished,
    required this.responderId,
    required this.responseData,
    required this.responseDetails,
  });

  factory TranslateModel.fromJson(Map<String, dynamic> json) {
    return TranslateModel(
      exception_code: json["exception_code"] as String? ?? "",
      matches: json["matches"] as String? ?? "",
      mtLangSupported: json["mtLangSupported"] as String? ?? "",
      quotaFinished: json["quotaFinished"] as String? ?? "",
      responderId: json["responderId"] as String? ?? "",
      responseData: json["responseData"] as String? ?? "",
      responseDetails: json["responseDetails"] as String? ?? "",
    );
  }
}
