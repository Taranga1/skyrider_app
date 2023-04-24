import 'package:animated_image_list/AnimatedImageList.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title: 'Flutter Demo Home Page');
  }
}

class MyImage {
  final String url;
  final String name;
  const MyImage(this.url, this.name);
}

const arr = <MyImage>[
  MyImage(
      "https://imgs.search.brave.com/lWqbDW1WwIMbVH0GrhbeHnsp4D1NzTwkzEaUqfWfzEs/rs:fit:1090:630:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL2dh/bGxlcnlfaW1hZ2Uv/UHJpbWFyeV9CdWls/ZGluZ19CbG9ja19B/LnBuZw",
      ""),
  MyImage(
      "https://imgs.search.brave.com/3W4-sFdYytD523qSBC72BZF848LKQsVN6HcvlJq9Hys/rs:fit:1200:955:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL3Ns/aWRlcl9pbWcvc2sx/MF8xLmpwZw",
      ""),
  MyImage(
      "https://imgs.search.brave.com/u46kWaP9qmZ-5muindE6nrSck95fjYjGCIWDvP-2FuE/rs:fit:350:350:1/g:ce/aHR0cHM6Ly9za3ly/aWRlci5lZHUubnAv/c3RhdGljL2ltZy9s/b2cucG5n",
      ""),
  MyImage(
      "https://imgs.search.brave.com/b-2jSSmPGpPxMbdQT45Hw2Hq4TOa719Jp9T6Cb0st1w/rs:fit:1090:712:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL2dh/bGxlcnlfaW1hZ2Uv/RXh0cmFfQWN0aXZp/dGllc18yLnBuZw",
      ""),
  MyImage(
      "https://imgs.search.brave.com/vk-SczzXaQ1rBqO4b4fJqkMs1t1LrKqNnx6pXaflRNc/rs:fit:964:634:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL2dh/bGxlcnlfaW1hZ2Uv/RXh0cmFfQWN0aXZp/dGllc18zLnBuZw",
      ""),
];

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: AnimatedImageList(
          images: arr.map((e) => e.url).toList(),
          builder: (context, index, progress) {
            return Positioned.directional(
                textDirection: TextDirection.ltr,
                bottom: 15,
                start: 25,
                child: Opacity(
                  opacity: progress > 1 ? (2 - progress) : progress,
                  child: Text(
                    arr[index].name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w500),
                  ),
                ));
          },
          scrollDirection: Axis.vertical,
          itemExtent: 150,
          maxExtent: 400,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
