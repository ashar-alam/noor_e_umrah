import 'package:flutter/material.dart';

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({Key? key}) : super(key: key);

  @override
  State<MyVideoPlayer> createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
//body: VideosPlayer(
//                        networkVideos: [
//                          NetworkVideo(
//                              id: "2",
//                              name: "Elephant Dream",
//                              videoUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
//                              thumbnailUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
//                              videoControl: NetworkVideoControl(
//                                fullScreenByDefault: true,
//                              )),
//                          NetworkVideo(
//                              id: "3",
//                              name: "Big Buck Bunny",
//                              videoUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
//                              thumbnailUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
//                              videoControl: NetworkVideoControl(autoPlay: true)),
//                          NetworkVideo(
//                              id: "4",
//                              name: "For Bigger Blazes",
//                              videoUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
//                              thumbnailUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg"),
//                          NetworkVideo(
//                              id: "5",
//                              name: "For Bigger Escape",
//                              videoUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
//                              thumbnailUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerEscapes.jpg"),
//                          NetworkVideo(
//                              id: "6",
//                              name: "For Bigger Fun",
//                              videoUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
//                              thumbnailUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerFun.jpg"),
//                          NetworkVideo(
//                              id: "7",
//                              name: "For Bigger Joyrides",
//                              videoUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
//                              thumbnailUrl:
//                                  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerJoyrides.jpg"),
//                        ],
//                        playlistStyle: Style.Style2,
//                      )
// );
//   }
// }
// class VideoPlayerCustom extends StatefulWidget {
//   const VideoPlayerCustom({Key? key}) : super(key: key);

//   @override
//   State<VideoPlayerCustom> createState() => _VideoPlayerCustomState();
// }

// class _VideoPlayerCustomState extends State<VideoPlayerCustom> {
//   late VideoPlayerController _controller;
//   late Future<void> _initializeVideoPlayerFuture;
//   @override
//   void initState() {
//     _controller = VideoPlayerController.network(
//         "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4");
//     //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
//     _initializeVideoPlayerFuture = _controller.initialize();
//     _controller.setLooping(true);
//     _controller.setVolume(1.0);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: _initializeVideoPlayerFuture,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return Center(
//               child: AspectRatio(
//                 aspectRatio: _controller.value.aspectRatio,
//                 child: VideoPlayer(_controller),
//               ),
//             );
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             if (_controller.value.isPlaying) {
//               _controller.pause();
//             } else {
//               _controller.play();
//             }
//           });
//         },
//         child:
//             Icon(_controller.value.isPlaying ? Icons.pause : Icons.play_arrow),
//       ),
//     );
  }
}
