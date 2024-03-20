import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/detail/views/_component/player.dart';
import 'package:golpokotha/app/modules/home/views/widgets/add_section.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/detail_controller.dart';
// import 'package:flutter_svg/svg.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: darkBlack,
      body: Obx(
        () {
          return Padding(
            padding: const EdgeInsets.only(
              top: 32,
            ),
            child: Stack(children: [
              SizedBox(
                  // decoration: BoxDecoration(gradient: LinearGradient(colors: [
                  //   linearGradientColor
                  // ])),
          
                   height: context.height*0.4,
                  // width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      controller.content.value.thumbnails?.landscape1 ??
                          'https://storage.googleapis.com/cc-cms-6b752.appspot.com/contents/thumnails/3c3af9f9-b4bb-4240-9380-e463ecf30469/Screenshot%20from%202024-01-17%2015-08-48.png',
                       fit: BoxFit.cover,
                    ),
                  )),
              Column(
                children: [
                  TopBar(),
                  // Obx(() {
                  //   return 
                    Expanded(
                      child: ListView(
                        children: [
                          ContentSection(
                            titleName: controller.content.value.name ?? "",
                            authorName: controller.content.value.authors?.first??"" ,
                            narratorName: controller.content.value.narrators?.first??"",
                            audioListen:
                                controller.content.value.reviews.toString(),
                            likes: controller.content.value.rating.toString(),
                            description: controller.content.value.description ?? "",
                          ),
                          ...List.generate(
                            controller.content.value.chapters?.length??0,
                            (index) => Chapter(
                              // onPressedPlay: () {
                              //   //check if already playing
                              //   controller.chapterPlayIndex.value = "$index";
                              // },
                              name: 'Chapter $index',
                              isPlay: controller.chapterPlayIndex.value == '$index',
                            ),
                          )
                        ],
                      ),
                    ),
                  // }),
                ],
              ),
              const Align(alignment: Alignment.bottomCenter, child: AddSection())
            ]),
          );
        }
      ),
    );
  }
}

class Chapter extends StatefulWidget {
    final String name;
  final bool isPlay;
  const Chapter({super.key, required this.name, required this.isPlay});

  @override
  State<Chapter> createState() => _ChapterState();
}

class _ChapterState extends State<Chapter> {
  bool showScreen = false;
  void showPlayer(){
    setState(() {
      showScreen = !showScreen;
      if(showScreen){
        Get.off(const Player());
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    child: Image.asset('assets/images/Frame 8(6).jpg'),
                  ),
                  IconButton(
                    onPressed: () {
                      showPlayer();
                      // Get.toNamed(AppPages.PLAYERPAGE,
                      //     arguments: controller.content.value);
                    },
                    icon: Icon(Icons.play_arrow, color: primaryColor),
                  ),
                  // if(showScreen) Player(),
                ],
              ),
              SizedBox(width: 16),
              Text(
                widget.name,
                style: TextStyle(
                  color: primaryColor,
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              color: primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}


class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: primaryColor,
                )),
            const Text(
              'Story details',
              style: TextStyle(color: primaryColor, fontSize: 22),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: primaryColor,
                )),
          ],
        ),
      ],
    );
  }
}

class ContentSection extends StatelessWidget {
  final String titleName;
  final String authorName;
  final String narratorName;
  final String audioListen;
  final String likes;
  final String description;
  const ContentSection({
    super.key,
    required this.titleName,
    required this.authorName,
    required this.narratorName,
    required this.audioListen,
    required this.likes,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 128),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          titleName,
          style: TextStyle(
              color: primaryColor,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          authorName,
          style: TextStyle(
              color: primaryColor,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.normal),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          narratorName,
          style: TextStyle(
              color: primaryColor,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              fontStyle: FontStyle.normal),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          // color: Colors.amber,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.headphones,
                    color: tertiaryText,
                    size: 16,
                  ),
                  Text(
                    audioListen,
                    style: TextStyle(color: tertiaryText),
                  ),
                ],
              ),
              SizedBox(
                width: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: tertiaryText,
                    size: 16,
                  ),
                  Text(
                    likes,
                    style: TextStyle(color: tertiaryText),
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          description,
          // 'Lorem ipsum dolor sit amet consectetur. Volutpat elit nunc viverra mi vel porta diam. Augue phasellus nulla elit porttitor ultricies tortor dolor pellentesque tristique. Elementum diam commodo aliquam varius suspendisse aliquet tortor aliquet volutpat. Mattis purus lectus quis ullamcorper congue in diam.',
          style: TextStyle(color: tertiaryText),
        )
      ]),
    );
  }
}
