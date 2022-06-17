import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pragma/ui/shared/custom_text.dart';
import 'package:pragma/ui/shared/full_image.dart';
import 'package:provider/provider.dart';
import '../../../providers/cats_provider.dart';
import '../../../utils/colors.dart';

class Details extends StatelessWidget {
  static const String route = "/details";
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cat = Provider.of<CatsProvider>(context).currentCat;
    const double pictureWidth = 220;
    return Scaffold(
      backgroundColor: MyColors.detsilGray,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "${cat.name}",
          style: TextStyle(
              color: MyColors.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: MyColors.textColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, FullImage.route);
            },
            child: Hero(
              tag: cat.image?.url ??
                  "https://latarta.com.co/wp-content/uploads/2018/06/default-placeholder.png",
              child: Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0,
                        offset: Offset(0.0, 0.75))
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: cat.image?.url ??
                        "https://latarta.com.co/wp-content/uploads/2018/06/default-placeholder.png",
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
          Expanded(
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: CustomText(cat.description, 18, MyColors.textColor,
                          1.3, "Segoe", FontWeight.w500),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
