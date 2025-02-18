import 'package:flutter/material.dart';
import 'package:udemy_courses_project/my_theme.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  // var searchAnchorController = SearchController();
  var searchFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
      ),
      body: Padding(
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
                    leading: Image.asset('assets/images/search_icon.png'),
                    hintText: 'Search',
                    hintStyle: WidgetStatePropertyAll(TextStyle(
                        fontSize: 14,
                        color: MyTheme.greyColor,
                        fontWeight: FontWeight.w400)),
                    focusNode: searchFocusNode,
                    backgroundColor:
                        WidgetStatePropertyAll(MyTheme.searchBarColor),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    shadowColor: WidgetStatePropertyAll(Colors.transparent),
                    onTap: () {
                      return controller.openView();
                    },
                    onSubmitted: (value) {
                      // when user press
                      print('Search query: $value');
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
                      print('Selected suggestion: $suggestion');
                      searchController.text = suggestion;
                      controller.closeView(suggestion);
                    },
                  );
                }).toList();
              },
            ),
          ],
        ),
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
