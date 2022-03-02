import 'package:flutter/material.dart';

class SignWithFacebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SignUp with facebook'),
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
                decoration: BoxDecoration(color: Color.fromARGB(255, 17, 112, 236), border: Border(bottom: BorderSide(color: Colors.black))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Facebook',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Create Account',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
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
                    FormField(Icon(Icons.account_circle), 'Agam Surya Armanda'),
                    FormField(Icon(Icons.account_circle), 'Agam Surya Armanda'),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text('ini adalah uts saya, LAPTOP SAYA RUSAK PAS MENGERJAKAN TADI PAK, SAYA PINJEM LAPTOP TEMEN'),
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
