// ignore_for_file: prefer_const_constructors

import 'package:eshoping/Widgets_common/bg_widget.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/views/splash_screen/CategoriesScreen/item_Details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Babt clothing "
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .padding(EdgeInsets.all(5))
                        .margin(EdgeInsets.all(5))
                        .white
                        .roundedSM
                        .size(150, 50)
                        .make()),
              ),
            ),
            //items Container

            Expanded(
                child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        mainAxisExtent: 250,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            imgP5,
                            height: 150,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                          "Laptop 4GB/64GB "
                              .text
                              .fontFamily(semibold)
                              .color(darkFontGrey)
                              .make(),
                          "\$600"
                              .text
                              .color(redColor)
                              .fontFamily(bold)
                              .size(16)
                              .make(),
                        ],
                      )
                          .box
                          .shadowSm
                          .outerShadowSm
                          .white
                          .margin(EdgeInsets.symmetric(horizontal: 4.0))
                          .roundedSM
                          .padding(EdgeInsets.all(8.0))
                          .white
                          .make().onTap(() {
                            Get.to(()=>ItemDetails(title: "Dummy item"));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
