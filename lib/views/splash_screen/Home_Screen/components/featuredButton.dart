// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eshoping/consts/consts.dart';
import 'package:flutter/cupertino.dart';
Widget featuredButton({String? title,icon}){
  return Row(
    children: [
      Image.asset(icon!,width: 60,fit: BoxFit.fill,),
      10.widthBox,
title!.text.fontFamily(semibold).color(darkFontGrey).make(),

    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4.0)).white.padding(EdgeInsets.all(4.0)).roundedSM.outerShadowSm.make();
}