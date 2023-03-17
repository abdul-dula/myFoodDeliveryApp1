import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'food_page_body.dart';
import 'package:food_delivery/utils/app_layout.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(bottom: AppLayout.height15,top: AppLayout.height45),
              padding: EdgeInsets.only(left: AppLayout.width20,right: AppLayout.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(text: "saudi arabia", color: AppColors.mainColor,),
                      Row(
                        children: [
                          SmallText(text: "Macce", color: Colors.black54),
                          Icon(Icons.arrow_drop_down_rounded)
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Container(
                      width: AppLayout.height45,
                      height: AppLayout.height45,
                      child: Icon(Icons.search, color: Colors.white,size: AppLayout.iconSize24,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppLayout.radius15),
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: SingleChildScrollView(child:FoodPageBody(),
            )
          )
        ],
      ),
    );
  }
}
