import 'package:newsapp/api/models/source_model.dart';

class SourcesModel{
  String? status;
  List<SourceModel> sources = [];

  SourcesModel.fromJson(Map<String, dynamic> json){
    status = json['status'];
    json['sources'].forEach((element){
      sources.add(SourceModel.fromJson(element));
    });
  }

}