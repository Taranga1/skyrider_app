import "package:flutter/material.dart";

class ButtonAdmission extends StatefulWidget {
  const ButtonAdmission({super.key});

  @override
  State<ButtonAdmission> createState() => ButtonAdmissionState();
}

class ButtonAdmissionState extends State<ButtonAdmission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          BackButton(),
          Text("data"),
        ],
      ),
    );
  }
}
