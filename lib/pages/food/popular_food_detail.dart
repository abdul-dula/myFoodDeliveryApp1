

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';

import 'package:food_delivery/widgets/expanded_widget.dart';
import '../../utils/colors.dart';
import '../../widgets/big_text.dart';
//import '../../widgets/expandable_text_widget.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class  PopularFoodDetail extends StatelessWidget {
  const  PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: AppLayout.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                  "img/food0.png"
                ))
              )
               ,)
            ),
          //  icon widget
          Positioned(
            top: AppLayout.height45,
            left:AppLayout.width20,
            right: AppLayout.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_checkout_outlined)
            ]),
          ),
          // introduction
          Positioned(
            left:0,
            right: 0,
            bottom: 0,
            top: AppLayout.popularFoodImgSize-20,
            child: Container(
              padding: EdgeInsets.only(left: AppLayout.width20,right: AppLayout.width20,top:AppLayout.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppLayout.radius20),
                  topLeft: Radius.circular(AppLayout.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chinese Sidee",),
                  SizedBox(height: AppLayout.height20,),
                  BigText(text: "Introduce"),
                  Expanded(child: SingleChildScrollView(child: DescriptionTextWidget(text: "skdfhg oirgoihrg uhodsihf oisdh a sojfhoisefhpwOEJH OFHAOPSIHJAF LJABSKJDF I lskagkajfpgo jaldfhbgl ajf nwgwjgjkgiuerqoqihq foqi hoqrhguj vkj eruhgqpr kpjsbvkj f reuiuehifu ierwiut ekj bx,bz ,bc,vnvkjan akjs hkas fweu fvjdsdvd yrvifveg  ajfnvkfj u "))),
                ],
              )
            ),
          ),

        ],
      ),
      bottomNavigationBar: Container(
        height: AppLayout.bottomHeightBar,
        padding: EdgeInsets.only(top: AppLayout.height30,bottom: AppLayout.height30,left: AppLayout.width20,right: AppLayout.width20),
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(

            topLeft: Radius.circular(AppLayout.radius20*2),
            topRight: Radius.circular(AppLayout.radius20*2),
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: AppLayout.height20,bottom: AppLayout.height20,left: AppLayout.width20,right: AppLayout.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor,),
                  SizedBox(width: AppLayout.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: AppLayout.width10/2,),
                  Icon(Icons.add, color: AppColors.signColor,),

                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: AppLayout.height20,bottom: AppLayout.height20,left: AppLayout.width20,right: AppLayout.width20),
              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.radius20),
                color: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}