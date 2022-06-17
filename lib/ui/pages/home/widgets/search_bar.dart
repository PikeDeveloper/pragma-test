import 'package:flutter/material.dart';
import 'package:pragma/utils/colors.dart';
import 'package:provider/provider.dart';

import '../../../../providers/cats_provider.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final catProvider = Provider.of<CatsProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      height: 50,
      child: Expanded(
        child: PhysicalModel(
          color: Colors.white,
          elevation: 4,
          borderRadius: BorderRadius.circular(50),
          child: TextField(
            onChanged: (value) {
              catProvider.query = value.toLowerCase();
              catProvider.filterCats();
            },
            maxLines: 1,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: "Search",
              contentPadding: const EdgeInsets.only(right: 20),
              isDense: true,
              prefix: SizedBox(
                width: 20,
              ),
              suffixIcon: const Icon(
                Icons.search,
                color: MyColors.darkGray,
                size: 25,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
