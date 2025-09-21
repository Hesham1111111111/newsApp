import 'package:alahly/Screens/view_gategory.dart';
import 'package:flutter/material.dart';

import '../../Model/Category.dart';
import '../../style/Style.dart';

class CatogoryItems extends StatelessWidget {
  CatogoryItems({super.key, required this.category});

  Category category;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(category.imge),
      backgroundColor: Colors.teal,
      radius: 80,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) {
                return ViewGategory(title: category.name);
              },
            ),
          );
        },

        child: Text(category.name, style: Stayle.stayle1,),
      ),
    );
  }
}
