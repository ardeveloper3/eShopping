// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:eshoping/Widgets_common/home_button.dart';
import 'package:eshoping/consts/colors.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/consts/lists.dart';
import 'package:eshoping/views/splash_screen/Home_Screen/components/featuredButton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.center,
              color: lightGrey,
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: searchanything,
                  hintStyle: TextStyle(
                    color: textfieldGrey,

                  ),

                ),
              ),
            ),
            //swiper brand
            10.heightBox,
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        height: 150,

                        itemCount:SliderList.length , itemBuilder:(context,index){
                      return Image.asset(SliderList[index],fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8.0)).make();
                    } ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(2, (index) =>homeButton(
                        width: context.screenWidth/2.5,
                        height: context.screenHeight*0.15,
                        icon: index==0?icTodaysDeal:icFlashDeal,
                        title: index==0?todayDeal:flashSale,

                      ),
                      ),
                    ),
                    //2nd swiper
                    10.heightBox,
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        height: 150,

                        itemCount:SecondSliderList.length , itemBuilder:(context,index){
                      return Image.asset(SecondSliderList[index],fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8.0)).make();
                    } ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(3, (index) =>homeButton(
                        width: context.screenWidth/3.5,
                        height: context.screenHeight*0.15,
                        icon: index==0?icTopCategories:index==1?icBrands:icTopSeller,
                        title: index==0?topCategories:index==1?brand:topSellers,

                      ),
                      ),
                    ),
                    10.heightBox,
                    Align(
                        alignment: Alignment.centerLeft,
                        child: featuredCategories.text.fontFamily(semibold).color(darkFontGrey).size(22).make()),
                   20.heightBox,
                    SingleChildScrollView(

                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(3, (index) => Column(
                          children: [
                            featuredButton(icon: featuredImages1[index],title: freaturedTitle1[index]),
                            10.heightBox,

                            featuredButton(icon: featuredImages2[index],title: freaturedTitle2[index]),


                          ],
                        )),
                      ),
                    ),
                    20.heightBox,
                    Container(
                      decoration: BoxDecoration(
                        // image: DecorationImage(
                        //   image: AssetImage(imgBackground),fit: BoxFit.fill,
                        //
                        // ),
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(6.0),

                      ),
                      padding: EdgeInsets.all(12),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredCProduct.text.fontFamily(bold).size(18).make(),
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
                          )
                        ],
                      ),
                    ).box.shadowSm.make(),
                    20.heightBox,
                    //thered swiper
                    VxSwiper.builder(
                        aspectRatio: 16/9,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        height: 150,

                        itemCount:SecondSliderList.length , itemBuilder:(context,index){
                      return Image.asset(SecondSliderList[index],fit: BoxFit.fill,).box.rounded.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 8.0)).make();
                    } ),
                    20.heightBox,
                    GridView.builder(
                      physics:NeverScrollableScrollPhysics(),
                      itemCount: 6,
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        mainAxisExtent: 300,
                        ),
                        itemBuilder: (context,index){
                      return  Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(imgP5,height: 200,width: 200,fit: BoxFit.cover,),
                          Spacer(),
                          "Laptop 4GB/64GB ".text.fontFamily(semibold).color(darkFontGrey).make(),
                          "\$600".text.color(redColor).fontFamily(bold).size(16).make(),


                        ],
                      ).box.shadowSm.white.margin(EdgeInsets.symmetric(horizontal: 4.0)).roundedSM.padding(EdgeInsets.all(8.0)).white.make();


                    }


                    )

                  ],
                ),

              ),



            ),


            
          ],
        ),
      ),
    );
  }
}
