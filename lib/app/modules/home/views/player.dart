import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/modules/home/views/_components/player_controller.dart';
import 'package:golpokotha/app/modules/home/views/_components/position_data.dart';

class PlayerPage extends StatefulWidget {
  const PlayerPage({super.key});

  @override
  State<PlayerPage> createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  final PlayerController _playerController = Get.put(PlayerController());
  @override
  void initState() {
    _playerController.initPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var w = constraints.maxWidth;
      var h = constraints.maxHeight;
      return Scaffold(
        body: SafeArea(
          child: Container(
            height: h,
            width: w,
            color: const Color(0xff121212),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.expand_more,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 32,
                          ),
                          Hero(
                            tag: "thumbnail",
                            child: Container(
                              height: w - 64,
                              width: w - 64,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          const Text(
                            "Title of audio",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                            ),
                          )
                              .animate()
                              .fadeIn(
                                delay: 200.ms,
                              )
                              .slideY(),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "Author",
                            style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Narrator",
                            style: TextStyle(
                              color: Colors.white54,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(
                            height: 48,
                          ),
                          StreamBuilder(
                              stream: _playerController.player.positionStream,
                              builder: (_, snapshot) {
                                Duration pos = snapshot.data ?? Duration.zero;
                                Duration totalPos =
                                    _playerController.player.duration ??
                                        Duration.zero;
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Slider(
                                      inactiveColor: Colors.white38,
                                      activeColor: Colors.white,
                                      thumbColor: Colors.white,
                                      value: snapshot.data == null
                                          ? 0
                                          : ((pos.inSeconds /
                                                          totalPos.inSeconds)
                                                      .isNaN ||
                                                  (pos.inSeconds /
                                                          totalPos.inSeconds)
                                                      .isInfinite
                                              ? 0
                                              : (pos.inSeconds /
                                                  totalPos.inSeconds)),
                                      onChanged: (val) {}),
                                );
                              }),
                          const SizedBox(
                            height: 24,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 42),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.skip_previous,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _playerController.player.seek(
                                        _playerController.player.position -
                                            10.ms);
                                  },
                                  icon: const Icon(
                                    Icons.replay_10,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (_playerController.player.playing) {
                                      _playerController.player.pause();
                                    } else {
                                      _playerController.player.play();
                                    }
                                  },
                                  icon: Icon(
                                    _playerController.player.playing
                                        ? Icons.pause_circle
                                        : Icons.play_circle,
                                    color: Colors.white,
                                    size: 56,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _playerController.player.seek(10.ms);
                                  },
                                  icon: const Icon(
                                    Icons.forward_10,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.skip_next,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 32),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Chapter (1/2)",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
