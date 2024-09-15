import 'package:flutter/material.dart';
import 'package:newsapp/api/models/source_model.dart';
import 'package:newsapp/components/news_item.dart';
import 'package:newsapp/components/tab_widget.dart';
import 'package:newsapp/provider/app_provider.dart';
import 'package:newsapp/themes/app_theme.dart';
import 'package:provider/provider.dart';

class CategoryDetailsScreen extends StatelessWidget {
   CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppProvider provider = Provider.of<AppProvider>(context);


    List<SourceModel> sourceList = provider.sourcesModel == null? [] : provider.sourcesModel!.sources;


    return  Scaffold(
      body:sourceList.isNotEmpty? Column(
        children: [
          DefaultTabController(
            initialIndex: provider.selectedTabIndex,
            length: sourceList.length,
            child: TabBar(
              indicatorColor: Colors.transparent,
              padding: const EdgeInsets.all(10),
              onTap: (index){
                provider.changeTabItem(index);
                print('index = $index id = ${sourceList[index].id!}');
                print('index = $index id = ${provider.articles[index].title}');
                provider.getTopHeadLinesNews(sourceList[index].id!);
              },
              isScrollable: true,
              tabs: sourceList.map((source) => TabWidget(source, sourceList.indexOf(source)==provider.selectedTabIndex,),).toList(),
            ),
          ),
          const SizedBox(height: 15,),
          provider.articles.isNotEmpty?Expanded(
            child: ListView.separated(
              itemBuilder: (context,index){//List<Article Model>
                return News_Item(provider.articles[index],);
              },
              separatorBuilder: (context,index){
                return const SizedBox(height: 15,);
              },
              itemCount: provider.articles.length,
            ),
          ):const Center(child: CircularProgressIndicator(),)
        ],
      ) : Center(child: CircularProgressIndicator()),
    );
  }
}
