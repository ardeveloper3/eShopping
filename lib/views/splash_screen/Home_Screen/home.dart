import 'package:eshoping/Home_controller/Home_controller.dart';
import 'package:eshoping/consts/consts.dart';
import 'package:eshoping/views/splash_screen/Cart_Screen/Cart_Screen.dart';
import 'package:eshoping/views/splash_screen/CategoriesScreen/Categories_Screen.dart';
import 'package:eshoping/views/splash_screen/Home_Screen/Home_Screen.dart';
import 'package:eshoping/views/splash_screen/profile_Screen/profile_Screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    //init home container
    var controller=Get.put(HomeController());
    var navbarItem=[
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,), label: home,),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,), label: categories,),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,), label: cart,),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,), label: account,),

    ];
    var navbody=[
    const HomeScreen(),
      const CategoriesScreen(),
      const  CartScreen(),
      const profileScreen(),


    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Obx(()=>
             Expanded(
              child: navbody.elementAt(controller.currentNavIndex.value),),
          ),
        ],
      ),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controller.currentNavIndex.value,//this line mean controller er maddomy item count hoby 0 thykey
            type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: semibold),
             items: navbarItem,
         onTap: (value){
             controller.currentNavIndex.value=value;
         },

         ),


      ),
    );
  }
}
