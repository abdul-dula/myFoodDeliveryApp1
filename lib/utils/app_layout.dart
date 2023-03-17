import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
//عرض  الجهازالصغير هنا 768px
//عرض  الجهازالكبير هنا 1440px

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;

  }
  static getScreenHeight(){
    return Get.height;
  }
  static getScreenWidth(){
    return Get.width;
  }
 static getHeight(double pixels){
    double x = getScreenHeight()/pixels;
    return getScreenHeight()/x;
 }
 static getWidth(double pixels){
    double x = getScreenWidth()/pixels;
    return getScreenWidth()/x;
 }

 static double pageView = getScreenHeight()/2.64;
 static double pageViewContainer = getScreenHeight()/3.84;
 static double pageViewTextContainer = getScreenHeight()/7.03;
//padding & margin for dynamic height
 static double height10 = getScreenHeight()/84.4;
 static double height20 = getScreenHeight()/44.2;
 static double height15 = getScreenHeight()/56.2;
 static double height30 = getScreenHeight()/28.10;
 static double height45 = getScreenHeight()/17.06;
 //static double height120 = getScreenHeight()/90.06;


//padding & margin for dynamic width
 static double width10 = getScreenHeight()/84.4;
 static double width20 = getScreenHeight()/44.2;
 static double width15 = getScreenHeight()/56.2;
 static double width30 = getScreenHeight()/28.10;
  static const double MARGIN_SIZE_EXTRA_LARGE = 200.0;
  static const double MARGIN_SIZE_80 = 80.0;
  static const double MARGIN_SIZE_40 = 40.0;
  static const double MARGIN_SIZE_35=35.0;
  static const double MARGIN_SIZE_30=30.0;
  // static double margin40=screenSizeWidth>WEB_MAX_WIDTH?MARGIN_SIZE_40:screenSizeHeight/21.1;
  // static double margin80=screenSizeWidth>WEB_MAX_WIDTH?MARGIN_SIZE_80:screenSizeHeight/10.55;
  // static double margin35=screenSizeWidth>WEB_MAX_WIDTH?MARGIN_SIZE_35:screenSizeHeight/24.11;

 static double font20 = getScreenHeight()/44.2;
 static double font26 = getScreenHeight()/32.2;

 static double radius20 = getScreenHeight()/44.2;
 static double radius30 = getScreenHeight()/28.10;
 static double radius15 = getScreenHeight()/56.27;

static double iconSize24 = getScreenHeight()/35.17;
static double iconSize16 = getScreenHeight()/50.75;

static double listViewImgSize = getScreenWidth()/3.25;
static double listViewTextContSize = getScreenWidth()/3.9;

static double popularFoodImgSize = getScreenHeight()/2.41;

static double bottomHeightBar = getScreenHeight()/7.03;
}
