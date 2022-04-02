import 'package:flutter/material.dart';

class SamplePrettyScreen extends StatelessWidget {
  const SamplePrettyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: <Widget>[
          Profile(size: size),
          NavTtitle(),
          MusicVideo(size: size, title: "Hot Sauce"),
          SizedBox(height: 10),
          MusicVideo(size: size, title: "Hello Future"),
          SizedBox(height: 10),
          MusicVideo(size: size, title: "Chewing Gum"),
          SizedBox(height: 10),
          MusicVideo(size: size, title: "Glitch Mode"),

        ],
      ),
    );
  }
}

class MusicVideo extends StatelessWidget {
  const MusicVideo({
    Key? key,
    required this.size, required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 20,
            ),
          ]
        ),
        height: 50,
        width: size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text(title),
                ),
              ),
              Icon(Icons.arrow_forward_rounded),
            ],
          ),
        ),
      ),
    );
  }
}

class NavTtitle extends StatelessWidget {
  const NavTtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Container(
        alignment: Alignment.topLeft,
        child: Text(
          "Music Videos",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          width: size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
            ),
            image: DecorationImage(
              image: AssetImage("assets/nct-dream.jpg"),
              fit: BoxFit.cover,
            )
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            alignment: Alignment.center,
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.9),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
            ),
            child: Text(
              "NCT DREAM",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
