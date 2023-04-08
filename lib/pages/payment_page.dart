import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/componenet/colors.dart';
import 'package:flutter_application_3/widgets/button.dart';
import 'package:flutter_application_3/widgets/large_button.dart';
import 'package:get/get.dart';
class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) { 
     double h =MediaQuery.of(context).size.height; 
    double w =MediaQuery.of(context).size.width ;
   
   
    return Scaffold( 
         body: Container(
           padding: const EdgeInsets.only(top:80,left: 20, right: 20),
          height: h, 
          width: w,
            decoration: const BoxDecoration(
               image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: AssetImage('lib/images/paymentbackground.png'),
                )
            ), 
            child: Column(children: [


                Container(
                  width: double.maxFinite, 
                  height: h *0.14,
                  decoration:const BoxDecoration(
               image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('lib/images/success.png'),
                )
            ),
                ),
                const Text('Success',
             style: TextStyle(fontSize: 30,
             fontWeight: FontWeight.bold,
             color: AppColor.mainColor,),
            ), 
              Text('Payment is completed for 2 bills',
             style: TextStyle(fontSize: 20,
             fontWeight: FontWeight.w600,
             color:AppColor.idColor,),
            ),
               SizedBox(height: h*0.045,),
             Container( 
               height: 160, 
               width: 350, 
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(10), 
                  border: Border.all(color:Colors.grey.withOpacity(0.5), 
                  width: 2),
                ), 
               
                 
                child: MediaQuery.removePadding( 
                  removeTop: true, 
                  context: context,
                  child: ListView.builder(
                    itemCount: 3, 
                        itemBuilder:(_,index){
                      return Container(
                       child: Column( 
                         children: [ 
                           Row(children: [ 
                             Container( 
                              margin:const EdgeInsets.only(left :20 ,top :15,bottom: 10),
                              width: 50, 
                              height: 50, 
                              decoration : BoxDecoration(
                                 borderRadius: BorderRadius.circular(25), 
                                 color: Colors.green ,
                              ),
                               child: Icon(Icons.done ,size: 30,color: Colors.white,),
                             ),
                             SizedBox(width: 10,),
                             Column(
                              crossAxisAlignment: CrossAxisAlignment.start, 
                               children:  [ 
                               const Text('KenGen Power',
                                style:TextStyle(fontSize: 16 ,
                                fontWeight: FontWeight.bold,
                                color: AppColor.mainColor) 
                                     ),
                                    const SizedBox(height: 10,),
                                     Text('ID 254863',
                                style:TextStyle(fontSize: 16 ,
                                fontWeight: FontWeight.bold,
                                color: AppColor.idColor) ,
                                   
                                     ),
                               ],
                             ),
                           const SizedBox(width: 20,),
                  
                              Column(
                                children: const [
                                   Text('',
                                    style:TextStyle(fontSize: 16 ,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.mainColor) 
                                         ),
                                          Text('\$1248.00',
                                    style:TextStyle(fontSize: 16 ,
                                    fontWeight: FontWeight.w700,
                                    color: AppColor.mainColor) 
                                         ),
                                         SizedBox(height: 10,),
                                ],
                              ),
                           
                           ],),
                            Divider(thickness: 2,
                             color: Colors.grey.withOpacity(0.5),
                             ),
                         ],
                       ),
                    );
                        }
                  ),
                ),
               ),
              SizedBox(height: 70,), 
              Column(children: [
                 Text('Total Amount' , 
                  style :TextStyle(fontSize:20 , color:AppColor.idColor)),
                     const SizedBox(height: 10,),
                  const Text('\$28400.00' , 
                  style :TextStyle(fontSize:30 ,
                   color:AppColor.mainColor ,
                    fontWeight: FontWeight.bold)),
              ],),
               SizedBox(height: h*0.09,), 
               Row( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                AppButtons(icon: Icons.share_sharp, onTap: (){},text: 'Share',),
                 SizedBox(width: 80,),
                 AppButtons(icon: Icons.print_outlined, onTap: (){},text: 'Print',),
               ],),
                  
                 AppLargeButton(text: 'Done' , 
                 backgroundColor: Colors.white,
                  textColor: AppColor.mainColor,
                  onTap: (){Get.back();},), 
                 
            ],),
         ),
    );
  }
}