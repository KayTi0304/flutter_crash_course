import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class PrettyScreen extends StatelessWidget {
  const PrettyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                    image: AssetImage("assets/nct-dream.jpg"),
                    fit: BoxFit.cover,
                  )
                ),
                height: 300,
                width: size.width,
              ),
              Positioned(
                right: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                      ),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    padding: EdgeInsets.all(5),
                    child: Text(
                        "NCT DREAM",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Music Videos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          music_video(size: size, title: "Hot Sauce"),
          SizedBox(height: 10),
          music_video(size: size, title: "Hello Future"),
          SizedBox(height: 10),
          music_video(size: size, title: "Glitch Mode"),
          SizedBox(height: 10),
          music_video(size: size, title: "Chewing Gum"),
        ],
      ),
    );
  }
}

class music_video extends StatelessWidget {
  const music_video({
    Key? key,
    required this.size, required this.title,
  }) : super(key: key);

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                offset: Offset(0, 10),
                blurRadius: 20,
              )
            ]
          ),
          width: size.width,
          height: 50,
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
      ),
    );
  }
}
