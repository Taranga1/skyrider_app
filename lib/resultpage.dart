import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Result {
  final int id;
  final String symbolNumber;
  final double gpa;

  Result({required this.id, required this.symbolNumber, required this.gpa});

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json['id'],
      symbolNumber: json['symbolnumber'],
      gpa: double.parse(json['gpa']),
    );
  }
}

class ResultListPage extends StatefulWidget {
  @override
  _ResultListPageState createState() => _ResultListPageState();
}

class _ResultListPageState extends State<ResultListPage> {
  late List<Result> _results;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchResults();
  }

  Future<void> _fetchResults() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:8000/api/result'));

    if (response.statusCode == 200) {
      final List<dynamic> resultsJson = json.decode(response.body);
      _results = resultsJson.map((json) => Result.fromJson(json)).toList();
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _results.length,
              itemBuilder: (context, index) {
                final result = _results[index];
                return Card(
                  elevation: 6,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      ListTile(
                        title: Text('${result.id}' + ' .',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text(
                            'Symbol Number : ${result.symbolNumber} \nGPA                     : ${result.gpa}'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
