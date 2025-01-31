
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task31/core/styles/styles_manager.dart';
import 'package:task31/core/values/app_colors.dart';
import 'package:task31/persentation/home/controllers/home_controller.dart';
import 'package:task31/persentation/home/views/widget/search_page.dart';


class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    controller.obs;
    return Scaffold(
      backgroundColor: ThemeColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ThemeColors.greenColor,
        title: Text(
          "Search Flights",
          style: AppTextStyle.sfRegular.copyWith(fontSize: 18.sp, color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){}
        ),
        actions: [
          SizedBox(width: 20,),
          Icon(Icons.line_weight_sharp),
          SizedBox(width: 20,),
        ],
      ),
      body: Container(
        height: 844.h,
        width: 390.w,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Image.asset("assets/images/image.png"),
                    ),
                    Positioned(
                        top: 10.h,
                        left: 10.w,
                        child: Text(
                      "Let’s start your trip",
                      style: AppTextStyle.sfRegular.copyWith(fontSize: 18.sp,
                          color: ThemeColors.whiteColor,fontWeight: FontWeight.w500),
                    )),
                    Positioned(
                      bottom: 0,
                        left: 20.w,
                        child: Container(
                          height: 50.h,
                          width: MediaQuery.of(context).size.width *0.9,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ThemeColors.whiteColor
                                  ),
                                  child: Text(
                                    "Round Trip",
                                    style: AppTextStyle.sfRegular.copyWith(fontSize: 14.sp,
                                        color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                    color: ThemeColors.appColor
                                  ),
                                  child: Text(
                                    "One Way",
                                    style: AppTextStyle.sfRegular.copyWith(fontSize: 14.sp,
                                        color: ThemeColors.whiteColor,fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 50.h,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: ThemeColors.whiteColor
                                  ),
                                  child: Text(
                                    "Multi-city",
                                    style: AppTextStyle.sfRegular.copyWith(fontSize: 14.sp,
                                        color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/flight.png',height: 30,),
                                    SizedBox(width: 10,),
                                    Text(
                                      "From",
                                      style: AppTextStyle.sfLight.copyWith(fontSize: 16.sp,
                                          color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    SizedBox(width: 20.w,),
                                    Image.asset('assets/images/line.png'),
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  children: [
                                    Image.asset('assets/images/location.png',height: 30,),
                                    SizedBox(width: 10,),
                                    Text(
                                      "  To",
                                      style: AppTextStyle.sfLight.copyWith(fontSize: 16.sp,
                                          color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Image.asset('assets/images/swap.png',height: 40.h,)
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              readOnly: true,
                              controller: TextEditingController(text: 'Sat,23 Mar-2024'),
                              decoration: InputDecoration(
                                labelText: "Departure",
                                suffixIcon: Icon(Icons.calendar_today),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: TextField(
                              readOnly: true,
                              controller: TextEditingController(text: 'Sat,23 Mar-2024'),
                              decoration: InputDecoration(
                                labelText: "Return",
                                suffixIcon: Icon(Icons.calendar_today),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              readOnly: true,
                              controller: TextEditingController(text: '1 Passenger'),
                              decoration: InputDecoration(
                                labelText: "Travelers",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Expanded(
                            child: TextField(
                              readOnly: true,
                              controller: TextEditingController(text: 'Economy Class'),
                              decoration: InputDecoration(
                                labelText: "Cabin Class",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey[300]!),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      GestureDetector(
                        onTap: (){
                          Get.to(SearchPage());
                        },
                        child: Container(
                          height: 40.h,
                          width: 139.w,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ThemeColors.appColor
                          ),
                          child:  Text("Search Flights",
                            style: AppTextStyle.sfLight.copyWith(fontSize: 14.sp,
                                color: ThemeColors.whiteColor,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Travel Inspirations",
                            style: AppTextStyle.sfSemiBold.copyWith(fontSize: 16.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                "Dubai",
                                style: AppTextStyle.sfSemiBold.copyWith(fontSize: 16.sp,
                                    color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded,
                                color: ThemeColors.greenColor,)
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Container(
                        height: 320.h,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context,index){
                          return GestureDetector(
                            onTap: (){
                              Get.to(SearchPage());
                            },
                            child: Container(
                              height: 313.h,
                              width: 180.w,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/image1.png"),
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "From AED867",
                                      style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                          color: ThemeColors.whiteColor,fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Economy round trip",
                                      style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                          color: ThemeColors.whiteColor,fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "Saudi Arabia",
                                      style: AppTextStyle.sfSemiBold.copyWith(fontSize: 20.sp,
                                          color: ThemeColors.whiteColor,fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 20.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Flight & Hotel Packages",
                            style: AppTextStyle.sfSemiBold.copyWith(fontSize: 16.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h,),
                      Image.asset('assets/images/image2.png'),
                      SizedBox(height: 20.h,),
                    ],
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
