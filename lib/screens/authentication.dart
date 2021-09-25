import 'package:construction_app/net/flutterfire.dart';
import 'package:construction_app/screens/splash_screen.dart';
import 'package:construction_app/screens/verify_screen.dart';
import 'package:flutter/material.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  _AuthenticationState createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(0xffFF9900),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'Something@gmail.com',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'Email',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 35,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              child: TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '**********',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 35,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () async {
                  //if the register function returns true then navigate to the home screen otherwise don't.
                  bool shouldNavigate = await register(
                      _emailController.text, _passwordController.text);
                  if (shouldNavigate) {
                    //Navigate
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => VerifyScreen(),
                      ),
                    );
                  }
                },
                child: Text('Register'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 35,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: MaterialButton(
                onPressed: () async {
                  bool shouldNavigate = await signIn(
                      _emailController.text, _passwordController.text);
                  if (shouldNavigate) {
                    //Navigate to the next screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => SplashScreen(),
                      ),
                    );
                  }
                },
                child: Text('Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
