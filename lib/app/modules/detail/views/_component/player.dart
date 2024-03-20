import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:golpokotha/app/data/colors.dart';
import 'package:golpokotha/app/modules/detail/controllers/detail_controller.dart';
import 'package:golpokotha/app/modules/detail/controllers/player_controller.dart';

class Player extends GetView<DetailController> {
  const Player({super.key});

  @override
  Widget build(BuildContext context) {
     var playController = Get.put(PlayerController());
    //  var controller = Get.put(DetailController());
    return  Obx(() {
      return Scaffold(
        backgroundColor: darkBlack,
        // appBar: AppBar(
        //   title: const Text('PlayerView'),
        //   centerTitle: true,
        // ),
        body: Center(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.expand_more,
                    color: primaryColor,
                    size: 48,
                  )),
              Container(
                height: context.height * 0.4,
                // decoration: BoxDecoration(gradient: LinearGradient(colors: [darkBlack])),
                child: Image.network(
                  controller.content.value.thumbnails?.landscape1 ??
                      'https://storage.googleapis.com/cc-cms-6b752.appspot.com/contents/thumnails/3c3af9f9-b4bb-4240-9380-e463ecf30469/Screenshot%20from%202024-01-17%2015-08-48.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              Text(
                controller.content.value.name ?? "",
                style: const TextStyle(color: primaryColor, fontSize: 24),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                controller.content.value.authors![0],
                style: const TextStyle(color: primaryColor, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                controller.content.value.narrators![0],
                style: const TextStyle(color: primaryColor, fontSize: 16),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ProgressBar(
                  progress: const Duration(milliseconds: 1000),
                  buffered: const Duration(milliseconds: 2000),
                  total: const Duration(milliseconds: 5000),
                  baseBarColor: ProgressBarColor,
                  // timeLabelPadding: 16,
                  onSeek: (duration) {
                    print('User selected a new time: $duration');
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fast_rewind,
                        color: primaryColor,
                        size: 32,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_previous,
                        color: primaryColor,
                        size: 32,
                      )),
                  StreamBuilder<bool>(
                      stream: playController.isPlaying,
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return Container();
                        }
                        return IconButton(
                          onPressed: () {
                            var chapters = controller.content.value.chapters;
                            List<String> chaptersValue = [];
                            if (chapters != null) {
                              // print(chapters);
                              for (var element in chapters.entries) {
                                chaptersValue.add(element.value);
                              }
                            }
                            // print(chaptersValue);
                            playController.loadPlaylistAndPlay(chaptersValue);
                            if (!(snapshot.data ?? false)) {
                              playController.play;
                            } else {
                              playController.pause;
                            }
                            // playController.loadPlaylistAndPlay();
                          },
                          icon: snapshot.data ?? false
                              ? const Icon(
                                  Icons.pause_circle_filled,
                                  color: primaryColor,
                                  size: 64,
                                )
                              : const Icon(
                                  Icons.play_circle_filled,
                                  color: primaryColor,
                                  size: 64,
                                ),
                        );
                      }),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_next,
                        color: primaryColor,
                        size: 32,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.fast_forward,
                        color: primaryColor,
                        size: 32,
                      )),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_up,
                    color: primaryColor,
                    size: 32,
                  )),
              const Text(
                'Chapter(1/2)',
                style: TextStyle(color: primaryColor),
              )
            ],
          ),
        ),
      );
    });
  }
}