import 'package:flutter/material.dart';
import 'package:pragma/ui/pages/home/widgets/cat_card.dart';
import 'package:pragma/ui/pages/home/widgets/search_bar.dart';
import 'package:pragma/utils/colors.dart';
import 'package:provider/provider.dart';
import '../../../models/cats.dart';
import '../../../providers/cats_provider.dart';

class Home extends StatelessWidget {
  static const String route = "/home";
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatsProvider>(context);
    List<CatsModel> catList = catProvider.filteredCats;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Catbreeds',
          style: TextStyle(
              color: MyColors.textColor,
              fontWeight: FontWeight.bold,
              fontSize: 27),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SearchBar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: catProvider.loading
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : _List(catList: catList),
            ),
          ),
        ],
      ),
    );
  }
}

class _List extends StatelessWidget {
  const _List({Key? key, required this.catList}) : super(key: key);
  final List<CatsModel> catList;

  @override
  Widget build(BuildContext context) {
    return catList.isEmpty
        ? Text("Lista vacía")
        : Expanded(
            child: ListView.builder(
              itemCount: catList.length,
              itemBuilder: (BuildContext context, int index) {
                return CatCard(
                  cat: catList[index],
                );
              },
            ),
          );
  }
}
