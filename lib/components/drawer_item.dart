import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String itemTitle;
   void Function()? onTap;

  DrawerItem({Key? key, required this.icon, required this.itemTitle, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 40,
            ),
            const SizedBox(width: 15,),
            Text(
              itemTitle,
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700
              ),
            )
          ],
        ),
      ),
    );
  }
}
