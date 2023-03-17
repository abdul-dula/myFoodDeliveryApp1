import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/app_layout.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/icon_and_text_widget.dart';

import 'package:food_delivery/widgets/small_text.dart';

import '../../widgets/app_column.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController =
      PageController(viewportFraction: 0.85); // هذا يتحكم في حجم الكونتينر ككل
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = AppLayout.pageViewContainer;

  @override
  void initState() {
    // هنا يعرض لك "اللف" برقم من اول صوره الى اخر صوره
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
        print("My value is: " + _currPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    //هذا المثود عشان يقلل قدر المكان من استخدام مساحة التخزين
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //هنا تتحكم في الكونتينر نفسه
          //color: Colors.red,
          height: AppLayout.pageView, //ارتفاعه
          child: PageView.builder(
              controller: pageController,
              itemCount: 5, //كم عدده
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(height: AppLayout.height30,),
        Container(
          margin: EdgeInsets.only(left: AppLayout.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: "Popular"),
              SizedBox(width: AppLayout.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".", color: Colors.black26,),
              ),
              SizedBox(width: AppLayout.width10,),
              Container(

                child: SmallText(text: "Food pairing",),
              )
            ],
          ),
        ),


          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(left: AppLayout.width20, right: AppLayout.width20, bottom:AppLayout.height10),
                  child: Row(
                    children: [
                      Container(
                        width:AppLayout.listViewImgSize,
                        height:AppLayout.listViewImgSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(AppLayout.radius20),
                            color: Colors.white38,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: AssetImage("img/food0.png"))
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: AppLayout.listViewTextContSize,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(AppLayout.radius20),
                                bottomRight: Radius.circular(AppLayout.radius20),
                              ),
                            color: Colors.white,
                          ),
                          child: Padding(padding: 
                          EdgeInsets.only(left: AppLayout.width10, right: AppLayout.width10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                BigText(text: "Nutritious fruit meal in china"),
                                SizedBox(height: AppLayout.height15,),
                                SmallText(text: "With chinese Characteristics"),
                                SizedBox(height: AppLayout.height15,),
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
                            ),
                              
                          )
                          ,),
                      )
                    ],
                  ),
                );
              }),

      ],
    );
  }

  Widget _buildPageItem(int index) {
    //هنا تتحكم بداخل الكونتينر
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      // هذا لي الصوره الحاليه
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      // هذا لي الصوره الجايه
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() - 1) {
      // هذا لي الصوره
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else {
      var currScale = 8.0;
      matrix = Matrix4.diagonal3Values(1, currScale, 0)
        ..setTranslationRaw(0, -_height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: AppLayout.pageViewContainer,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.radius30),
              color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
              image: DecorationImage(
                fit: BoxFit.cover, // هنا خلينا الصوره داخل الكونتينر بالضبط
                image: AssetImage("img/food0.png"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: AppLayout.pageViewTextContainer,
              margin: EdgeInsets.only(left: AppLayout.width30, right: AppLayout.width30, bottom: AppLayout.height30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.radius20),
                color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius:5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  )
              ]
              ),

              child: Container(
                padding: EdgeInsets.only(top: AppLayout.height15, left: 15, right: 15),
                child: AppColumn(text: "Chinese Sidee"),
              ),

            ),
          )
        ],
      ),
    );
  }
}
