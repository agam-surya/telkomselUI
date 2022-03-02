import 'package:flutter/material.dart';

class SignWithGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SignUp with GoogSle'),
        ),
        body: Container(
          child: Container(
            height: 400,
            width: 400,
            // color: Colors.white,
            margin: EdgeInsets.fromLTRB(60, 150, 60, 150),
            decoration: BoxDecoration(border: Border.all(color: Colors.black), borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              Container(
                height: 50,
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black))),
                child: Row(
                  children: [
                    Image(width: 25, height: 25, image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/1024px-Google_%22G%22_Logo.svg.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Sign in With Google',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                        child: Column(
                      children: [
                        Text(
                          'Choose an Account',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'To Continue to VolintApps',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    FormField(Icon(Icons.account_circle), 'Aan Jupriyanto'),
                    FormField(Icon(Icons.account_circle), 'Aan Jupriyanto'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text('Creates a text widget.The [overflow] propertys behavior is affected hahahahah'),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }

  SizedBox FormField(Icon icon, String text) {
    return SizedBox(
      height: 60,
      child: TextField(
        decoration: InputDecoration(prefixIcon: icon, hintText: text, hintStyle: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
