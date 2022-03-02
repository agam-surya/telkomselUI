import 'package:flutter/material.dart';
import 'sign_with_email.dart';
import 'sign_with_google.dart';
import 'sign_with_facebook.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign'),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 90, 40, 60),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Positioned(
                    child: CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage('https://png.pngtree.com/png-clipart/20200310/ourmid/pngtree-indonesia-flag-transparent-watercolor-painted-brush-png-image_2156710.jpg'),
                    ),
                  ),
                  Text(
                    "Welcome to voluntApp",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            signUp_button(context, 'https://e7.pngegg.com/pngimages/483/841/png-clipart-email-email.png', Colors.white, 'Sign with Email', SignWithEmail()),
            SizedBox(
              height: 30,
            ),
            signUp_button(context, 'https://cdn.iconscout.com/icon/free/png-256/facebook-logo-2019-1597680-1350125.png', Colors.blue, 'Sign With Facebook', SignWithFacebook()),
            SizedBox(
              height: 30,
            ),
            signUp_button(context, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png', Colors.white, 'Sign with Google', SignWithGoogle()),
          ],
        ),
      ),
    );
  }

  MaterialButton signUp_button(BuildContext context, String img, Color color, String text, Widget route) {
    return MaterialButton(
        height: 60,
        color: color,
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 30.0,
              width: 30.0,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text(text)
          ],
        ),

        // by onpressed we call the function signup function
        onPressed: () {
          Route routes = MaterialPageRoute(builder: (context) => route);
          Navigator.push(context, routes);
        });
  }
}
