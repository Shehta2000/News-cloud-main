import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: CachedNetworkImage(
                imageUrl: articleModel.image ??
                    ('https://upload.wikimedia.org/wikipedia/commons/d/d1/Image_not_available.png?20210219185637'),
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 8),
          child: Text(
            articleModel.title,
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
        Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
