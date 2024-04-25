import 'package:flutter/material.dart';
import 'package:vet_digital/src/modules/news/news.dart';

import '../../../information/data/models/katalog_model.dart';

class NewsList extends StatelessWidget {
  const NewsList(this.items, {super.key});
  final List<KatalogModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        final newsInfo = items[index];
        return Card(
          child: ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => NewsDetailView(
                  newsItems: items[index],
                ),
              ),
            ),
            title: Text(newsInfo.name!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsInfo.title!,
                  maxLines: 1,
                ),
              ],
            ),
            leading: Image.asset(
              newsInfo.image!,
              width: 100,
            ),
          ),
        );
      },
    );
  }
}
