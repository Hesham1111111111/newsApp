import 'package:flutter/material.dart';
import '../../Model/news_view.dart';
import 'artcile_widget.dart';

class ListViwe_artcile extends StatefulWidget {
  ListViwe_artcile({super.key});

  @override
  State<ListViwe_artcile> createState() => _ListViwe_artcileState();
}

class _ListViwe_artcileState extends State<ListViwe_artcile> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: PageScrollPhysics(),
        itemCount: show.length,
        itemBuilder: (context, index) {
          return ArtcileWidget(show: show[index]);
        },
      ),
    );
  }
}
