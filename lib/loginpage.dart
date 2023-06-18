import 'package:flutter/material.dart';
import 'package:hilwalal_app/signuppage.dart';

import 'dashboard.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HIILLWALAL APPLICATION'),
        centerTitle: true,
        actions: [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.login_sharp,
              size: 100.80,
              color: Colors.green,
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 3, 106, 189),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',

                prefixIcon: Icon(Icons.person),
                // border: OutlineInputBorder(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
              ),
            ),
            SizedBox(
              height: 15,
              width: 60,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                // border: OutlineInputBorder(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60.0),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
              child: Text('Login'),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text('SignUp'),
            ),
          ],
        ),
      ),
    );
  }
}
