import 'package:flutter/material.dart';

class SignWithEmail extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<SignWithEmail> {
  bool checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignWith Email'),
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
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  FormField(Icon(Icons.account_circle), "UserName"),
                  SizedBox(height: 30),
                  FormField(Icon(Icons.email), 'Email'),
                  SizedBox(height: 30),
                  FormField(Icon(Icons.security), 'Password'),
                  SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(
              width: 400,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.lightBlue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.0),
                  )),
                ),
                onPressed: () {},
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              title: Text(
                'By clicking this form, you agree with our privacy Policy and  Terms and Conditions',
              ),
              value: checkBox,
              onChanged: (bool newValue) {
                setState(() {
                  checkBox = !newValue;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ],
        ),
      ),
    );
  }

  SizedBox FormField(Icon icon, String text) {
    return SizedBox(
      height: 60,
      child: TextField(
        decoration: InputDecoration(prefixIcon: icon, hintText: text),
      ),
    );
  }
}
