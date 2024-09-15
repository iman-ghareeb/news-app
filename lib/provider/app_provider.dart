
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newsapp/api/api_manager.dart';
import 'package:newsapp/api/models/head_line_model.dart';
import 'package:newsapp/api/models/sources_model.dart';

import 'package:newsapp/ui/home/categories/category_screen.dart';


class AppProvider extends ChangeNotifier{
  Widget currentBody = CategoryScreen();

  String appBarTitle = 'News App';

  SourcesModel? sourcesModel;

  int selectedTabIndex = 0;

  List<ArticleModel> articles = [];

  void changeTabItem(index){
    selectedTabIndex=index;
    notifyListeners();
  }

  void changeHomeBody(BuildContext context,Widget body, {required screenTitle})
  {
      currentBody = body;
     appBarTitle = screenTitle;
    notifyListeners();
  }



  void getNews(categoryId)async{

    try{

      var response = await APIManager.getData({"category":categoryId}, endPoint: EndPoints.SOURCES);

      var data = jsonDecode(response.body);

      sourcesModel = SourcesModel.fromJson(data);

      notifyListeners();

      print("Success  status = ${sourcesModel!.status}");

    }catch(e){
      print("Error=>>>>> ${e}");
      notifyListeners();
    }

  }


  void getTopHeadLinesNews(String sourcesId) async{
    try{
      var response = await APIManager.getData({"sources":sourcesId}, endPoint: EndPoints.TOP_HEADLINES);
      var data = jsonDecode(response.body);
      data['articles'].forEach((element){
        articles.add(ArticleModel.fromJson(element));
      });

      notifyListeners();

    }catch(e){
      notifyListeners();
      print('error $e');
    }
  }


}