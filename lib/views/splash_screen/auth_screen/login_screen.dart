// ignore_for_file: prefer_const_constructors

import 'package:eshoping/Widgets_common/Our_button.dart';
import 'package:eshoping/Widgets_common/applogo_widget.dart';
import 'package:eshoping/Widgets_common/bg_widget.dart';
import 'package:eshoping/Widgets_common/custom_textfield.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/consts/lists.dart';
import 'package:eshoping/views/splash_screen/auth_screen/SignUp.dart';
import 'package:eshoping/views/splash_screen/Home_Screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:eshoping/consts/strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,

            "log in to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextfiled(hint: emailHint, title: email),

                10.heightBox,
                customTextfiled(hint: passwordHint, title: password),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {}, child: forgetPassord.text.make())),

                ourButton(
                        color: redColor,
                        title: login,
                        textColor: whiteColor,
                        onPress: () {
                          Get.to(()=>Home());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                10.heightBox,

                ourButton(
                        color:golden,
                        title: signUp,
                        textColor: redColor,
                        onPress: () {
                          Get.to(()=>SignUpScreen());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index],
                      width: 35,
                      ),

                    ),
                  )),
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70).shadowSm.make(),
          ],
        ),
      ),
    ));
  }
}
