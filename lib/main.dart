import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/instagram+logo.png',
                    height: 100.0,
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _usernameController,
                            decoration: InputDecoration(
                              labelText: 'Username or Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                            obscureText: true,
                          ),
                        ),
                        SizedBox(height: 32.0),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add your login logic here
                              String username = _usernameController.text;
                              String password = _passwordController.text;
                              // Validate and process the login credentials
                              // (Note: In a real app, you'd want to perform secure authentication)
                              print('Username: $username, Password: $password');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue, // Set button color
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Meta'),
                Text('About'),
                Text('Blog'),
                Text('Jobs'),
                Text('Help'),
                Text('API'),
                Text('Privacy'),
                Text('Terms'),
                Text('Locations'),
                Text('Instagram Lite'),
                Text('Threads'),
                Text('Contact Uploading & Non-Users'),
                Text('Meta Verified'),
                Text('English'),
              ],
            ),
            SizedBox(height: 8.0),
            Text('© 2024 Instagram from Meta'),
          ],
        ),
      ),
    );
  }
}
