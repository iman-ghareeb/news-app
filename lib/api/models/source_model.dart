class SourceModel{
  String? id;
  String? name;


  SourceModel.fromJson(Map<String,dynamic> json){

    id = json['id'];
    name = json['name'];

  }
}