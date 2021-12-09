import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/widgets/customtext.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'chooselocation.dart';
class ServiceScreen extends StatelessWidget {
  final List<String> imgList = [];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black12,

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: Icon(Icons.menu),
      ),
     body: Column(
         children: [
     Container(
       child: CarouselSlider.builder(
     options:  CarouselOptions(
     height: MediaQuery.of(context).size.height / 3,
      aspectRatio: 1.5,
      viewportFraction: 0.7,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 2),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      scrollDirection: Axis.horizontal,
    ),
          itemCount: viewmodeltoprate.listDataModel.length,
           itemBuilder:(BuildContext context, int index, int realIndex) {
    return GridTile(
    child: Image.network(
    image_url +
    viewmodeltoprate.listDataModel[index].poster_path,
    fit: BoxFit.fill,
    ),
    footer: Container(
    color: Colors.red.withOpacity(0.5),
    alignment: Alignment.center,
    padding: EdgeInsets.all(5.0),
    child: Text(
    viewmodeltoprate.listDataModel[index].title
        .toString(),
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w800, fontSize: 16),
    )),
    ); ,
          ),
     ),
                   SizedBox(height: MediaQuery.of(context).size.height/20,),
                   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 100,horizontal: 50),
                     child: Container(
                       decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(10.0),
                         color: Colors.blueGrey,
                       ) ,


                       child: Row(

                         children: [
                           Container(
                             child: TextButton.icon(onPressed: (){
                               Get.to(Location());
                             }, icon: Icon(Icons.access_time_filled_outlined),
                               label: CustomText(
                                 text:'Go To',
                                 font_size: 22,
                                 font_weight: FontWeight.w600,
                                 text_align: TextAlign.start,
                                 color: Colors.white,

                               ),

                             ),
                           ),



                         ],
                       ),

                     ),
                   ),

                       SizedBox(height: MediaQuery.of(context).size.height/20,),
                   Container(
                     margin: EdgeInsets.only(left: 10),
                     alignment:Alignment.topLeft ,
                     child: Text("Around you",style: TextStyle(
                       color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700,

                     ),),
                   ),



                 ],
               ),










         );
  }
}
