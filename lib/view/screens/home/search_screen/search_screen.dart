import 'package:flutter/material.dart';

import '../../../../core/const/app_colors/app_colors.dart';
import '../../../../core/const/app_images/app_images.dart';
import 'category_search_tab.dart';
import 'list_tile_category.dart';


// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  // var searchAnchorController = SearchController();
  var searchFocusNode = FocusNode();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            SearchAnchor(
              // searchController: searchAnchorController,
              viewHintText: 'Search',
              builder: (context, controller) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.047,
                  child: SearchBar(
                    controller: searchController,
                    leading: Image.asset(AppImages.searchIcon),
                    hintText: 'Search',
                    hintStyle: WidgetStatePropertyAll(TextStyle(
                        fontSize: 14,
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w400)),
                    focusNode: searchFocusNode,
                    backgroundColor:
                        WidgetStatePropertyAll(AppColors.searchBarColor),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    shadowColor: WidgetStatePropertyAll(Colors.transparent),
                    onTap: () {
                      return controller.openView();
                    },
                    onSubmitted: (value) {
                      // when user press
                      // print('Search query: $value');
                    },
                  ),
                );
              },
              suggestionsBuilder: (context, controller) {
                // Implement your suggestions logic here
                final List<String> suggestions = [];
                if (controller.text.isNotEmpty) {
                  suggestions
                      .addAll(['Suggestion 1', 'Suggestion 2', 'Suggestion 3']);
                }
                return suggestions.map((suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                    onTap: () {
                      // Handle suggestion selection here
                      // print('Selected suggestion: $suggestion');
                      searchController.text = suggestion;
                      controller.closeView(suggestion);
                    },
                  );
                }).toList();
              },
            ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          CategorySearchTab(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          ListTileCategory(title: 'Development', onTapFunction: () {}),
          ListTileCategory(title: 'Finance & Accounting', onTapFunction: () {}),
          ListTileCategory(title: 'Design', onTapFunction: () {}),
          ListTileCategory(title: 'It & Software', onTapFunction: () {}),
          ListTileCategory(title: 'Offer Productivity', onTapFunction: () {}),
          ListTileCategory(title: 'Marketing', onTapFunction: () {}),
          ListTileCategory(title: 'Health & fitness', onTapFunction: () {}),
        ],
        ),
    );
  }
}

//SizedBox(
//             height: MediaQuery.of(context).size.height*0.047,
//             child: TextField(
//
//               controller: searchController,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: MyTheme.searchBarColor,
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide:
//                   BorderSide(color: MyTheme.searchBarColor, width: 2.5),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide:
//                   BorderSide(color: MyTheme.searchBarColor, width: 2.5),
//                 ),
//                 hintText: 'Search',
//                 hintStyle: TextStyle(color: MyTheme.greyColor, fontSize: 14, fontWeight: FontWeight.w400),
//                 prefixIcon: Image.asset('assets/images/search_icon.png'),
//
//               ),
//             ),
//           ),