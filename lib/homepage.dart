import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_2/home_school_content.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentSlide = 0;

  final List<String> _schoolNames = [
    'Skyrider',
    'Higher',
    'Secondary',
    'English',
    'Boarding',
  ];

  final List<String> _schoolImages = [
    'https://imgs.search.brave.com/lWqbDW1WwIMbVH0GrhbeHnsp4D1NzTwkzEaUqfWfzEs/rs:fit:1090:630:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL2dh/bGxlcnlfaW1hZ2Uv/UHJpbWFyeV9CdWls/ZGluZ19CbG9ja19B/LnBuZw',
    'https://imgs.search.brave.com/3W4-sFdYytD523qSBC72BZF848LKQsVN6HcvlJq9Hys/rs:fit:1200:955:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL3Ns/aWRlcl9pbWcvc2sx/MF8xLmpwZw',
    'https://imgs.search.brave.com/czKWh-6Pk9TFo91Znj9LXwY0J_-W-0-20ltCrCZvM4I/rs:fit:1087:432:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL2dh/bGxlcnlfaW1hZ2Uv/UGx1c18yX0Jsb2Nr/X0FfQi5wbmc',
    'https://imgs.search.brave.com/fp5MTZ6qWbpCPs8GicALzRHck4_T2fywFZPakxYEyd8/rs:fit:960:720:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL3N0YXRpYy9p/bWcvc2s0LmpwZw',
    'https://imgs.search.brave.com/vk-SczzXaQ1rBqO4b4fJqkMs1t1LrKqNnx6pXaflRNc/rs:fit:964:634:1/g:ce/aHR0cHM6Ly93d3cu/c2t5cmlkZXIuZWR1/Lm5wL21lZGlhL2dh/bGxlcnlfaW1hZ2Uv/RXh0cmFfQWN0aXZp/dGllc18zLnBuZw',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            CarouselSlider(
              items: List.generate(
                _schoolNames.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.network(
                          _schoolImages[index],
                          width: MediaQuery.of(context).size.width - 20,
                          height: MediaQuery.of(context).size.height * 0.25,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 1.0),
                    ],
                  ),
                ),
              ),
              options: CarouselOptions(
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                pauseAutoPlayOnTouch: true,
                aspectRatio: 1.64,
                onPageChanged: (index, _) {
                  setState(() {
                    _currentSlide = index;
                  });
                },
              ),
            ),
            // const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  _schoolNames.length,
                  (index) => Container(
                    width: 10.0,
                    height: 10.0,
                    margin: const EdgeInsets.symmetric(horizontal: 3.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentSlide == index
                          ? Colors.blue
                          : Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SchoolPage(),
          ],
        ),
      ),
    );
  }
}
