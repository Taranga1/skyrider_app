import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core_desktop/firebase_core_desktop.dart';
import 'package:flutter_application_2/bottomnavbar.dart';
import 'package:flutter_application_2/homepage.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/school_page.dart';

// Future main() async {
void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final List<Map<String, String>> data = [
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        toolbarHeight: MediaQuery.of(context).size.height * 0.11,
        elevation: 14,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20))),
        title: const Text("Sky Rider"),
        actions: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 7, spreadRadius: 3, color: Colors.deepOrange)
                ], shape: BoxShape.circle, color: Colors.deepOrange),
                child: const Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 7, spreadRadius: 3, color: Colors.deepOrange)
                ], shape: BoxShape.circle, color: Colors.deepOrange),
                child: const Icon(
                  Icons.notifications,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 7, spreadRadius: 3, color: Colors.deepOrange)
                ], shape: BoxShape.circle, color: Colors.deepOrange),
                child: const Icon(
                  Icons.logout,
                  size: 20,
                ),
              ),
              const SizedBox(
                width: 26,
              ),
            ],
          ),
        ],
      ),
      // body: ListView.builder(
      //   itemCount: data.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return Padding(
      //       padding: const EdgeInsets.all(16.0),
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.circular(12),
      //         child: Stack(
      //           children: [
      //             Container(
      //               height: 100,
      //               width: double.infinity - 100,
      //               decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                   image: NetworkImage(
      //                       "https://imgs.search.brave.com/V5-qPu9xTe0Ot2kMB7ILVFtRHlcUZkdDo3-UPEJRxkA/rs:fit:1200:1152:1/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZnJlZWNyZWF0/aXZlcy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDQv/QWJzdHJhY3QtU29s/aWQtQ29sb3JCYWNr/Z3JvdW5kLmpwZw"),
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //             Positioned(
      //               top: 40,
      //               left: 20,
      //               child: Text(
      //                 data[index]['name']!,
      //                 style: const TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 18,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),
      body: BottomNavBar(),
    );
  }
}
