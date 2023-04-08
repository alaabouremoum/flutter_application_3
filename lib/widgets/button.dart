import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; 
import 'package:flutter_application_3/componenet/colors.dart';

class AppButtons extends StatelessWidget {
  final double ?fontSize ;
  final String? text;
  final IconData icon ;
   final Function()? onTap ;
    final Color? backgroundColor ;
    final Color? iconColor ;
    final Color? textColor ;
  const AppButtons({super.key,  
  this.fontSize =20,
  this.textColor=AppColor.mainColor, 
  this.iconColor =Colors.white, 
  this.backgroundColor =AppColor.mainColor,
    this.text, 
   required this.icon, 
   this.onTap ,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap:onTap , 
        child: Column( 
           children: [ 
                 Container( 
                  width: 40, 
                 height: 40, 
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), 
                    color: backgroundColor,
                  ), 
                   child: Icon(icon,size: 30, color: iconColor,),
                 ), 
                 text!=null?Text(text!,
                   style: TextStyle(fontSize: 14 ,
                   color: textColor),
                 ):Container(),
           ],
        )
         
        
    );
  }
}