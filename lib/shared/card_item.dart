import 'package:fitness_app/core/utilies/colors.style.dart';
import 'package:fitness_app/core/utilies/image_utils.dart';
import 'package:fitness_app/core/utilies/texts.style.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final String title;

  const CardItem({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Card(
          color: AppColors.secondaryText,
          child: ListTile(
            leading: Container(
              width: 95,
              height: 95,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: getImage(title),
                ),
              ),
            ),
            title: Text(
              title.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              style: IText.header4Black.copyWith(
                fontWeight: FontWeight.bold,
                fontFamily: 'muli',
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
