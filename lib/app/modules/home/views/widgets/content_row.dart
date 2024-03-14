import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/controllers/contentController.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ContentController());
    return 
          SizedBox(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.contentList.length,
              itemBuilder: (context, index) => ImageContainer(
                  title: controller.contentList[index].title ?? '',
                  des: controller.contentList[index].des ?? '',
                  image: controller.contentList[index].image ?? ''),
            ),
          );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key, required this.title, required this.des, required this.image});
  final String title;
  final String des;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 170,
      width: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              height: 100,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(5) ,
                child: Image.asset(
                 image,
                  fit: BoxFit.cover,
                ),
              )),
              SizedBox(height: 2,),
          Text(
            'Tittle',
            style: TextStyle(
                color: primaryColor,
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
          ),
           SizedBox(height: 2,),
          Text(
            'This is description of book',
            style: TextStyle(
                color: primaryColor,
                fontFamily: GoogleFonts.roboto().fontFamily,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
