import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Stack(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'FlutterBoy',
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  // IMAGE
                  Image.asset('../assets/flutterboy.png'),

                  // EMAIL TEXTFILE
                  TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.cyan,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.email,
                          color: Colors.cyan,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: (value) {
                      password = value;
                    },
                    obscureText: true,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.cyan,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 2,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        icon: Icon(
                          Icons.admin_panel_settings,
                          color: Colors.cyan,
                        )),
                  ),

                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 20)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.cyan),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, letterSpacing: 2, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
