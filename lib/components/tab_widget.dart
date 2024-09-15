import 'package:flutter/material.dart';
import 'package:newsapp/api/models/source_model.dart';
import 'package:newsapp/themes/app_theme.dart';


class TabWidget extends StatelessWidget {
  TabWidget(this.sourceModel,this.isTabSelected,{super.key});

  SourceModel sourceModel;
  bool isTabSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border:Border.all(
            width: 2,
            color: AppThemes.primaryColor,
          ),
          color: isTabSelected? AppThemes.primaryColor:Colors.white,
        ),
        child: Tab(child: Text(
          '${sourceModel.name}',
          style: TextStyle(
            color: isTabSelected?Colors.white:AppThemes.primaryColor,
          ),
        ),
        )
    );
  }
}