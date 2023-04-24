import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class NoticePage extends StatefulWidget {
  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  List _noticeList = [];

  Future _getNoticeList() async {
    Uri apiUrl = Uri.parse("http://127.0.0.1:8000/api/notice");
    var response = await http.get(apiUrl);

    if (response.statusCode == 200) {
      setState(() {
        _noticeList = json.decode(response.body);
      });
    } else {
      print("Failed to load data");
    }
  }

  @override
  void initState() {
    super.initState();
    _getNoticeList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: _noticeList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 6.0,
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  ListTile(
                    title: Text(
                        "${_noticeList[index]['id']}.  ${_noticeList[index]['title']}",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        )),
                    subtitle: Text(_noticeList[index]['description']),
                    trailing: Text(_noticeList[index]['date']),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
