// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:image_picker/image_picker.dart';
// import 'package:image_picker_web/image_picker_web.dart';

// class AdmissionForm extends StatefulWidget {
//   @override
//   _AdmissionFormState createState() => _AdmissionFormState();
// }

// class _AdmissionFormState extends State<AdmissionForm> {
//   final _formKey = GlobalKey<FormState>();

//   late String _fullName;
//   late String _fatherName;
//   late String _motherName;
//   late String _address1;
//   late String _nextClass;
//   late String _gmail;
//   late String _phone1;
//   late String _phone2;
//   late String _gpa;
//   late String _dob;
//   late String _description;
//   late File _imageUrl;

//   Future getImage() async {
//     if (kIsWeb) {
//       final pickedFile =
//           await ImagePickerWeb.getImage(outputType: ImageType.file);
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     } else {
//       final pickedFile = await ImagePicker().getImage(
//         source: ImageSource.gallery,
//       );
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   Future uploadImage(File image) async {
//     final url = Uri.parse('http://127.0.0.1:8000/api/admission');
//     final request = http.MultipartRequest('POST', url);
//     request.fields['fullname'] = _fullName;
//     request.fields['fathername'] = _fatherName;
//     request.fields['mothername'] = _motherName;
//     request.fields['address1'] = _address1;
//     request.fields['nextclass'] = _nextClass;
//     request.fields['gmail'] = _gmail;
//     request.fields['phone1'] = _phone1;
//     request.fields['phone2'] = _phone2;
//     request.fields['gpa'] = _gpa;
//     request.fields['dob'] = _dob;
//     request.fields['description'] = _description;

//     final pic =
//         await http.MultipartFile.fromPath('image', Uri.parse(_imageUrl).path);

//     request.files.add(pic);

//     final response = await request.send();

//     if (response.statusCode == 200) {
//       print('Image uploaded');
//     } else {
//       print('Image upload failed');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Full Name',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your full name';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _fullName = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _fatherName = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "m's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your m's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _motherName = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Add1",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your add1's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _address1 = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _nextClass = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _gmail = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _phone1 = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _phone2 = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _gpa = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: "Father's Name",
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return "Please enter your father's name";
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _dob = value!;
//                 },
//               ),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Description',
//                 ),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter a description';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _description = value!;
//                 },
//               ),
//               const SizedBox(height: 20.0),
//               Center(
//                 child: GestureDetector(
//                   onTap: () {
//                     getImage();
//                   },
//                   child: _imageUrl == null
//                       ? const Text('Tap to select image')
//                       : Image.network(_imageUrl),
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               TextButton(
//                 child: Text('Submit'),
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     _formKey.currentState!.save();
//                     uploadImage();
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text("data"),
        ],
      ),
    );
  }
}
