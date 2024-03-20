import 'package:flutter/material.dart';
import 'package:flutter_img/flutter_img.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/home/controllers/contentController.dart';
import 'package:golpokotha/app/modules/home/controllers/home_controller.dart';
import 'package:golpokotha/app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    // print(controller.contents);
    return Obx(() {
      return SizedBox(
        height: 170,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.contents.length,
          itemBuilder: (context, index) => ImageContainer(
            documentId: controller.contents[index].documentId ??'',
              title: controller.contents[index].name ?? '',
              des: controller.contents[index].description ?? '',
              image: controller.contents[index].thumbnails?.landscape1 ??
                  'https://storage.googleapis.com/cc-cms-6b752.appspot.com/contents/thumnails/0cb99102-7fdb-479a-9e61-8e2d2ea7daf7/sample_640%C3%97426.svg'),
        ),
      );
    });
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer(
      {super.key, required this.title, required this.des, required this.image, required this.documentId});
  final String title;
  final String des;
  final String image;
  final String documentId;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 170,
      width: 110,
      child: InkWell(
        onTap: () {
          Get.toNamed(AppPages.DETAILS, arguments: documentId);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child:Image.network(
                          image,
                          fit: BoxFit.cover,
                        ),
                )),
            SizedBox(
              height: 2,
            ),
            Text(
              title,
              style: TextStyle(
                  color: primaryColor,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              des,
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
      ),
    );
  }
}
