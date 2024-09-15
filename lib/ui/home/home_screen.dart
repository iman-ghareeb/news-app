import 'package:flutter/material.dart';
import 'package:newsapp/components/drawer_item.dart';
import 'package:newsapp/provider/app_provider.dart';
import 'package:newsapp/themes/app_theme.dart';
import 'package:newsapp/ui/home/setting/setting_screen.dart';
import 'package:provider/provider.dart';

import 'categories/category_screen.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    AppProvider provider = Provider.of<AppProvider>(context);

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(67.0),
        child: AppBar(

          title:  Center(
              child:  Text(provider.appBarTitle)
          ),
          backgroundColor: AppThemes.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(50),
            ),
          ),
        ),

      ),

      drawer: Container(
        width: screenWidth*0.75,
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                height: 110,
                width: double.infinity,
                color: AppThemes.primaryColor,
                child: const Center(
                  child: Text(
                    'News App!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              DrawerItem(
                  icon: Icons.list,
                  itemTitle: 'Categories',
                  onTap: (){
                    provider.changeHomeBody(context,CategoryScreen(),screenTitle: 'News App');
                    Navigator.pop(context);
                  }
              ),
              const SizedBox(
                height: 10,
              ),
              DrawerItem(
                  icon: Icons.settings,
                  itemTitle: 'Settings',
                  onTap: (){
                    provider.changeHomeBody(context,SettingScreen(),screenTitle: 'News App');
                    Navigator.pop(context);
                  }
              ),
            ],
          ),
        ),
      ),
      body: provider.currentBody,
    );
  }
}
