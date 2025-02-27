import 'package:flutter/material.dart';

import '../../../../core/const/app_colors/app_colors.dart';

// ignore: must_be_immutable
class TopCoursesSection extends StatelessWidget {
  String? imagePath;
  String? title;
  String? rating;
  String? reviewCount;
  String? price;

  TopCoursesSection(
      {super.key,
      this.title,
      this.imagePath,
      this.price,
      this.rating,
      this.reviewCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *
          0.42, // Adjust card width as needed
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        color: AppColors.whiteColor,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
              child: Image.asset(
                imagePath!,
                width: MediaQuery.of(context).size.width * 0.42,
                height: MediaQuery.of(context).size.height * 0.15,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(rating!),
                      Icon(Icons.star,
                          size: 16.0, color: AppColors.yellowColor),
                      Icon(Icons.star,
                          size: 16.0, color: AppColors.yellowColor),
                      Icon(Icons.star,
                          size: 16.0, color: AppColors.yellowColor),
                      Text(' ($reviewCount)'),
                    ],
                  ),
                  Text(
                    price!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                        color: AppColors.primaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}