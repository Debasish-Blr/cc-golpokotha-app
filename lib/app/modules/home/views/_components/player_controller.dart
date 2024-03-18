// ignore_for_file: avoid_print

import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:get/get.dart';
import 'package:golpokotha/app/modules/home/views/_components/position_data.dart';
import 'package:just_audio/just_audio.dart';

class PlayerController extends GetxController {
  final player = AudioPlayer();

  @override
  void onInit() async {
    await initPlayer();
    super.onInit();
  }

  Future<void> initPlayer() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
    try {
      await player.setAudioSource(
        AudioSource.uri(
          Uri.parse(
            "https://storage.googleapis.com/cc-cms-6b752.appspot.com/contents/audioFiles/a35ad4b3-7e0f-40e8-8749-8d94f83bd1bf/files/Metro%20Boomin%20-%20Too%20Many%20Nights%20%28feat.%20Don%20Toliver%20%26%20with%20Future%29.mp3",
          ),
        ),
      );
      await player.play();
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }

  Stream<PositionData> get positionDataStream => _getStreamedPositionData();

  _getStreamedPositionData() {
    final StreamController<PositionData> _controller =
        StreamController<PositionData>();
    _controller.add(
      PositionData(player.position, player.bufferedPosition,
          player.duration ?? Duration.zero),
    );
    return _controller.stream;
  }
}
