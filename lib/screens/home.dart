import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card image'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: GFCard(
          boxFit: BoxFit.cover,
          image: Image.asset('../assets/oumar.jpg'),
          title: GFListTile(
            avatar: GFAvatar(
              backgroundImage: AssetImage('../assets/flutter.jpg'),
            ),
            title: Text('Card Title'),
            subTitle: Text('Card Sub Title'),
          ),
          content: Text("Some quick example text to build on the card"),
          buttonBar: GFButtonBar(
            children: <Widget>[
              GFButton(
                onPressed: () {},
                text: 'Buy',
              ),
              GFButton(
                onPressed: () {},
                text: 'Cancel',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
