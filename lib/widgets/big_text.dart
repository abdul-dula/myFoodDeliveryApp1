
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/utils/app_layout.dart';

class BigText extends StatelessWidget {
   Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

   BigText({Key? key, this.color = const Color(0xFF332d2b),
     this.size=0,
     required this.text,
     this.overFlow=TextOverflow.ellipsis
   }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size==0?AppLayout.font20:size, //هنا تبع اذا كان الجهاز اصغر راح يعطيني خط اصغر
        fontWeight: FontWeight.w400
      ),

    );
  }
}
