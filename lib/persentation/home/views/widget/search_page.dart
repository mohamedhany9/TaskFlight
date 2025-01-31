import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task31/core/styles/styles_manager.dart';
import 'package:task31/core/values/app_colors.dart';
import 'package:task31/persentation/home/controllers/home_controller.dart';

class SearchPage extends GetView<HomeController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.whiteColor,
      appBar: AppBar(
        backgroundColor: ThemeColors.greenColor,
        title: Text(
          "Ezy Travel",
          style: AppTextStyle.sfRegular.copyWith(fontSize: 18.sp, color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: (){
              Get.back();
            }
        ),

      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                margin: EdgeInsets.all(8),
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
                child: Column(
                  children: [
                    SizedBox(height: 5,),
                    Text(
                      "BLR - Bengaluru to DXB - Dubai",
                      style: AppTextStyle.sfBold.copyWith(fontSize: 14.sp,
                          color: ThemeColors.blackColor,fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Departure: Sat, 23 Mar - Return: Sat, 23 Mar",
                      style: AppTextStyle.sfSemiBold.copyWith(fontSize: 12.sp,
                          color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "(Round Trip)",
                          style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                              color: HexColor('#FA7927'),fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 10.w,),
                        Text(
                          "Modify Search",
                          style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                              color: HexColor('#2EA446'),fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Sort",
                              style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                                  color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                            ),
                            Icon(Icons.keyboard_arrow_down_outlined)
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Non - Stop",
                              style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                                  color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Filter",
                              style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                                  color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                            ),
                            Icon(Icons.filter_list_outlined)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5,)
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Mar 22 - Mar 23",
                            style: AppTextStyle.sfSemiBold.copyWith(fontSize: 11.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "From AED 741",
                            style: AppTextStyle.sfRegular.copyWith(fontSize: 11.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: HexColor('#2EA446'),width: 1.5),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Mar 22 - Mar 23",
                            style: AppTextStyle.sfSemiBold.copyWith(fontSize: 11.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "From AED 741",
                            style: AppTextStyle.sfRegular.copyWith(fontSize: 11.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Mar 22 - Mar 23",
                            style: AppTextStyle.sfSemiBold.copyWith(fontSize: 11.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "From AED 741",
                            style: AppTextStyle.sfRegular.copyWith(fontSize: 11.sp,
                                color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "851 Flight Found",
                  style: AppTextStyle.sfSemiBold.copyWith(fontSize: 15.sp,
                      color: ThemeColors.blackColor,fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10.h,),
              ListView.builder(
                 itemCount: 5,
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 itemBuilder: (context,index){
               return  Container(
                 width: MediaQuery.of(context).size.width,
                 margin: EdgeInsets.all(8),
                 //padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(6),
                   color: Colors.white,
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.3),
                       spreadRadius: 2,
                       blurRadius: 3,
                       offset: Offset(0, 2), // changes position of shadow
                     ),
                   ],
                 ),
                 child: Column(
                   children: [
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                       child: Column(
                         children: [
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Image.asset('assets/images/logo.png',height: 20,),
                               Text(
                                 "Onward - Garuda Indonesia",
                                 style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                                     color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                               ),
                               Spacer(),
                               Text(
                                 "AED 409",
                                 style: AppTextStyle.sfBold.copyWith(fontSize: 16.sp,
                                     color: HexColor('#2EA446'),fontWeight: FontWeight.w700),
                               ),
                             ],
                           ),
                           SizedBox(height: 10,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Column(
                                 children: [
                                   Text(
                                     "14:35",
                                     style: AppTextStyle.sfBold.copyWith(fontSize: 22.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w700),
                                   ),
                                   Text(
                                     "BLR - Bengaluru",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Image.asset('assets/images/line2.png',height: 20,),
                                   Text(
                                     "4h 30m",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 14.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                   Text(
                                     "2 Stops",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Text(
                                     "21:55",
                                     style: AppTextStyle.sfBold.copyWith(fontSize: 22.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w700),
                                   ),
                                   Text(
                                     "DXB - Dubai",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                     Divider(thickness: 1.5,),
                     Container(
                       padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
                       child: Column(
                         children: [
                           SizedBox(height: 5,),
                           Row(
                             children: [
                               Image.asset('assets/images/logo.png',height: 20,),
                               Text(
                                 "Return - Garuda Indonesia",
                                 style: AppTextStyle.sfSemiBold.copyWith(fontSize: 14.sp,
                                     color: ThemeColors.blackColor,fontWeight: FontWeight.w500),
                               ),
                               Spacer(),
                               Text(
                                 "AED 359",
                                 style: AppTextStyle.sfBold.copyWith(fontSize: 16.sp,
                                     color: HexColor('#2EA446'),fontWeight: FontWeight.w700),
                               ),
                             ],
                           ),
                           SizedBox(height: 10,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Column(
                                 children: [
                                   Text(
                                     "21:55",
                                     style: AppTextStyle.sfBold.copyWith(fontSize: 22.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w700),
                                   ),
                                   Text(
                                     "DXB - Dubai",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Image.asset('assets/images/line2.png',height: 20,),
                                   Text(
                                     "4h 30m",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 14.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                               Column(
                                 children: [
                                   Text(
                                     "14:35",
                                     style: AppTextStyle.sfBold.copyWith(fontSize: 22.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w700),
                                   ),
                                   Text(
                                     "BLR - Bengaluru",
                                     style: AppTextStyle.sfLight.copyWith(fontSize: 12.sp,
                                         color: ThemeColors.blackColor,fontWeight: FontWeight.w400),
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 16.w),
                       child: Image.asset('assets/images/line3.png'),
                     ),
                     SizedBox(height: 10,),
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 16.w),
                       child: Row(
                         children: [
                           Container(
                             padding: EdgeInsets.all(4),
                             decoration: BoxDecoration(
                                 border: Border.all(color: HexColor('#63AF23')),
                                 borderRadius: BorderRadius.circular(16)
                             ),
                             child: Text(
                               "Cheapest",
                               style: AppTextStyle.sfSemiBold.copyWith(fontSize: 9.sp,
                                   color: HexColor('#63AF23'),fontWeight: FontWeight.w600),
                             ),
                           ),
                           SizedBox(width: 20.w,),
                           Container(
                             padding: EdgeInsets.all(4),
                             decoration: BoxDecoration(
                                 border: Border.all(color: HexColor('#428EE7')),
                                 borderRadius: BorderRadius.circular(16)
                             ),
                             child: Text(
                               "Refundable",
                               style: AppTextStyle.sfSemiBold.copyWith(fontSize: 9.sp,
                                   color: HexColor('#428EE7'),fontWeight: FontWeight.w600),
                             ),
                           ),
                           Spacer(),
                           Row(
                             children: [
                               Text(
                                 "Flight Details",
                                 style: AppTextStyle.sfSemiBold.copyWith(fontSize: 12.sp,
                                     color: HexColor('##FA7927'),fontWeight: FontWeight.w600),
                               ),
                               Icon(Icons.keyboard_arrow_down_sharp,color: HexColor('##FA7927'),)
                             ],
                           )
                         ],
                       ),
                     ),
                     SizedBox(height: 10,),
                   ],
                 ),
               );
             })
            ],
          ),
        ),
      ),
    );
  }
}
