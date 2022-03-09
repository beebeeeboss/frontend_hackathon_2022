import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({required this.imageAssetPath,required this.title,required this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = <SliderModel>[];
  SliderModel sliderModel = new SliderModel(imageAssetPath: "", title: "", desc: "");

  //1
  sliderModel.setDesc("vgdngbhj nckm vgbhjkmldc hbjdc");
  sliderModel.setTitle("Sleep");
  sliderModel.setImageAssetPath("assets/one.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(imageAssetPath: "", title: "", desc: "");

  //2
  sliderModel.setDesc("gvbhjdksbhjkml;sjhbkmldskjmls,;d");
  sliderModel.setTitle("Code");
  sliderModel.setImageAssetPath("assets/two.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(imageAssetPath: "", title: "", desc: "");

  //3
  sliderModel.setDesc("tfghwjdkscghbjkm ld,cvgbhjdkmlcgvbhjckml");
  sliderModel.setTitle("Repeat");
  sliderModel.setImageAssetPath("assets/three.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel(imageAssetPath: "", title: "", desc: "");

  return slides;
}