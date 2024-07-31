// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eshoping/Widgets_common/bg_widget.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/consts/lists.dart';
import 'package:eshoping/views/splash_screen/profile_Screen/components/details_card.dart';
import 'package:flutter/material.dart';

class profileScreen extends StatelessWidget {
  const profileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                //edite profile


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.edit,color: Colors.white)),
                ),



                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Image.asset(imgProfile2,width: 60,fit: BoxFit.cover,).box.roundedFull.clip(Clip.antiAlias).make(),
                      10.widthBox,
                      Expanded(child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Dummy User".text.fontFamily(semibold).white.make(),
                          5.heightBox,
                          "Customaer@examplegmail.com".text.size(5.0).white.make(),
                        ],
                      ),),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: (){}, child: "LogOut".text.fontFamily(semibold).white.make()),
                    ],
                  ),
                ),
                20.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      detailsCard(count: "00", title: "In your card", width: context.screenWidth/3.4,),
                      detailsCard(count: "22", title: "In your wishlist", width: context.screenWidth/3.4,),
                      detailsCard(count: "675", title: "your orders", width: context.screenWidth/3.4,)


                    ]
                ),
                //button section

                ListView.separated(
                  shrinkWrap: true,
                    separatorBuilder: (context ,index){
                      return Divider(

                        color: lightGrey,
                      );
                    },

                    itemCount: profileButtonList.length,
                    itemBuilder: (BuildContext context ,int index){
                  return ListTile(
                    leading: Image.asset(profileButtonIcon[index]),

                    title: "${profileButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),

                  );
                }
                ).box.white.rounded.padding(EdgeInsets.symmetric(horizontal: 16)).margin(EdgeInsets.all(12)).shadowSm.make().box.color(redColor).make(),
              ],
            ),
          ),
        )
    );
  }
}