import 'package:flutter/material.dart';
import 'package:flutter_application_2/admission.dart';
import 'package:flutter_application_2/button_admission.dart';

class SchoolPage extends StatefulWidget {
  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  bool _showButtons = false;

  void _toggleButtons() {
    setState(() {
      _showButtons = !_showButtons;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            height: _showButtons ? 700.0 : 500.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 8.0,
                  spreadRadius: 4.0,
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 48.0),
                const Text(
                  'SkyRider School',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Ratnanagar 13, Chitwan.SkyRider school is an educational institution located in Ratnanagar 13, Chitwan. SkyRider school is an educational institution located in Ratnanagar 13, Chitwan.',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[700],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
                const SizedBox(height: 32.0),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 500),
                  opacity: _showButtons ? 1.0 : 0.0,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange,
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          child: const Text(
                            'Facebook Page',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ButtonAdmission()),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            primary: Colors.deepOrange,
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          child: const Text(
                            'Admission',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: _toggleButtons,
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
            ),
            child: Text(
              _showButtons ? 'Hide More' : 'Read More',
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
