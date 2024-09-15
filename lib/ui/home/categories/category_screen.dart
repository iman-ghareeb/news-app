import 'package:flutter/material.dart';
import 'package:newsapp/components/categoryItem.dart';
import 'package:newsapp/provider/app_provider.dart';
import 'package:newsapp/ui/home/categories/category_details_screen.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({Key? key}) : super(key: key);

   List<CategoryDataItems> categories = [
     CategoryDataItems(image: 'assets/images/sports.png', title: 'sports', color: 0xffC91C22 ),
     CategoryDataItems(image: 'assets/images/Politics.png', title: 'technology', color: 0xff003E90),
     CategoryDataItems(image: 'assets/images/health.png', title: 'health', color: 0xffED1E79),
     CategoryDataItems(image: 'assets/images/bussines.png', title: 'business', color: 0xffCF7E48),
     CategoryDataItems(image: 'assets/images/environment.png', title: 'entertainment', color: 0xff4882CF),
     CategoryDataItems(image: 'assets/images/science.png', title: 'science', color: 0xffF2D352),
   ];
  @override
  Widget build(BuildContext context) {

    AppProvider provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Pick your category\nof interest',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Color(0xff4F5A69),

            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(
                  categories.length,
                      (index) => InkWell(
                        onTap: (){

                         provider.changeHomeBody(context, CategoryDetailsScreen(), screenTitle: categories[index].title);
                         provider.getNews(categories[index].title);

                        },
                        child: CategoryItem(
                          image: categories[index].image,
                          title:  categories[index].title,
                          color:  categories[index].color,
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void goToDetails(BuildContext context){
    Navigator.push(
        context, MaterialPageRoute(
        builder: (context)=>CategoryDetailsScreen()
    )
    );
  }
}


class CategoryDataItems{
  final String image;
  final String title;
  final int color;

  CategoryDataItems( {required this.image, required this.title, required this.color,});
}
