import 'package:flutter/material.dart';
import '../Model/news_view.dart';
import '../Widget/news_view/artcile_widget.dart';
import '../network/apiserver.dart';
import '../style/Style.dart';

class ViewGategory extends StatefulWidget {
  ViewGategory({super.key, required this.title});

  final String title;

  @override
  State<ViewGategory> createState() => _ViewGategoryState();
}

ApiServer apiServer = ApiServer();
List<Article>? x;

class _ViewGategoryState extends State<ViewGategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "${widget.title} News ",
            style: Stayle.stayle1.copyWith(color: Colors.black54),
          ),
        ),
      ),
      body: x == null
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
            ),
    );
  }

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  getArticles() async {
    x = await apiServer.getNews(title: widget.title);
    setState(() {});
  }
}
