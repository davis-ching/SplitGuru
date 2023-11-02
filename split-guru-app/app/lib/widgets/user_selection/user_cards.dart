import 'dart:math';

import 'package:app/model/user.dart';
import 'package:flutter/material.dart';

import 'user_card.dart';

class UserCards extends StatelessWidget {
  const UserCards({super.key});

  final double spaceWidth = 10;
  final double spaceHeight = 10;

  @override
  Widget build(BuildContext context) {
    var users = <User>[];
    users.add(User(
        username: "Davis",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=1"));
    users.add(User(
        username: "Steven",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=2"));
    users.add(User(
        username: "PonyEffect",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=3"));
    users.add(User(
        username: "SourPlus",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=4"));
    users.add(User(
        username: "Carling",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=5"));
    users.add(User(
        username: "Escarpment",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=6"));
    users.add(User(
        username: "John Eater",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=7"));
    users.add(User(
        username: "Chashews",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=8"));
    users.add(User(
        username: "Noix",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=9"));
    users.add(User(
        username: "Sel HuilesThatofnamein",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=10"));
    users.add(User(
        username: "Dextrose",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=11"));
    users.add(User(
        username: "New User",
        imgUrl: "https://source.unsplash.com/random/200x200?sig=12"));

    int userCount = users.length;
    var userPerRow = min(5, userCount + 1);

    return Center(
      child: Container(
        constraints: BoxConstraints(
            maxWidth: (UserCard.cardWidth + spaceWidth) * userPerRow),
        child: SingleChildScrollView(
            child: Wrap(
          alignment: WrapAlignment.center,
          spacing: spaceWidth,
          runSpacing: spaceHeight,
          children: [for (var user in users) UserCard(user: user)],
        )),
      ),
    );
  }
}
