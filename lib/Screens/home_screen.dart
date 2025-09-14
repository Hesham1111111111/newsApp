import 'package:alahly/Style.dart';
import 'package:flutter/material.dart';
import '../Widget/Categors_widgt/ListCategory.dart' show Listcategory;
import '../Widget/news_view/list_viwe.dart';

class HomeScerrn extends StatelessWidget {
  const HomeScerrn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "News ",
            style: Stayle.stayle1.copyWith(color: Colors.black54),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Listcategory(),
              const SizedBox(height: 30),
              Text(
                "General News ",
                style: Stayle.stayle2.copyWith(color: Colors.black54),
              ),
              ListViwe_artcile(),
            ],
          ),
        ),
      ),
    );
  }
}
