import 'package:flutter/material.dart';
import 'package:flutter_application_2/bottomnavbar.dart';
import 'package:flutter_application_2/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    // define array of valid email and password combinations
    List<Map<String, String>> validCredentials = [
      {'email': '1', 'password': '2'},
      {'email': 'example2@gmail.com', 'password': 'password2'},
      {'email': 'example3@gmail.com', 'password': 'password3'},
    ];

    // check if entered email and password match any of the valid combinations
    bool isValid = false;
    for (int i = 0; i < validCredentials.length; i++) {
      Map<String, String> credentials = validCredentials[i];
      if (email == credentials['email'] &&
          password == credentials['password']) {
        isValid = true;
        break;
      }
    }

    // navigate to homepage or show error message
    if (isValid) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (
            context,
            a,
            b,
          ) =>
              MyHomePage(
            title: "hi",
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Invalid Credentials'),
          content: Text('Please enter a valid email and password.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
