import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/componenet/colors.dart';
 

class AppLargeButton extends StatelessWidget { 
   final Color? backgroundColor ; 
   final Color? textColor ; 
   final String text; 
   final Function()? onTap ; 
   final bool? isBorder ;
  const AppLargeButton({super.key ,
  this.backgroundColor:AppColor.mainColor,
  this.isBorder :false,
  this.onTap,
  this.textColor, 
   required this.text ,
   
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap, 
        child: Container(
          margin: const EdgeInsets.only(left: 30,right: 30),
          height: 60, 
          width: MediaQuery.of(context).size.width -60, 
          child: Center(
            child: Text(text, 
            style :TextStyle(fontSize:30,
            color: textColor ,
             fontWeight: FontWeight.bold) 
            ),
          ),
           decoration: BoxDecoration( 
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10), 
            border: Border.all(
               width: 2, 
               color: AppColor.mainColor, 

            )
           ),
        ),
    );
  }
} 