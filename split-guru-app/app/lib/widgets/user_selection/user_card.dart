import 'package:app/model/user.dart';
import 'package:app/resources/color_plate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserCard extends StatefulWidget {
  static double cardWidth = 150;
  static double cardHeight = 210;
  final User user;

  const UserCard({
    super.key,
    required this.user,
  });

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double elementWidth = UserCard.cardWidth - 10;
    double imgRadius = elementWidth / 2;

    return SizedBox(
        width: UserCard.cardWidth,
        height: UserCard.cardHeight,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: isHover ? 2 : 10),
              InkWell(
                radius: imgRadius,
                borderRadius: BorderRadius.circular(imgRadius),
                onTap: () => {},
                onHover: (val) => {
                  setState(() {
                    isHover = val;
                  })
                },
                child: CircleAvatar(
                    radius: imgRadius + (isHover ? 8 : 0),
                    backgroundColor: ColorPlate.pink,
                    child: Padding(
                        padding: EdgeInsets.all(isHover ? 4 : 0),
                        child: ClipOval(
                            child: Image.network(widget.user.imgUrl)))),
              ),
              SizedBox(height: isHover ? 2 : 10),
              SizedBox(
                height: 30,
                width: elementWidth,
                child: Center(
                    child: Text(
                  widget.user.username,
                  style: GoogleFonts.tinos(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
              )
            ],
          ),
        ));
  }
}
