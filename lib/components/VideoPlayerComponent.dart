import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String videoUrl;
  VideoPlayerComponent({Key key,this.videoUrl}) : super(key: key);

  @override
  _VideoPlayerComponentState createState() => _VideoPlayerComponentState();
}

class _VideoPlayerComponentState extends State<VideoPlayerComponent> {

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );
  
  @override
  void initState() {
    super.initState();
        _controller = YoutubePlayerController(
      initialVideoId: widget.videoUrl,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                      onReady: () {

                      },)
    );
  }
}