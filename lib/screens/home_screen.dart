import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: ListView(
        children: [
          _makeTweetEl("user", "tweet", "assets/images/user1.png"),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
          _makeTweetEl("user", "tweet", "assets/images/user2.png"),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
          _makeTweetEl("user", "tweet", "assets/images/user1.png"),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
          _makeTweetEl("user", "tweet", "assets/images/user2.png"),
          const SizedBox(height: 15.0),
          _makeDivider(),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _makeTweetEl(String user, String tweet, String icon) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(icon, width: 30.0),
          const SizedBox(width: 5.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    user,
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "@useraccount・1m",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Container(
                width: size.width-65.0,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Iconsax.message, color: Colors.grey, size: 14.0),
                  const SizedBox(width: 50.0),
                  Icon(Iconsax.programming_arrow, color: Colors.grey, size: 14.0),
                  const SizedBox(width: 50.0),
                  Icon(Iconsax.heart, color: Colors.grey, size: 14.0),
                  const SizedBox(width: 50.0),
                  Icon(Iconsax.arrow_square_up, color: Colors.grey, size: 14.0),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _makeDivider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 0.1,
      color: Colors.grey,
    );
  }
}
