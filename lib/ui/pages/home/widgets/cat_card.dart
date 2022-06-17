import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pragma/providers/cats_provider.dart';
import 'package:pragma/ui/shared/custom_text.dart';
import 'package:pragma/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../../../models/cats.dart';
import '../../details/details.dart';

class CatCard extends StatelessWidget {
  const CatCard({
    Key? key,
    required this.cat,
  }) : super(key: key);
  final CatsModel cat;

  @override
  Widget build(BuildContext context) {
    final double pictureWidth = 280;
    CatsProvider catProvider = Provider.of<CatsProvider>(context);
    String imageUrl = cat.image?.url ??
        "https://latarta.com.co/wp-content/uploads/2018/06/default-placeholder.png";

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  CustomText(cat.name, 20, MyColors.textColor, 1, "Segoe",
                      FontWeight.bold),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      catProvider.currentCat = cat;
                      Navigator.pushNamed(context, Details.route);
                    },
                    child: CustomText("Más...", 18, MyColors.textColor, 1,
                        "Segoe", FontWeight.w500),
                  ),
                ],
              ),
            ),
            Hero(
              tag: imageUrl,
              child: TextButton(
                onPressed: () {
                  catProvider.currentCat = cat;
                  Navigator.pushNamed(context, Details.route);
                },
                child: Container(
                  width: pictureWidth,
                  height: pictureWidth / 1.5,
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color.fromARGB(137, 73, 72, 72),
                          blurRadius: 8.0,
                          offset: Offset(0, 4))
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Center(
                        child: const CupertinoActivityIndicator(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  CustomText(cat.origin, 18, MyColors.textColor, 1, "Segoe",
                      FontWeight.w500),
                  Spacer(),
                  CustomText("${cat.intelligence}", 18, MyColors.textColor, 1,
                      "Segoe", FontWeight.w500),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
