// ignore_for_file: prefer_const_constructors

import 'package:eshoping/Widgets_common/bg_widget.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/consts/lists.dart';
import 'package:eshoping/views/splash_screen/CategoriesScreen/categries_ditails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).white.make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
              itemCount: 9,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 200),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Image.asset(CategoriesImages[index],height: 120,width: 200,fit: BoxFit.cover,),
                    10.heightBox,
                    "${CategoriesList[index]}".text.color(darkFontGrey).align(TextAlign.center).make(),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .clip(Clip.antiAlias)
                    .outerShadowSm
                    .make().onTap(() {
                      Get.to(()=>CategoryDetails(title: CategoriesList[index]));
                });
              }),
        )));
  }
}
