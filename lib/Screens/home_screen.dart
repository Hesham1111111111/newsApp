import 'package:alahly/style/Style.dart';
import 'package:flutter/material.dart';
import '../Widget/Categors_widgt/ListCategory.dart' show Listcategory;
import '../Widget/news_view/list_viwe.dart';

class HomeScerrn extends StatelessWidget {
  HomeScerrn({super.key});

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

      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Listcategory()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                "General News ",
                style: Stayle.stayle2.copyWith(
                  fontSize: 35,
                  color: Colors.black87,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: ListViwe_artcile()),
        ],
      ),
    );
  }
}
