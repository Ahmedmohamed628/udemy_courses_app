import 'package:flutter/material.dart';
import 'package:udemy_courses_project/my_theme.dart';

class CategorySearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildCategoryButton('Web Development'),
          buildCategoryButton('Javascript'),
          buildCategoryButton('React JS'),
          buildCategoryButton('Java'),
          buildCategoryButton('Android Development'),
          buildCategoryButton('CSS'),
          buildCategoryButton('Python'),
          buildCategoryButton('HTML'),
          buildCategoryButton('Angular'),
          // Add more categories as needed
        ],
      ),
    );
  }

  Widget buildCategoryButton(String categoryName) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4), // Add some spacing
      child: OutlinedButton(
        // Or ElevatedButton for filled buttons
        onPressed: () {
          // Handle tab selection
          print('Selected category: $categoryName');
        },
        child: Text(
          categoryName,
          style: TextStyle(
              color: MyTheme.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500),
        ),
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          minimumSize: Size(1, 1),
          backgroundColor: MyTheme.whiteColor,
          side: BorderSide(color: MyTheme.primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Adjust radius as needed
          ),
        ),
      ),
    );
  }
}
