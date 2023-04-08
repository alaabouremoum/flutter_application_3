
import 'package:flutter/material.dart';
import 'package:flutter_application_3/componenet/colors.dart';
import 'package:flutter_application_3/pages/payment_page.dart';
import 'package:flutter_application_3/widgets/button.dart';
import 'package:flutter_application_3/widgets/large_button.dart';
import 'package:flutter_application_3/widgets/text_size.dart';
import '../componenet/colors.dart ' as color;
import 'package:get/get.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) { 
    double h =MediaQuery.of(context).size.height; 
    double w =MediaQuery.of(context).size.width ;
    return Scaffold( 
      backgroundColor: color.AppColor.backGroundColor, 
       body: Container( 
           height: h, 
           child: Stack(
             children: [ 
               _headSection(),
               _listBuilds(), 
               _payButton(),
             ],
           ),
      ),
    ); 
  } 
   _headSection(){
       return Container( 
        height: 310,
          child: Stack( 
            children: [ 
               _mainBackground(),
               _curveImageContainer(),
               _buttonContainer(), 
               _textContainer(), 
            ],
          ),
          
        );
     } 
     _mainBackground(){ 
       return Positioned(
        bottom: 10, 
        left :0 ,
         child: Container(
          height: 300, 
          width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
               image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('lib/images/background.png'),
                )
            ),
         ),
        );
     }
      
       _curveImageContainer()
        { 
          return Positioned(
             left: 0, 
             right: -2, 
              bottom: 10,

            child: 
                Container( 
                  height: MediaQuery.of(context).size.height*0.1,                    decoration: const BoxDecoration(
                       image: DecorationImage(
                        image: AssetImage('lib/images/curve.png'),
                         fit: BoxFit.cover
                       )
                    ),
                    
                )
              
           );
        }
        _buttonContainer(){ 

          return Positioned(
             bottom: 10, 
             right: 50,
            child: 
              GestureDetector( 
                 onTap:() { 
                    showModalBottomSheet<dynamic>(
                       isScrollControlled: true,
                      barrierColor:Colors.transparent,
                       backgroundColor:Colors.transparent,
                      context: context, builder: (BuildContext bc){
                     return Container(
                      height:MediaQuery.of(context).size.height-240, 
                      child:Stack(children: [ 
                         Positioned(
                           bottom: 0,
                          child: Container( 
                          color:Color(0xFFeef1f4).withOpacity(0.7),
                           width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height -240,
                         ),),
                         Positioned(
                          top:0, 
                          right: 50,
                          child: Container( 
                            padding: const EdgeInsets.only(top: 5 ,bottom: 25),
                           width: 60, 
                           height: 250, 
                           decoration: BoxDecoration( 
                             color: AppColor.mainColor,
                             borderRadius: BorderRadius.circular(29),
                           ),
                           child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             AppButtons(icon: Icons.cancel ,
                             iconColor: AppColor.mainColor,
                             backgroundColor:Colors.white ,
                              textColor: Colors.white,
                                onTap: (){Navigator.pop(context);},
                              ),
                              AppButtons(icon: Icons.add ,
                             iconColor: AppColor.mainColor,
                             backgroundColor:Colors.white ,
                              textColor: Colors.white,
                                onTap: (){},
                                text: "Add Bill",
                              ),
                              AppButtons(icon: Icons.history ,
                             iconColor: AppColor.mainColor,
                             backgroundColor:Colors.white ,
                              textColor: Colors.white,
                                onTap: (){},
                                text: "History",
                              ),
                           ]),
                         ),),
                      ],),
                     );
                    });
                 },
                child: Container(  
                    height: 60, 
                    width:60,
                   decoration:  BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('lib/images/lines.png')),
                    boxShadow:[ 
                      BoxShadow( 
                        blurRadius: 15,
                        offset: const Offset(0,1),
                        color: Color(0xFF11324d).withOpacity(0.2)
                      )
                    ]
                   ),
                ),
              ), 
           );
        }
        _listBuilds(){ 
          return Positioned(
            top:320, 
             left: 0, 
             bottom: 0, 
             right: 0,
            child:   
                 MediaQuery.removePadding(
                  removeTop: true, 
                  context: context , 

                   child: ListView.builder( 
                     itemCount: 10,
                     itemBuilder: (_, index) {
                       
                      return
                     Container(
                        margin: const EdgeInsets.only(top: 20 ,right: 20),
                         height: 130, 
                         width: MediaQuery.of(context).size.width -20, 
                         decoration: const BoxDecoration(
                          boxShadow: [
                             BoxShadow(
                                color:Color(0xFFd8dbe0),
                                offset: Offset(1, 1),
                                blurRadius: 20.0, 
                                spreadRadius: 10, 
                             )
                          ],
                          color :Colors.white,
                          borderRadius: BorderRadius.only(
                             topRight: Radius.circular(30),
                             bottomRight: Radius.circular(30)
                            
                          )
                         ),
                         child: Container(
                             margin: const EdgeInsets.only(left: 18, top: 10), 
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column( 
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [ 
                                      Row(children: [ 
                                        Container(
                               height: 60,
                       
                               width:60,
                        decoration: BoxDecoration(
                          border: Border.all( 
                               width: 3, 
                               color:Colors.grey
                          ),
                           image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('lib/images/brand1.png'),
                            )
                        ),
                              ),
                                        const SizedBox(width: 10,),
                                        Column(  
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                         children:  [
                                           const  Text('KenGen Power',
                                             style: TextStyle(fontSize: 16, 
                                             color: AppColor.mainColor , 
                                             fontWeight: FontWeight.w700,
                                             ),
                                           ), 
                                            const SizedBox(height: 10,), 
                                            Text('ID :548756',
                                             style: TextStyle(fontSize: 16, 
                                             color: AppColor.idColor , 
                                             fontWeight: FontWeight.w700,
                                             ),
                                           ),
                                         ],
                                       ),
                                        
                                      ],
                                      ),
                                       SizedText(text:'Auto pay on 24th May 18 ', 
                                        color: AppColor.green),
                                         const SizedBox(height: 5,), 
                                   ],
                                ),
                               Row(children: [
                                 Column( 
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                     width: 80, 
                                     height: 30, 
                                      decoration: BoxDecoration( 
                                        color: AppColor.selectBackground,
                                         borderRadius: BorderRadius.circular(30)
                                      ), 
                                      child: Center(
                                        child: Text('Select', 
                                        style: TextStyle(
                                           fontSize: 16, 
                                           color: AppColor.selectColor,
                                        ),
                                        ),
                                      ),
                                    ),
                                     Expanded(child: Container(),),
                                   const Text('\$1248.00', 
                                        style: TextStyle(
                                           fontSize: 18, 
                                           color: AppColor.mainColor,
                                           fontWeight: FontWeight.w900,
                                        ),
                                        ),
                     
                                        Text('Due in 3 days', 
                                        style: TextStyle(
                                           fontSize: 14, 
                                           color: AppColor.idColor,
                                           fontWeight: FontWeight.w700,
                                        ),
                                        ),
                                         const SizedBox(height: 10,), 
                                 ],
                                 ),
                                  const SizedBox(width: 5,),
                              Container(
                                 width: 5, 
                                 height: 35, 
                                  decoration: BoxDecoration(
                                    color:AppColor.halfOval,
                                     borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(30), 
                                      bottomLeft: Radius.circular(30) , 
                     
                                     )
                                  ),
                              )
                               ],),
                               ],
                             ),
                         ),
                               );
                       
                   }
                   
                   ),
                 ),
               
             
          
            
          
          ); 
        }
       _payButton() 
       { 
          return  Positioned(
              bottom: 20, 
            child:  
             AppLargeButton(text: "pay All bills",textColor: Colors.white,onTap: (){Get.to(()=>PaymentPage());},)
          );
       }
    _textContainer() {
       return Stack( 
        children:const  [ 
        
             Positioned(
              top:100, 
              left:0,
            child: Text('My Bills',
             style: TextStyle(fontSize: 70,
             fontWeight: FontWeight.bold,
             color: Color(0xFF29395),),
            ),
            ),
              Positioned(
            left: 40, 
            top: 80,
            child: Text('My Bills',
             style: TextStyle(fontSize: 50 ,
             fontWeight: FontWeight.bold,
             color: Colors.white),),
            ),

        ],
       );
    }
}  
