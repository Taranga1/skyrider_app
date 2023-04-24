import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hover_zoom_container.dart';

class GallerySchool extends StatefulWidget {
  const GallerySchool({super.key});

  @override
  State<GallerySchool> createState() => _GallerySchoolState();
}

bool _isHovering = false;

class _GallerySchoolState extends State<GallerySchool> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 18,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: Container(
                color: Colors.deepOrange,
                // decoration: const BoxDecoration(
                //   color: Colors.deepOrange,
                //   image: DecorationImage(
                //     image: AssetImage(
                //       "build.png",
                //     ),
                //     fit: BoxFit.cover,
                //   ),
                // ),
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.22,
                child: Container(
                  color: Colors.white24,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 26, top: 20),
                            child: Text("SkyRider \n School .",
                                style: GoogleFonts.teko(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.00,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 120,
            width: double.infinity,
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://sortsmart.com/content/1-blog/5-the-14-golden-rules-for-effective-applicant-screening-in-university-admissions/admissions-assessment.jpg"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12, top: 18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Admission",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("Admit Students",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            height: 120,
            width: double.infinity,
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://imgs.search.brave.com/cVUTmbf_DTQWKY5Hz76hEQad11hdVYoUY_dsZmxI2uc/rs:fit:800:451:1/g:ce/aHR0cHM6Ly9zcmls/YW5rYWJhZG1pbnRv/bi5say93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMC8wMi93b3Jk/LXJlc3VsdHMtYmFj/a2dyb3VuZC00NTI4/MjIzMC5qcGc"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 18,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Result",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("View Results",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Container(
            height: 120,
            width: double.infinity,
            child: Card(
              elevation: 6,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 30),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              "https://play-lh.googleusercontent.com/ZyWNGIfzUyoajtFcD7NhMksHEZh37f-MkHVGr5Yfefa-IX7yj9SMfI82Z7a2wpdKCA=w240-h480-rw"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 18,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Gallery",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            Text("Gallery Collections",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ],
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
