import 'dart:async';
import 'package:audio_session/audio_session.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
 
class PlayerController extends GetxController {
  final _player = AudioPlayer();
 
  @override
  onInit() {
    super.onInit();
    _initPlayer();
  }
 
  Future<void> _initPlayer() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.music());
  }
 
  Stream<Duration> get positionDataStream => _player.positionStream;
 
  Future<void> get play => _player.play();
  Future<void> get pause => _player.pause();
  Future<void> get nextTrack => _player.seekToNext();
  Future<void> get previousTrack => _player.seekToPrevious();
  Stream<bool> get isPlaying => _player.playingStream;
  int get currentIndex => _player.currentIndex ?? 0;
  Duration get totalPosition => _player.duration ?? Duration.zero;
 
  loadPlaylistAndPlay(List<String> chapters,
      {int initialIndex = 0, Duration initialPosition = Duration.zero}) async {
    // _player.dispose();
    print(chapters);
    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: [
        ...List.generate(chapters.length, (index) {
          return AudioSource.uri(Uri.parse(chapters[index]));
        })
      ],
    );
    await _player.setAudioSource(playlist,
        initialIndex: initialIndex, initialPosition: initialPosition);
  }
 
  changeChapterByIndexKey(int key) async{
   await _player.seek(Duration.zero, index: key);
  }
 
  forwardBy(int inSeconds) async {
    await _player.seek(Duration(seconds: inSeconds));
  }
 
  backwardBy(int inSeconds) async {
    await _player
        .seek(Duration(seconds: _player.position.inSeconds - inSeconds));
  }
}
 