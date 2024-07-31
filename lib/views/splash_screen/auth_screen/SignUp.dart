// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eshoping/Widgets_common/Our_button.dart';
import 'package:eshoping/Widgets_common/applogo_widget.dart';
import 'package:eshoping/Widgets_common/bg_widget.dart';
import 'package:eshoping/Widgets_common/custom_textfield.dart';
import 'package:eshoping/consts/colors.dart';
import 'package:eshoping/consts/lists.dart';
import 'package:eshoping/consts/strings.dart';
import 'package:eshoping/consts/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool? ischeked=false;
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

            "join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextfiled(hint: nameHint, title: name),
                10.heightBox,
                customTextfiled(hint: emailHint, title: email),
                10.heightBox,
                customTextfiled(hint: passwordHint, title: password),
                10.heightBox,
                customTextfiled(hint: passwordHint, title: retypePassword),
                20.heightBox,
                // Align(
                //     alignment: Alignment.centerRight,
                //     child: TextButton(
                //         onPressed: () {}, child: forgetPassord.text.make())),

                Row(
                  children: [
                    Checkbox(
                      checkColor: redColor,
                        value: ischeked,
                        onChanged: (newvalue){
                          setState(() {
                            ischeked=newvalue;
                          });
                        },),
                    //when we need different color word in one line we can use RichText widget
                    Expanded(
                      child: RichText(text: TextSpan(
                        children: [
                          TextSpan(
                            text: "I agree to the",
                            style: TextStyle(
                              fontFamily: bold,
                              color: Colors.lightBlueAccent
                            ),
                          ),
                          TextSpan(
                            text: termsAndCond,
                            style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                            ),
                          ),
                          TextSpan(
                            text: "&",
                            style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                            ),
                          ),
                          TextSpan(
                            text: privacyPolicy,
                            style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                            ),
                          ),

                        ]
                      )),
                    )

                  ],
                ),
                10.heightBox,
                ourButton(
                    color:ischeked==true? redColor:lightGrey,
                    title: signUp,
                    textColor: whiteColor,
                    onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
               5.heightBox,
               Row(
                 children: [
                   alreadyhaveacount.text.color(fontGrey).make(),
                   login.text.color(redColor).make().onTap(() {
                     Get.back();
                   })
                 ],
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
