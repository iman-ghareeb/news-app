import 'package:flutter/material.dart';
import 'package:newsapp/api/models/head_line_model.dart';


class News_Item extends StatelessWidget {
  News_Item(this.articleModel);

  ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                articleModel.urlToImage!=null?'${articleModel.urlToImage}':"https://th.bing.com/th/id/R.47715fa9ef6b59774ebb4ed00f2b2b21?rik=ICCBZLfVBfwCBA&riu=http%3a%2f%2fgetdrawings.com%2fcliparts%2fclipart-question-mark-3.jpg&ehk=sz16aGMNTD0lYJ5GKPf3hq4o51Md8f4BZoAUrXRPD1o%3d&risl=&pid=ImgRaw&r=0",
                height: 220,
                width: double.infinity,
                fit: BoxFit.fill,
              )
          ),
          Text(
            articleModel.author !=null?'${articleModel.author}':"",
            textAlign: TextAlign.start,
          ),
          Text(
            '${articleModel.title}',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
            ),
          ),
          Text(
            '${articleModel.publishedAt}',
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}