import 'package:alahly/Model/Category.dart';
import 'package:flutter/material.dart';

import '../../Style.dart';

class CatogoryItems extends StatelessWidget {
  CatogoryItems({super.key, required this.category});

  Category category;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(category.imge),
      backgroundColor: Colors.teal,
      radius: 70,
      child: Text(category.name, style: Stayle.stayle1),
    );
  }
}
