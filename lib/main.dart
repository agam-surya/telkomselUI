import 'package:flutter/material.dart';
import 'signUp.dart';

void main() => runApp(MaterialApp(debugShowCheckedModeBanner: false, home: FriendlychatApp()));

class FriendlychatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Column(
                    children: [
                      Text(
                        "Welcome to voluntApp",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "mohon dimaklumi karena ketika ditengah tahap pengerjaan laptop saya tiba tiba matot pak, dan sekarang masih diservice",
                        overflow: TextOverflow.visible,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox.fromSize(
                  size: Size.square(400),
                  child: Image(
                    image: NetworkImage(
                      'https://png.pngtree.com/png-clipart/20200310/ourmid/pngtree-indonesia-flag-transparent-watercolor-painted-brush-png-image_2156710.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
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
                onPressed: () {
                  Route route = MaterialPageRoute(builder: (context) => SignUp());
                  Navigator.push(context, route);
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
