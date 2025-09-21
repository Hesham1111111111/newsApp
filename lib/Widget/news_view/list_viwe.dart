import 'package:alahly/network/apiserver.dart';
import 'package:flutter/material.dart';
import '../../Model/news_view.dart';
import 'artcile_widget.dart';

class ListViwe_artcile extends StatefulWidget {
  ListViwe_artcile({super.key});

  @override
  State<ListViwe_artcile> createState() => _ListViwe_artcileState();
}

class _ListViwe_artcileState extends State<ListViwe_artcile> {
  ApiServer apiServer = ApiServer();
  List<Article>? x;

  @override
  Widget build(BuildContext context) {
    return x == null
        ? Center(child: CircularProgressIndicator())
        : Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: PageScrollPhysics(),
                itemCount: x!.length,
                itemBuilder: (context, index) {
                  return ArtcileWidget(article: x![index]);
                },
              ),
            ),
          );
  }

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  getArticles() async {
    x = await apiServer.getNews(title: 'general');
    setState(() {});
  }
}
