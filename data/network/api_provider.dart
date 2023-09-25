import 'dart:convert';

import 'package:dio/dio.dart';

import '../model/translate_model.dart';

class ApiProvider {
  final dio = Dio();

  Future<TranslateModel> getHttp() async {

    final response = await dio.get('https://api.mymemory.translated.net/');
    if (response.statusCode == 200) {
      return TranslateModel.fromJson(jsonDecode(response.data));
    }
    return TranslateModel(
        exception_code: "",
        matches: '',
        mtLangSupported: "",
        quotaFinished: "",
        responderId: "",
        responseData: "",
        responseDetails: "");
  }
}
