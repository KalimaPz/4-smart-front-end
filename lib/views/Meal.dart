import 'package:eldercare/components/ArticleArea.dart';
import 'package:eldercare/components/CustomHeader.dart';
import 'package:eldercare/components/VideoPlayerComponent.dart';
// import 'package:eldercare/components/VideoPlayerComponent.dart';
import 'package:eldercare/config/Views.dart';
import 'package:eldercare/data/DataClass.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Meal extends StatefulWidget {
  const Meal({Key key}) : super(key: key);

  @override
  _MealState createState() => _MealState();
}

class _MealState extends State<Meal> {
  final double imageSize = 256;

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: '1vrEljMfXYo',
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: true,
    ),
  );

  // TextEditingController _idController;
  // TextEditingController _seekToController;
  // PlayerState _playerState;
  // YoutubeMetaData _videoMetaData;
  // double _volume = 100;
  // bool _muted = false;
  // bool _isPlayerReady = false;

  // void listener() {
  //   if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
  //     setState(() {
  //       _playerState = _controller.value.playerState;
  //       _videoMetaData = _controller.metadata;
  //     });
  //   }
  // }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'HYayn0wTlM0',
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    // ..addListener(listener);
    // _idController = TextEditingController();
    // _seekToController = TextEditingController();
    // _videoMetaData = const YoutubeMetaData();
    // _playerState = PlayerState.unknown;
  }

  @override
  Widget build(BuildContext context) {
    final String title = 'กินข้าวอร่อย';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '$title',
          style: TextStyle(fontSize: Views.titleSize),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ArticleArea(
                  topic: '${DataClass.mealPage['content'][0]['header']}',
                  textSize: Views.topicSize,
                  contents: [
                    Text('${DataClass.mealPage['content'][0]['detail'][0]}',
                        style: TextStyle(fontSize: Views.contentTextSize)),
                    Padding(
                      padding: EdgeInsets.all(Views.topicPadding),
                      child: Image.asset(
                        'assets/images/Done/6.png',
                        width: imageSize,
                        height: imageSize,
                      ),
                    ),
           
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: CustomHeader(text: 'การแปรงฟันอย่างถูกวิธี',textSize: Views.subTopicSize,),),
                        ],
                      ),
                    ),
                    VideoPlayerComponent(videoUrl: 'HYayn0wTlM0'),
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
