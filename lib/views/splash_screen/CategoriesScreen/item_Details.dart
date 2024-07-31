// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eshoping/Widgets_common/Our_button.dart';
import 'package:eshoping/consts/colors.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/consts/images.dart';
import 'package:eshoping/consts/lists.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: title!.text.make(),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
          ],
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 16 / 9,
                        itemCount: 3,
                        itemBuilder: (contex, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }),
                    10.heightBox,
                    title!.text
                        .size(16)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    10.heightBox,
                    VxRating(
                      onRatingUpdate: (value) {},
                      normalColor: textfieldGrey,
                      selectionColor: golden,
                      size: 25,
                      count: 5,
                      stepInt: true,
                    ),
                    10.heightBox,
                    "\$30,000"
                        .text
                        .color(redColor)
                        .fontFamily(bold)
                        .size(18)
                        .make(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Seller".text.fontFamily(bold).white.make(),
                            5.heightBox,
                            "In house brand"
                                .text
                                .color(darkFontGrey)
                                .fontFamily(semibold)
                                .make(),
                          ],
                        )),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.message_rounded,
                            color: darkFontGrey,
                          ),
                        )
                      ],
                    )
                        .box
                        .height(60)
                        .padding(EdgeInsets.symmetric(horizontal: 16))
                        .color(textfieldGrey)
                        .make(),
                    20.heightBox,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Color:".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .roundedFull
                                      .color(Vx.randomPrimaryColor)
                                      .margin(EdgeInsets.symmetric(horizontal: 6))
                                      .make()),
                            )
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),
                        //quentity row

                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Quentity:".text.color(textfieldGrey).make(),
                            ),
                            Row(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.remove)),
                                "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                                IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                                "(0 available)".text.color(textfieldGrey).make(),

                              ],
                            ),
                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),
                        //total row
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: "Total:".text.color(textfieldGrey).make(),
                            ),

                           "\$0.00".text.color(redColor).size(16).fontFamily(bold).make(),

                          ],
                        ).box.padding(EdgeInsets.all(8)).make(),

                      ],
                    ).box.white.shadowSm.make(),
                    10.heightBox,
                    "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                    10.heightBox,
                    "This is a dummy item and dummy description here...".text.color(darkFontGrey).make(),

                    //button action

                    ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: List.generate(itemDitailsButtonList.length, (index) =>
                      ListTile(
                        title: "${itemDitailsButtonList[index]}".text.fontFamily(semibold).color(darkFontGrey).make(),
                        trailing: Icon(Icons.arrow_forward),

                      )
                      ),
                    ),
                    //products mau like section
                    20.heightBox,

                    productsmayLike.text.size(16).fontFamily(bold).color(darkFontGrey).make(),
                    10.heightBox,

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,

                      child: Row(
                        children: List.generate(6, (index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(imgP1,width: 150,fit: BoxFit.cover,),
                            10.heightBox,
                            "Laptop 4GB/64GB ".text.fontFamily(semibold).color(darkFontGrey).make(),
                            "\$600".text.color(redColor).fontFamily(bold).size(16).make(),


                          ],
                        ).box.shadowSm.white.margin(EdgeInsets.symmetric(horizontal: 4.0)).roundedSM.padding(EdgeInsets.all(8.0)).white.make()),


                      ),
                    ),

                  ],
                ),
              ),
            )),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ourButton(
                  color: redColor,
                  onPress: () {},
                  textColor: whiteColor,
                  title: "Add to Cart"),
            )
          ],
        ));
  }
}
