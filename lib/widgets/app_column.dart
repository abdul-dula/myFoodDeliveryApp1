import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/app_layout.dart';
import '../utils/colors.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: AppLayout.font26,),
        SizedBox(height: AppLayout.height10,),
        Row(
          children: [
            Wrap(
              //نستخدم الراب عشان يمدينا نكرر
              children: List.generate(
                  5,
                      (index) => Icon(
                    Icons.star,
                    color: AppColors.mainColor,
                    size: 15,
                  )), // Or {return Icon(Icons.star, color:AppColors.mainColor, size: 15,)}),
            ),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "4.9"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "1296"),
            SizedBox(
              width: 10,
            ),
            SmallText(text: "comments"),
          ],
        ),
        SizedBox(height: AppLayout.height20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.iconColor1),
            IconAndTextWidget(
                icon: Icons.location_on,
                text: "2.7km",
                iconColor: AppColors.mainColor),
            IconAndTextWidget(
                icon: Icons.access_time_rounded,
                text: "7min",
                iconColor: AppColors.iconColor2),
          ],
        )
      ],
    );
  }
}
