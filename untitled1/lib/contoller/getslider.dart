import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:untitled1/model/slider.dart';
//final getdatapopular get =Get.<Getpopular>(ref)=>Getpopular());
final getdatapopular = Get.put(Getpopular());
class Getpopular extends GetxController {
  List<Movie>listDataModel=[];

  Getpopular(){
    getData();
  }

  Future getData() async {
    listDataModel=[];
    try{
      String apiKey="8b473af1978325ec534dfc56c1984dfd";
      var url=Uri.parse("https://api.themoviedb.org/3/movie/popular?api_key=$apiKey");
      print(url);
      var response=await http.get(url);
      var responsebody=jsonDecode(response.body)["results"];
      print("responsebody:$responsebody");
      for(int i=0;i<responsebody.length;i++){
        listDataModel.add(Movie.fromMap(responsebody[i]));
      }


    }catch(e){
      print("e===>$e");
    }
   // notifyListeners();
  }
}