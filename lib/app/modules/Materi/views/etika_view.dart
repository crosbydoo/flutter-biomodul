import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class EtikaView extends GetView {
  const EtikaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0A4D68),
      appBar: AppBar(
        backgroundColor: const Color(0XFF088395),
        title: Text(
          'Etika Penanganan Hewan',
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 40, bottom: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Color(0XFF088395),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Pemeliharaan',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0XFF05BFDB),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: const VideoPlayer(),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20, right: 20, top: 15, bottom: 15),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Color(0XFF088395),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Pembedahan dan Pasca Bedah',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Wrap(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0XFF05BFDB),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: const VideoPlayerDua(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final url = 'https://www.youtube.com/watch?v=DwCCAWR1vx0';

  late YoutubePlayerController _youtubePlayerController;
  late TextEditingController _textFieldController;
  bool _isVideoPlaying = false;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(url);
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    _textFieldController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    _textFieldController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isVideoPlaying = !_isVideoPlaying;
    });
    if (_isVideoPlaying) {
      _youtubePlayerController.play();
    } else {
      _youtubePlayerController.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          YoutubePlayer(
            controller: _youtubePlayerController,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
            progressColors: const ProgressBarColors(
              playedColor: Colors.red,
              handleColor: Colors.redAccent,
            ),
            onReady: () {
              if (!_isVideoPlaying) {
                _youtubePlayerController.pause();
              }
            },
          ),
          InkWell(
            onTap: _togglePlayPause,
            child: Container(
              width: 150,
              height: 40,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _isVideoPlaying ? 'Pause' : 'Play',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    _isVideoPlaying ? Icons.pause : Icons.play_arrow_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class VideoPlayerDua extends StatefulWidget {
  const VideoPlayerDua({super.key});

  @override
  State<VideoPlayerDua> createState() => _VideoPlayerDuaState();
}

class _VideoPlayerDuaState extends State<VideoPlayerDua> {
  final url = 'https://www.youtube.com/watch?v=9figD7CSLUk';

  late YoutubePlayerController _youtubePlayerController;
  late TextEditingController _textFieldController;
  bool _isVideoPlaying = false;

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(url);
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );
    _textFieldController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    _textFieldController.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isVideoPlaying = !_isVideoPlaying;
    });
    if (_isVideoPlaying) {
      _youtubePlayerController.play();
    } else {
      _youtubePlayerController.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          YoutubePlayer(
            controller: _youtubePlayerController,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.red,
            progressColors: const ProgressBarColors(
              playedColor: Colors.red,
              handleColor: Colors.redAccent,
            ),
            onReady: () {
              if (!_isVideoPlaying) {
                _youtubePlayerController.pause();
              }
            },
          ),
          InkWell(
            onTap: _togglePlayPause,
            child: Container(
              width: 150,
              height: 40,
              margin: const EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _isVideoPlaying ? 'Pause' : 'Play',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    _isVideoPlaying ? Icons.pause : Icons.play_arrow_rounded,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
