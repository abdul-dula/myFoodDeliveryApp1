import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:get/get.dart';

import '../../widgets/app_icon.dart';
import '../../widgets/expanded_widget.dart';

class RecommenededFoodDetail extends StatelessWidget {
  const RecommenededFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 75,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon:Icons.clear),
                AppIcon(icon:Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(child: BigText(size:AppLayout.font26,text: "Chinese Sides")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.radius20),
                    topRight: Radius.circular(AppLayout.radius20),
                  )
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
              "img/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,


              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: DescriptionTextWidget(text: "Chinese cuisine encompasses the numerous cuisines originating from China, as well as overseas cuisines created by the Chinese diaspora. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.The preferences for seasoning and cooking techniques of Chinese provinces depend on differences in social class, religion, historical background, and ethnic groups. Geographic features including mountains, rivers, forests, and deserts also have a strong effect on the local available ingredients, considering that the climate of China varies from tropical in the south to subarctic in the northeast. Imperial royal and noble preference also plays a role in the change of Chinese cuisine. Because of imperial expansion and trading, ingredients and cooking techniques from other cultures have been integrated into Chinese cuisines over time.There are numerous regional, religious, and ethnic styles of Chinese cuisine found within China and abroad. Chinese cuisine is highly diverse and most frequently categorised into provincial divisions, although these province-level classifications consist of many more styles within themselves. The most praised Four Great Traditions in Chinese cuisine are Chuan, Lu, Yue, and Huaiyang, representing cuisines of West, North, South, and East China, respectively.[1] The modern Eight Cuisines of China are Anhui (徽菜; Huīcài), Guangdong (粤菜; Yuècài), Fujian (闽菜; Mǐncài), Hunan (湘菜; Xiāngcài), Jiangsu (苏菜; Sūcài), Shandong (鲁菜; Lǔcài), Sichuan (川菜; Chuāncài), and Zhejiang (浙菜; Zhècài) cuisines.[2]A Quanjude cook is slicing Peking roast duck. Peking duck is eaten by rolling pieces of duck with scallion, cucumber and sweet bean sauce using steamed pancakes.[3]Color, scent and taste are the three traditional aspects used to describe Chinese food,[4] as well as the meaning, appearance, and nutrition of the food. Cooking should be appraised with respect to the ingredients used, knife work, cooking time, and seasoning. "),
                  margin: EdgeInsets.only(left: AppLayout.width20, right:AppLayout.width20 )
                ),
              ],
            )
          ),
        ]
      ),
      bottomNavigationBar:
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: AppLayout.width20*2.5,
              right: AppLayout.width20*2.5,
              top: AppLayout.height10,
              bottom: AppLayout.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  iconSize: AppLayout.iconSize24,
                  icon: Icons.remove,
                  iconColor: Colors.white,
                backgroundColor: AppColors.mainColor,
                ),
                BigText(text: "\$12.88 "+" X "+" 0",color: AppColors.mainBlackColor,size: AppLayout.font26,),
                AppIcon(
                  iconSize: AppLayout.iconSize24,
                  icon: Icons.add,
                  iconColor: Colors.white,
                backgroundColor: AppColors.mainColor,
                ),
              ],
            ),
          ),
          Container(
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
