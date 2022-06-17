import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/cats_provider.dart';
//import 'package:network_to_file_image/network_to_file_image.dart';

class FullImage extends StatelessWidget {
  static const String route = "full_image";

  FullImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;

    CatsProvider catProvider = Provider.of<CatsProvider>(context);
    String imageUrl = catProvider.currentCat.image?.url ??
        "https://latarta.com.co/wp-content/uploads/2018/06/default-placeholder.png";

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Center(
            child: InteractiveViewer(
              boundaryMargin: EdgeInsets.all(1000),
              maxScale: 4,
              minScale: 0.001,
              constrained: false,
              child: Hero(
                child: CachedNetworkImage(
                  width: screensize.width,
                  imageUrl: imageUrl,
                  // fit: BoxFit.fitHeight,
                  placeholder: (context, url) => Center(
                    child: const CupertinoActivityIndicator(),
                  ),
                ),
                tag: imageUrl,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
